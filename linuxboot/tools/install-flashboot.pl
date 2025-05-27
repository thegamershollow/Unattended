#!/usr/bin/perl

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

# Your usual option-processing sludge.
my $o_help = '';
my $o_yes = '';
my $o_quiet = '';
Getopt::Long::Configure ("bundling", "permute");
GetOptions ('help|h' => \$o_help,
            'yes|y' => \$o_yes,
            'quiet|q' => \$o_quiet)
    or pod2usage (2);

$o_help
    and pod2usage ('-exitstatus' => 0, -verbose => 2);

# Ensure one argument.
scalar @ARGV == 1
    or pod2usage (2);

# Must run as root.
if ($<) {
    die "install-flashboot.pl can only be run as root";
}

my ($dev) = @ARGV;

#my $dir = dirname ($0);
#my $linuxbootmake = "$dir/../Makefile";

my $parted_bin ='../parted-1.6.22/parted/parted';
my $syslinux_bin ='../syslinux-5.01/linux/syslinux';


sub install_flashboot($$$) {
    my ($dev, $yes, $quiet) = @_;

    -b $dev
        or die "$dev is not a block device";

    my $part = $dev . "1";

    if (!$yes) {
        print "The next steps will permenently destroy the contents of $dev\n";
        print "Are you sure you want to continue? (y/N) ";
        chomp (my $answer = <STDIN>);
        if ($answer !~ m/^y(es)?$/i) {
            print "Not sure... Exiting!\n";
            exit;
        }
        print "\n";
    }

    print "Unmounting all partitions on $dev...\n" unless $quiet;
    for (my $i = 1; $i < 10; $i++) {
        `umount $dev$i 2>&1`;
    }
    sleep 2;

    print "Partitioning and formatting $dev...\n" unless $quiet;
    `dd if=/dev/zero of=$dev bs=512 count=2 2>&1`;
    sleep 2;

    `$parted_bin -s $dev mklabel msdos`;
    `$parted_bin -s -- $dev mkpartfs primary fat16 0 -0 2>&1`;
    `$parted_bin $dev set 1 boot on`;
    sleep 2;

    system "./install-mbr.pl $syslinux_bin $dev" . ($quiet ? ' >/dev/null' : '');
    
    print "Installing syslinux to $part...\n" unless $quiet;
    `$syslinux_bin --install $part`;

    print "Mounting the newly created $part...\n" unless $quiet;
    mkdir "/tmp/flashboot";
    `mount $part /tmp/flashboot`;

    print "Copying flashboot files to $part...\n" unless $quiet;
    `cp ../flashboot/* /tmp/flashboot`;

    print "Unmounting $part...\n" unless $quiet;
    `umount $part`;
    sleep 2;
    rmdir "/tmp/flashboot";
}

my $dir = `echo -n \$(dirname \$(readlink -f $0))`;
chdir ($dir)
    or die "Cannot chdir to $dir";

install_flashboot ($dev, $o_yes, $o_quiet);

exit 0;

__END__

=head1 NAME

install-flashboot.pl - Install linuxboot to a USB flash drive

=head1 SYNOPSIS

install-flashboot.pl [options] <block device>

Options:

  -h, --help            Display help and exit
  -y, --yes             Answer 'yes' to all questions
  -q, --quiet           Run silently (do not print status messages)

=head1 EXAMPLE

install-flashboot.pl -yq /dev/sdb
