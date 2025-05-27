: # use perl
eval 'exec perl -S "$0" ${1+"$@"}'
    if 0;

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use File::Spec::Functions;
use File::Basename;
use File::Path;

sub move ($);
sub move_list ($);
sub nail ($);
sub nail_list ($);

# Actions to perform in order to process include/exclude options.  We
# do it this convoluted way because we need to parse the entire
# command line first.
my @opt_actions;

# Default is to move everything.
push @opt_actions, sub { return &move ('.'); };

sub process_opt ($$) {
    my ($opt, $val) = @_;
    my %actions = ( 'move' => \&move,
                    'move-list' => \&move_list,
                    'nail' => \&nail,
                    'nail-list' => \&nail_list );
    (exists $actions{$opt})
        or die "internal error (option $opt, value $val)";

    push @opt_actions, sub { return &{$actions{$opt}}($val); };
    return ();
}

my $opt_help = 0;

GetOptions ('help' => \$opt_help,
            'move=s' => \&process_opt,
            'move-list=s' => \&process_opt,
            'nail=s' => \&process_opt,
            'nail-list=s' => \&process_opt)
    or pod2usage (2);

$opt_help
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure exactly three arguments after options.
scalar @ARGV == 3
    or pod2usage (2);

my ($source, $dest_outside, $dest_inside) = @ARGV;

my %to_move;

sub _move_or_nail_one ($$) {
    my ($file, $move) = @_;
    if ($move) {
        $to_move{$file} = 1;
    }
    else {
        delete $to_move{$file};
    }
}

sub move_or_nail ($$);  # recursive
sub move_or_nail ($$) {
    my ($file, $move) = @_;

    my $cfile = catfile ($source, $file);

    if (-l $cfile) {
        # Ignore symlinks
    }
    elsif (! -d _) {
        _move_or_nail_one ($file, $move);
    }
    else {
        opendir DIR, $cfile
            or die "Unable to opendir $cfile: $^E";
        my @ents = readdir DIR;
        closedir DIR
            or die "Unable to closedir $cfile: $^E";
        my $did_something = 0;
        foreach my $ent (@ents) {
            $ent eq '.' || $ent eq '..'
                and next;
            move_or_nail (catdir ($file, $ent), $move);
            $did_something = 1;
        }
        # Empty directory
        $did_something
            or _move_or_nail_one ($file, $move);
    }
}

# Schedule a file for movement.
sub move ($) {
    my ($file) = @_;

    move_or_nail ($file, 1);
}

# Execute a proc on each line of a file, skipping blank lines and
# comments.
sub for_each_line ($$) {
    my ($list, $proc) = @_;
    open LIST, $list
        or die "Unable to open $list for reading: $^E";
    while (my $line = <LIST>) {
        chomp $line;
        $line =~ s/\s+\#.*//;
        $line =~ /^$/
            and next;
        &$proc ($line);
    }
    close LIST
        or die "Unable to close $list: $^E";
}

sub move_list ($) {
    my ($list) = @_;
    for_each_line ($list, \&move);
}

# Unschedule a file for movement (i.e., "nail it down").
sub nail ($) {
    my ($file) = @_;

    move_or_nail ($file, 0);
}

sub nail_list ($) {
    my ($list) = @_;
    for_each_line ($list, \&nail);
}

sub do_move ($) {
    my ($file) = @_;

    my $from = catfile ($source, $file);
    my $to = catfile ($dest_outside, $file);
    my $link = catfile ($dest_inside, $file);

    my $to_dir = dirname $to;
    -d $to_dir
        or mkpath $to_dir;

    if (-e $to) {
        if (-d _) {
            rmdir $to
                or die "Unable to rmdir $to: $^E";
        }
        else {
            unlink $to
                or die "Unable to delete $to: $^E";
        }
    }

    rename $from, $to
        or die "Unable to rename $from to $to: $^E";
    symlink $link, $from
        or die "Unable to create symlink $from -> $link: $^E";
}

# Replace a directory of links with a single link, if possible.
sub consolidate ($);  # recursive
sub consolidate ($) {
    my ($dir) = @_;

    my $c_dir = catdir ($source, $dir);
    opendir DIR, $c_dir
        or die "Unable to opendir $c_dir: $^E";
    my @ents = readdir DIR;
    closedir DIR
        or die "Unable to closedir $c_dir: $^E";

    # First, try to consolidate our subdirectories.
    foreach my $ent (@ents) {
        $ent eq '.' || $ent eq '..'
            and next;
        my $c_ent = catdir ($c_dir, $ent);
        -l $c_ent
            and next;
        -d _
            and consolidate (catdir ($dir, $ent));
    }

    # Next, collect the directory portions of the link targets.  Bail
    # out if we contain anything which is not a link.
    my %link_target_dirs;

    foreach my $ent (@ents) {
        $ent eq '.' || $ent eq '..'
            and next;
        my $c_ent = catdir ($c_dir, $ent);
        -l $c_ent
            or return;
        my $target = readlink $c_ent;
        defined $c_ent
            or die "Unable to readlink $c_ent: $^E";
        my $target_dir = dirname ($target);
        $link_target_dirs{$target_dir} = 1;
        # We could be more clever about relative links here, maybe...
    }

    scalar keys %link_target_dirs == 1
        or return;

    my $target_dir = (keys %link_target_dirs)[0];

    # OK, let's do it.
    foreach my $ent (@ents) {
        $ent eq '.' || $ent eq '..'
            and next;
        my $c_ent = catdir ($c_dir, $ent);
        unlink $c_ent
            or die "Unable to delete $c_ent: $^E";
    }

    rmdir $c_dir
        or die "Unable to rmdir $c_dir: $^E";

    symlink $target_dir, $c_dir
        or die "Unable to create symlink $c_dir -> $target_dir: $^E";
}

foreach my $action (@opt_actions) {
    &$action ();
}

undef @opt_actions;

foreach my $to_move (keys %to_move) {
#    print "$to_move\n";
    do_move ($to_move);
}

consolidate ('');

exit 0;

__END__

=head1 NAME

move-and-link.pl - Move files to new location, replacing with symlinks

=head1 SYNOPSIS

move-and-link.pl [ options ] <source> <dest-outside> <dest-inside>

Options:

  --help                        display verbose help and exit
  --move <path>
  --move-list <filename>
  --nail <path>
  --nail-list <filename>

=head1 DESCRIPTION

This is a utility script for creating a boot disk for a diskless
system, where some files live locally and others live on the network.
First you populate a tree which is the "complete" (large) boot disk,
then you trun this script to move some of its files over to the
network, replacing the originals with symbolic links.

There are three required arguments.

The <source> argument is the source directory holding files to be
moved.

The <dest-outside> argument is the destination as seen from "outside
the box"; that is, the point of view of the person running this script
right now.

The <dest-inside> is the destination as seen from "inside the box";
that is, where the symlinks themselves should point.
