use warnings;
use strict;

use Carp;
use File::Spec::Win32;
use File::Copy;
use Unattend::IniFile;
use Unattend::WinMedia;

# File::Spec is supposed to auto-detect the OS and adapt
# appropriately, but it does not recognize a $^O value of "dos".  Work
# around this bug here.
my $file_spec = 'File::Spec::Win32';

# Global variable holding unattend.txt file which we are generating.
use vars qw ($u);
$u = new Unattend::IniFile;

# We might be running on Linux now...
my $is_linux;
BEGIN {
    if ($^O eq 'dos') {
        $is_linux = 0;
    }
    elsif ($^O eq 'linux') {
        $is_linux = 1;
        require Unattend::HotKey;
        import Unattend::HotKey;
    }
    else {
        die "internal error";
    }
}

# ...so we have to exercise some care whenever we talk to the
# filesystem.  This function converts DOS-style path names to
# Unix-style when running on Unix.
sub dos_to_host ($) {
    my ($file) = @_;
    $is_linux
        or return $file;
    my ($vol, $dir, $basename) = $file_spec->splitpath ($file);
    # Convert Z: to z, C: to c, etc.
    my ($letter) = ($vol =~ /^([a-z]):$/i);
    defined $letter
        or die "internal error converting path '$file'";

    # Canonicalize drive letter to lowercase.  Perhaps we should do
    # this for the entire path, but smbfs (at least) is
    # case-insensitive so we will not bother.
    $letter = lc $letter;

    my @dirs = $file_spec->splitdir ($dir);

    my $host_dir = File::Spec::Unix->catdir ('/', $letter, @dirs);
    my $ret = File::Spec::Unix->catpath ('', $host_dir, $basename);
    return $ret;
}

# Tell Unnattend::WinMedia module how to convert dos filenames to host
# filenames.
Unattend::WinMedia->set_dos_to_host (\&dos_to_host);

# Ensure prompts are printed promptly.
$| = 1;

## "choice" implementation, generic between DOS and Unix.
sub choice ($;$) {
    my ($prompt, $choices) = @_;
    my $ret;

    defined $choices
        or $choices = 'YN';

    # Canonicalize stuff to uppercase
    $choices = uc $choices;

    if ($is_linux) {
        my %choice_map;
        foreach my $i (0 .. (length $choices) - 1) {
            my $char = substr $choices, $i, 1;
            $choice_map{$char} = $i;
        }
        print "$prompt [$choices] ";
        my $key;
        while (1) {
            $key = readkey ();
            $key = uc $key;
            (exists $choice_map{$key})
                and last;
        }
        print "$key\n";
        $ret = $choice_map{$key};
    }
    else {
        system 'choice', "/c:$choices", $prompt;
        $ret = ($? >> 8) - 1;
    }

    return $ret;
}

## Handy general-purpose subroutines for asking questions.

# Ask a simple question.
sub simple_q ($) {
    my ($question) = @_;
    print "\n", $question;
    my $answer = <STDIN>;
    chomp $answer;
    $answer eq ''
        and undef $answer;
    return $answer;
}

# Ask a yes/no question.
sub yes_no_choice ($) {
    my ($question) = @_;
    print "\n";
    return (choice ($question) == 0 ? 1 : 0);
}

# Ask for a password.
sub password_q ($) {
    my ($prompt) = @_;
    my $ret;
    
    if ($is_linux) {
        while (1) {
            print "\n", $prompt;
            # Maximum length of Windows passwords.
            # See Ticket #32 
            $ret = read_secret (50);
            print 'Re-enter to confirm: ';
            my $again = read_secret (50);
            $ret eq $again
                and last;
            print "*** Passwords do not match!  Try again.\n";
        }
    }
    else {
        # Passwords echo on DOS.  Oh, well.
        $ret = simple_q ($prompt);
    }

    return $ret;
}

# Create a menu of options.  Takes an even number of arguments which
# are display / return pairs.  For example:
#
#     menu_choice ('option X' => 'foo', 'option Y' => 'bar')
#
# ...returns 'foo' if the user selects option X and 'bar' if the user
# selects option Y.
sub menu_choice (@) {
    my @args = @_;
    my @choice_map;
    my $opts = { };

    # Current page
    my $page = 0;
    # Prompt
    my $prompt = '';

    ref $args[0] eq 'HASH'
        and $opts = shift @args;
    
    # Process magic options hash.
    foreach my $key (keys %$opts) {
        if ($key eq 'page') {
            $page = $opts->{$key};
        }
        elsif ($key eq 'prompt') {
            $prompt = $opts->{$key} . "\n";
        }
    }

    scalar @args % 2 == 0
        or croak "menu_choice called with odd number of arguments";

    # Total number of choices
    my $count = scalar @args / 2;

    # Choices to display per page
    my $per_page = 20;
    
    #Array with 20 Options
    my %hexarray = (10,'A',11,'B',12,'C',13,'D',14,'E',15,'F',16,'G',17,'H',18,'I',19,'J',20,'K');

    my $pages = int(($count + $per_page - 1) / $per_page);

    my $ret;
  LOOP:
    while (1) {
        print "\n$prompt";
        $pages > 1
            and printf "(Page %d/%d)\n", $page+1, $pages;

        my $start = $page * $per_page;

        my $i = 0;
        my $choices = '';

        # Generate current page of choices.
        while ($i < $per_page && $start + $i < $count) {
            my $elt = 2 * ($start + $i);
            #my $hexd = sprintf '%X', $i+1;
            my $hexd = $i+1;
            if ($hexd>9) {
            	$hexd = $hexarray{$hexd};
            }
            print "$hexd) $args[$elt]\n";
            $choices .= $hexd;
            # Capture value for sub below
            my $val = $args[$elt + 1];
            $choice_map[$i] = sub { no warnings 'exiting';
                                    $ret = $val;
                                    last LOOP;
                                };
            $i++;
        }

        # If we have multiple pages, generate Next/Previous option.
        if ($pages > 1) {
            print "N/P) Next/Previous page\n";
            $choices .= 'N';
            $choice_map[$i] = sub { $page = ($page + 1) % $pages };
            $i++;
            $choices .= 'P';
            $choice_map[$i] = sub { $page = ($page + $pages - 1) % $pages };
            $i++;
        }

        print "X) Exit this program\n";
        $choices .= 'X';
        $choice_map[$i] = sub { print "Exiting.\n"; exit 1; };
        $i++;

        my $sel = choice ('Select: ', $choices);

        my $func = $choice_map[$sel];
        &$func ();
    }

    # Record which page we ended up on
    $opts->{'page'} = $page;

    return $ret;
}

# Select from among zero or more strings.
sub multi_choice (@) {
    my ($prompt, @strings) = @_;

    scalar @strings > 0
        or return ();

    my %selected = map { $_ => 0 } @strings;

    my $menu_state = { 'prompt' => $prompt };

  LOOP:
    while (1) {
        my @choices =
            ('Select/deselect all' =>
             sub { my $sel = (0 < scalar grep { $selected{$_} == 0
                                                } @strings);
                   # If anything is not selected, select all; else,
                   # deselect all.
                   %selected = map { $_ => $sel } @strings;
               },
             'All done ; continue' =>
             sub {
                 no warnings 'exiting';
                 last LOOP;
             },
             map { 
                 my $str = $_;
                 (sprintf "[%s] %s", $selected{$str} ? '*' : ' ', $str)
                     => sub { $selected{$str} = !$selected{$str} }
               } @strings,
             );

        my $func = menu_choice ($menu_state, @choices);
        &$func ();
    }

    my %sort_index;
    foreach my $i (0 .. scalar @strings - 1) {
        $sort_index{$strings[$i]} = $i;
    }

    my @selections = grep { $selected{$_} } keys %selected;
    return sort { $sort_index{$a} <=> $sort_index {$b} } @selections;
}

# Canonicalize a username with respect to a domain.  If username is
# already in fully-qualified form DOMAIN\USER, do nothing.
sub canonicalize_user ($$) {
    my ($domain, $user) = @_;
    $user =~ /\\/
        or $user = "$domain\\$user";
    return $user;
}

# Read a file.  Return array of its lines.
sub read_file ($) {
    my ($file) = @_;
    local *FILE;

    open FILE, dos_to_host ($file)
        or croak "Unable to open $file for reading: $^E";

    $is_linux
        and binmode FILE, ':crlf';

    my @ret = <FILE>;

    close FILE
        or croak "Unable to close $file: $^E";

    return @ret;
}

# Write a bunch of lines to a file.
sub write_file ($@) {
    my ($file, @lines) = @_;
    local *FILE;

    my $host_file = dos_to_host ($file);

    open FILE, ">$host_file"
        or die "Unable to open $file for writing: $^E";

    $is_linux
        and binmode FILE, ':crlf';

    foreach my $line (@lines) {
        print FILE $line, "\n";
    }

    close FILE
        or die "Unable to close $file: $^E";
}

# Write a new master boot record.
sub linux_write_mbr ($) {
    my ($boot_file) = @_;

    $is_linux
        or croak 'internal error';

    use bytes;
    use Fcntl;

    my $mbr_size = 446;
    my $sect_size = 512;

    my $bootsect = '';
    my $disk = '/dev/dsk';

    # Read the current master boot sector
    sysopen DISK, $disk, O_RDONLY
        or die "Unable to open $disk for reading: $^E";
    sysread DISK, $bootsect, $sect_size
        or die "Unable to read from $disk: $^E";
    close DISK
        or die "Unable to close $disk: $^E";

    my $new_mbr = '';
    # Overwrite the MBR portion
    open BOOT, $boot_file
        or croak "Unable to open $boot_file for reading: $^E";
    read BOOT, $new_mbr, $mbr_size
        or die "Unable to read from $boot_file: $^E";
    close BOOT
        or croak "Unable to close $boot_file: $^E";

    print "Installing $boot_file as MBR...";

    substr($bootsect, 0, $mbr_size,
           substr($new_mbr, 0, $mbr_size));

    # Set the magic cookie to indicate a valid boot sector
    substr($bootsect, -2, 1, chr 0x55);
    substr($bootsect, -1, 1, chr 0xAA);

    # Write out the new master boot sector
    sysopen DISK, $disk, O_WRONLY
        or die "Unable to open $disk for writing: $^E";
    syswrite DISK, $bootsect, $sect_size
        or die "Unable to write boot sector to $disk: $^E";
    close DISK
        or die "Unable to close write to $disk: $^E";

    print "done.\n";
}

# Run a command and return the output.  We need this function because
# pipes and backticks do not work under DJGPP Perl.
# Only works under DOS.
sub run_command ($@) {
    my ($cmd, @expected_statuses) = @_;

    $is_linux
        and croak 'internal error';

    defined $expected_statuses[0]
        or @expected_statuses = (0);

    my %status_hash = map { $_ => undef } @expected_statuses;

    my $tmpfile = $u->{'_meta'}->{'tmpdrive'}.'\\tmp.txt';

    my $ret = system "$cmd > $tmpfile < nul";
    my $status = $ret >> 8;
    (exists $status_hash{$status})
        or die "$cmd > $tmpfile failed, unexpected status $status";

    my @ret = "";
 
    if (-e $tmpfile) {
      @ret = read_file ($tmpfile);
    } else {
      # probably we are booting from read-only device
      $ret = system "$cmd < nul";
    }
    # Maybe we should remove $tmpfile here, but that would slow
    # things down and hinder debugging so we don't.
#    unlink $tmpfile
#        or die "Unable to remove $tmpfile: $^E";

    return @ret;
}

# Cache return value.
my $_partition_table;
# Returns cached value unless argument is true.
sub partition_table (;$) {
    my ($re_read) = @_;

    if (!defined $_partition_table || $re_read) {
        $_partition_table = ($is_linux
                             ? "\n\n" . `parted -s /dev/dsk print`
                             : join '', run_command ('fdisk /info /tech'));
    }

    return $_partition_table;
}

## Functions for asking about particular settings.

# Large disk support
sub ask_fdisk_lba () {
    $is_linux
        and return undef;
    return menu_choice
        ('Large (>8G) disk support (normal)' => 1,
         'No large disk support (required for some broken BIOSes)' => 0);
}

# Return size of disk in 512-byte sectors.
my $_disk_sectors;
sub get_disk_sectors () {
    $is_linux
        or croak 'internal error';

    if (!defined $_disk_sectors) {
        my $hda = readlink ('/dev/dsk');
        defined $hda
            or die "readlink /dev/dsk failed: $^E";

        # Get size of disk in sectors.
        my $sys_hda = $hda;
        $sys_hda =~ s/\//!/g;
        my $size_file = "/sys/block/$sys_hda/size";
        open SIZE, $size_file
            or die "Unable to open $size_file for reading: $^E";
        my $size = <SIZE>;
        defined $size
            or die "Unable to read $size_file: $^E";
        close SIZE
            or die "Unable to close $size_file: $^E";
        chomp $size;
        $size =~ /^0x/
            and $size = hex $size;
        $_disk_sectors = $size;
    }
        
    return $_disk_sectors;
}

# Calculate end of disk in megabytes.
sub disk_end () {
    $is_linux
        or croak 'internal error';
    return get_disk_sectors () * 512 / 1024 / 1024;
}

# Find the largest interval of free space on the drive which does not
# overlap other partitions.  If argument is true, find space for
# creating a logical partition (i.e., within the extended partition).
# Return as a pair (START, END) where each is in megabytes from start
# of disk.
sub find_free_space ($) {
    my ($logical) = @_;

    $is_linux
        or croak 'internal error';

    my @partitions;
    my ($ext_start, $ext_end);

    # Read the current partition table.
    my $cmd = 'parted -s /dev/dsk print';
    open PARTED, "$cmd|"
        or die "Unable to fork: $^E";

    while (my $line = <PARTED>) {
        my ($start, $end, $parttype) =
             ($line =~ /^\d+\s+(\d+\.\d{3})\s+(\d+\.\d{3})\s+(primary|logical|extended)/);
        defined $start && defined $end && defined $parttype
            or next;

# print "DEBUG: PARTED_VAR START:$start END:$end PARTTYPE:$parttype \n" ;
        if ($logical && $parttype eq 'extended') {
            # If multiple extended partitions (weird), use the first.
            defined $ext_start && defined $ext_end
                and next;
            ($ext_start, $ext_end) = ($start, $end);
        }
        else {
            push @partitions, [ $start, $end ];
        }
    }

    close PARTED
        or die "'$cmd' failed: $^E $?";

    # Default is to search entire disk.
    my ($search_start, $search_end) = (0, disk_end());

    # For logical partition creation, search extended partition.
    if ($logical) {
        defined $ext_start && defined $ext_end
            or die 'Error: No extended partition found for logical partition';
        ($search_start, $search_end) = ($ext_start, $ext_end);
    }

    # Keep track of best result so far.
    my ($best_start, $best_end) = (0, 0);

    # Now loop through looking for free space.
  LOOP:
    foreach my $part ([0, $search_start], @partitions) {
        # Try fitting new partition in just after this one.
        my $start = $part->[1];
        my $end = $search_end;
        foreach my $other (@partitions, [ $search_end, disk_end () ]) {
            # Each other partition may or may not constrain us.
            my ($other_start, $other_end) = @$other;
            if ($start >= $other_end) {
                # Partition ends before we start, so no worries.
            }
            elsif ($end > $other_start) {
                # We must end before the other partition starts.
                $end = $other_start;
            }
        }

        # Keep track of the best we have found.
        $end - $start > $best_end - $best_start
            and ($best_start, $best_end) = ($start, $end);
    }

    return ($best_start, $best_end);
}

# Convert an fdisk command to a parted command, more or less.
sub convert_fdisk_parted ($) {
    my ($fdisk_cmd) = @_;
    my $ret;

    # "--" is required, lest "-0" on the command line look like an
    # option.
    my $parted = 'parted -s /dev/dsk --';

    my ($cmd) = ($fdisk_cmd =~ /^\s*fdisk\s+(.*?)\s*\z/i);
    defined $cmd
        or croak "Internal error: Cannot convert '$fdisk_cmd'";

    if ($cmd =~ /^\/clear\s+1\z/i) {
        $ret = "$parted mklabel msdos";
#        print "DEBUG: $ret \n";
    }
    elsif ($cmd =~ /^\/delete\s+\/pri:(\d+)\z/i) {
        $ret = "$parted rm $1";
#        print "DEBUG: $ret \n";
    }
    elsif ($cmd =~ /^\/activate:(\d+)\z/i) {
        $ret = "$parted set $1 boot on";
#        print "DEBUG: $ret \n";
    }
    elsif ($cmd =~ /^\/xo/i) {
        $ret = 'parted /dev/dsk';
#        print "DEBUG: $ret \n";
    }
    elsif ($cmd =~ /\/(pri|log|ext)(o)?:(\d+)(,100)?(?:\s+\/spec:(\d+))?/i) {
        my ($ptype, $fat16, $size, $is_percent, $type) =
            ($1, $2, $3, $4, $5);

        # Map partition type numbers to Parted names.
        my %type_map = (7 => 'ntfs',
                        130 => 'linux-swap',
                        131 => 'ext2');

        my ($start, $end) = find_free_space ($ptype eq 'log');

        defined $is_percent
            and $size = disk_end () * ($size / 100);

        # If the available space is more than we need, shrink it.
        $end - $start > $size
            and $end = $start + $size;

        # Sanity-check size of FAT16 partitions.
        defined $fat16 && $end - $start > 2047
            and die "Unable to execute fdisk $cmd\n"
            . "because it would create a FAT16 partition > 2047M\n"
            . "I suggest using /pri:XXX instead of /prio:XXX\n"
            . 'Bailing out';

        # Magic Parted syntax for end of disk.
        $end == disk_end ()
            and $end = '-0';

        my $fs = (defined $fat16 ? 'fat16' : 'fat32');
        my $parttype;
        if (defined $type) {
            (exists $type_map{$type})
                or croak "Unknown type $type in fdisk command ($fdisk_cmd)";
            $fs = $type_map{$type};
        }

    if ($ptype eq 'pri') { $parttype = 'primary' }
    elsif ($ptype eq 'log') { $parttype = 'logical' }
    elsif ($ptype eq 'ext') { $parttype = 'extended'; $fs='' }

	if (($ptype eq 'ext') or ($fs eq 'ntfs'))  {
            $ret = "$parted mkpart $parttype $fs $start $end";
	} else {
            $ret = "$parted mkpartfs $parttype $fs $start $end";
	}
#        print "DEBUG: $ret \n";
    }
    else {
        die "Unable to convert '$fdisk_cmd' to Parted commands; bailing";
    }

    return $ret;
}

# fdisk commands to run
sub ask_fdisk_cmds () {
    # Read current partition table.
    print "\nCurrent partition table:";
    my $partition_layout = partition_table ();

    # Display it.
    print $partition_layout;
    print "\n";

    print "Choose partitioning scheme.\n";
    $is_linux
        or print "NOTE: If partition table changes, machine will reboot.\n";
    # Commands to erase partition table
    my $pre_cmds = 'fdisk /clear 1';

    # Commands to replace the first partition with a 4G FAT32
    # partition and activate it
    my $post_cmds = 'fdisk /delete /pri:1;fdisk /pri:4000;fdisk /activate:1';

    # Command to run fdisk interactively
    my $interactive_cmd = 'fdisk /xo';

    my $ret = menu_choice
        ('Do nothing (continue)' => undef,
         'Run partitioning tool manually (experts only)' => $interactive_cmd,
         'Whole disk C:' =>
         'fdisk /pri:100,100',
         '12G C:, rest D:' =>
         'fdisk /pri:12288;fdisk /pri:100,100 /spec:7',
         '12G C:, 5G D:, rest E:' =>
         'fdisk /pri:12288;fdisk /pri:5120 /spec:7;fdisk /pri:100,100 /spec:7',
         '50% C:, 50% D:' =>
         'fdisk /pri:50,100;fdisk /pri:50,100 /spec:7',
         );

    defined $ret
        or return undef;

    $ret eq $interactive_cmd
        or $ret = "$pre_cmds;$ret;$post_cmds";

    return $ret;
}

# Check that a directory name complies with "old DOS" criteria; i.e.,
# that it contains only 8+3 components.  Particularly needed because
# Linux allows longer filenames, but harmless as a sanity check even
# under DOS.
sub validate_old_dos_dir ($) {
    my ($name) = @_;

    my (undef, $dirs, undef) = $file_spec->splitpath ($name, 1);
    my @dirs = $file_spec->splitdir ($dirs);

    foreach my $dir (@dirs) {
        my $failure = '';
        my ($base, $ext) = $dir =~ /^(.*?)(?:\.(.*))?\z/;

        # Check "impossible" cases first.
        $base =~ /\\/
            || defined $ext && ($ext =~ /\\/)
            and die 'Internal error';

        if (length $base > 8) {
            $failure = "'$base' has more than eight characters";
        }
        elsif (defined $ext) {
            if (length $ext > 3) {
                $failure = "Extension '$ext' has more than three characters";
            }
            elsif ($ext =~ /\./) {
                $failure = "'$dir' contains more than one dot";
            }
        }
        $failure eq ''
            or die "'$name' is invalid because:\n$failure.\nBailing out";
    }
}

# Which OS to install
sub ask_os () {
    my $os_dir = $u->{'_meta'}->{'os_dir'};

    print "Scanning for OS directories under $os_dir...\n";

    opendir OSDIR, dos_to_host ($os_dir)
        or die "Unable to opendir $os_dir: $^E";

    my @media_objs;
    while (my $ent = readdir OSDIR) {
        $ent eq '.' || $ent eq '..'
            and next;

        my $full_path = $file_spec->catdir ($os_dir, $ent);
        -d dos_to_host ($full_path)
            or next;

        my $media = Unattend::WinMedia->new ($full_path);
        defined $media
            or next;
        push @media_objs, $media;
    }

    closedir OSDIR
        or die "Unable to closedir $os_dir: $^E";

    exists $media_objs[0]
        or die "None found! bailing";

    unless (exists $media_objs[1]) {
        my $only = $media_objs[0]->path ();
        $media_objs[0]->cache ();
        print "$only is the only OS directory I found; using it.\n";
        return $only;
    }

    print "Please choose the OS to install:\n";
    my $choice =
        menu_choice (map { $_->full_name () . ' (' . $_->path () . ')'
                               => $_ }
                        sort { $a->full_name () cmp $b->full_name () }
                        @media_objs);
    $choice->cache ();
    validate_old_dos_dir ($choice->path ());
    return $choice->path ();
}

# retrieve the Windows Collection drivers Automated scan engine
sub windrivers_scan() {

   if (! $is_linux) {
       print "Automated choose in Windows driver(s) collection unavailable.\n";
       return undef;
   }

   ## Path to Windows driver(s) collection
   my $drvroot = $u->{'_temp'}->{'scan_windrivers_path'};
   opendir DRVROOT, $drvroot
     or return undef;
   closedir DRVROOT;

   print "...Search for Windows drivers in collection below $drvroot ...\n";
   print "(this may take a while if you do not use cache file)\n";
   my $eng = dos_to_host (
                 $file_spec->catdir (
                     $u->{'_meta'}->{'dos_zdrv'},
                     'dosbin', 
                     'search-win-drivers.pl'));
   my $cmd_scan = "$eng $u->{'_temp'}->{'scan_windrivers_options'} -d $drvroot" ;
   my $raw = `$cmd_scan`;

   # just compute how many driver(s) found
   my $out = $raw;
   $out =~ s/#.*\n//mg ;  # strip comment outputs, we want only driver paths
   my @dlist = ();
   if ( $out ne '' ) {
       @dlist = split /\n/, $out;
   }
   print "...found ", scalar @dlist, " Windows drivers to use.\n";

   return $raw;
}


sub windrivers_scan_dest_map() {

   # generate a string of '<drv>:<dest>@<drv>:<dest> ...'
   # (use '@' as seperator since parse_ini_file() of unatt-functions.sh treats ';' as comments)
   my $raw = $u->{'_temp'}->{'scan_windrivers'};
   defined $raw
       or return '';
   ( my $out = $raw )  =~ s/#.*\n//mg ;  # strip comment outputs
   if ( $out eq '' ) {
       return '';
   }
   my %dlist = map { $_ => "" } split /\n/, $out;

   # Generate destination directory names for these path of drivers.
   # To ensure that dest. dir names are unique, use the hash 'index' 
   # as names.
   # Files copies of these folders are done by windows installation files 
   # on hard-methods (dosemu | nt5x-install)

   my $index = 0;
   my $ret = "";
   foreach my $drv (keys %dlist) {
       $index += 1;
       $dlist{$drv} = $file_spec->catdir(
                          $u->{'_temp'}->{'scan_windrivers_dest'},
                          $index);
       $ret .= "@" . $drv . ":" . $dlist{$drv} ;
   }
   $ret =~ s/^@//;
   return $ret;
}


# Which directories to include in OemPnPDriversPath
sub ask_oem_pnp_drivers_path () {
    my $media_obj = Unattend::WinMedia->new ($u->{'_meta'}->{'OS_media'});

    my @pnp_driver_dirs = $media_obj->oem_pnp_dirs (1);

    # No driver directories means no drivers path
    scalar @pnp_driver_dirs > 0
        or return undef;

    print "...found some driver directories.\n";

    my @selected_dirs = multi_choice ('Please choose driver(s) to add.',
                                      sort @pnp_driver_dirs);

    my $ret = join ';', @selected_dirs;

    # Setup does not like empty OemPnPDriversPath
    $ret =~ /\S/
        or undef $ret;

    return $ret;
}

# Create the "postinst.bat" script and return its full path.  Do
# nothing and return undef if there are no post-installation commands
# to run.
sub create_postinst_bat () {
    # Create postinst.bat script.
    # Compute contents of postinst.bat script.
    my @postinst_lines;

    # Local admins
    my $admins = $u->{'_meta'}->{'local_admins'};
    my @admins = (defined $admins ? split /;/, $admins : ());
    @admins = map { canonicalize_user
                        ($u->{'Identification'}->{'JoinDomain'},
                         $_) } @admins;
    # NTP servers
    my $ntp_servers = $u->{'_meta'}->{'ntp_servers'};
    defined $ntp_servers && $ntp_servers ne ''
        and push @postinst_lines, "w32tm /config /syncfromflags:manual /manualpeerlist:\"$ntp_servers\"";

    my $netinst = $u->{'_meta'}->{'netinst'};

    my $tempcred = $file_spec->catfile ($netinst, 'tempcred.bat');
    push @postinst_lines,
    ('call %Z%\\scripts\\perl.bat',
     'PATH=%Z%\\bin;%PATH%',
     # Last step is always a reboot.
     'todo.pl .reboot',
     # Penultimate step is to disable automatic logon.
     'todo.pl "' . $u->{'_meta'}->{'autolog'} . '"',
     # Antepenultimate step is to delete credentials file.
     "todo.pl \"del $tempcred\"",
     # After installing, re-enable System Restore.
     'todo.pl "srconfig.pl --enable"',
     # Before that, add users to the local Administrators group.
     (map { "todo.pl \"net localgroup \\\"%%Administrators%%\\\" \\\"$_\\\" /add\"" } @admins));

    # Leveled installation scripts
    my $top = $u->{'_meta'}->{'top'};
    my $middle = $u->{'_meta'}->{'middle'};
    my $bottom = $u->{'_meta'}->{'bottom'};
    my @top_scripts = split /;/, $top;
    my @middle_scripts = split /;/, $middle;
    my @bottom_scripts = split /;/, $bottom;
    push @postinst_lines,
     # Before that, run the "cleanup" scripts.
     (map { "todo.pl $_" } reverse @bottom_scripts),
     # Before that, run the optional scripts.
     (map { "todo.pl $_" } reverse @middle_scripts),
     # First step is to perform top-level install of master and
     # optional scripts.
     (map { "todo.pl $_" } reverse @top_scripts);

    push @postinst_lines,
     # Before installing disable System Restore.
     'todo.pl "srconfig.pl --disable"',
     # First thing is to clean up installation mess.
     'todo.pl hide.pl bootini.pl fixtz.pl',
     '',
     'todo.pl --go';

    my $postinst;

    $postinst = $file_spec->catfile ($netinst, 'postinst.bat');
    print "Creating $postinst...";
    write_file ($postinst, @postinst_lines);
    print "done.\n";

    return $postinst;
}

# Cache for remembering first lines of .bat files under scripts
# directory.
my $_batfile_first_lines;

# Routine to fetch hash mapping batfiles to first lines.
sub batfile_first_lines () {
    if (!defined $_batfile_first_lines) {
        $_batfile_first_lines = { };
        my $dos_zdrv = $u->{'_meta'}->{'dos_zdrv'};
        my $script_dir = "$dos_zdrv\\scripts";
        opendir SCRIPTS, dos_to_host ($script_dir)
            or die "Unable to opendir $script_dir: $^E";
        while (my $ent = readdir SCRIPTS) {
            # Skip special files
            $ent eq '.' || $ent eq '..'
                and next;
            # Skip non-bat files
            $ent =~ /\.bat\z/i
                or next;
            # Skip non-ordinary filess
            my $full_path = $file_spec->catfile ($script_dir, $ent);
            -f dos_to_host ($full_path)
                or next;
            open FILE, dos_to_host ($full_path)
                or die "Unable to open $full_path for reading: $^E";
            $is_linux
                and binmode FILE, ':crlf';
            my $line = <FILE>;
            chomp $line;
            $_batfile_first_lines->{$ent} = $line;
            close FILE
                or die "Unable to close $full_path: $^E";
        }
        closedir SCRIPTS
            or die "Unable to closedir $script_dir: $^E";
    }

    return $_batfile_first_lines;
}

my $_dhcp_settings;

# Get the DHCP settings into an associative array (linux only).
sub dhcp_settings () {
    $is_linux
        or croak 'Internal error';
    if (!defined $_dhcp_settings) {
        $_dhcp_settings = { };
        my $dhcp = '/tmp/dhcp.out';
        if (open DHCP, $dhcp) {
            while (my $line = <DHCP>) {
                chomp $line;
                my ($var, $val) = $line =~ /^(\w+)=(.+)\z/;
                defined $var
                    or die "Could not parse line in$dhcp:\n  $line\n...";
                $_dhcp_settings->{$var} = $val;
            }
            close DHCP
                or die "Unable to close $dhcp: $^E";
        }
        else {
            warn "Unable to open $dhcp: $^E";
        }
    }

    return $_dhcp_settings;
}

$u->comments ('_meta') =
    ['This section is for informational purposes.',
     'Windows Setup does not use it.'];

$u->comments ('_meta', 'autolog') =
    ['Command to disable (or modify) autologon when installation finishes'];

# Default setting for automatic logon is to disable it, but retain
# default setting of last user who logged on.
$u->{'_meta'}->{'autolog'} = 'autolog.pl --logon=0';

$u->comments ('_meta', 'doit_cmds') = ['Contents of doit.bat script'];
$u->{'_meta'}->{'doit_cmds'} =
    sub {
        my $unattend_txt = $file_spec->catfile ($u->{'_meta'}->{'netinst'},
                                                'unattend.txt');
        my $src_tree = $u->{'_meta'}->{'OS_media'};
        my $media_obj = Unattend::WinMedia->new ($src_tree);
        my @lang_dirs = $media_obj->lang_dirs (1);
        my $lang_opts = join ' ', map { "/rx:$_" } @lang_dirs;

        # Yes, it is annoying to call this twice.  But we really must
        # call it now, and it would be even more annoying not to catch
        # the problem right away during the interactive section above.
        validate_old_dos_dir ($src_tree);
        $src_tree =~ /\\$/
            or $src_tree .= '\\';
        my $dos_zdrv = $u->{'_meta'}->{'dos_zdrv'};
        my $cmpnents = "";
        my $winnt_path = "winnt";
        my $winnt_opts = "";

        # Create the correct string for the cmpnents directory. This will
        # either be Z:\os... or /z/os... depending on the boot disk.
        if ($is_linux) {
            (my $linux_tree = $src_tree) =~ s#\\#/#g;
            $linux_tree =~ s#$dos_zdrv#/z#g;

            $cmpnents = $linux_tree . "cmpnents";
        } else {
            $cmpnents = $src_tree . "cmpnents";
        }

        # Test to see if the cmpnents directory exists - if so we have 
        # XP Tablet and need to call the installer with different arguments.
        if ( -e $cmpnents ) {
            $winnt_path = "i386\\winnt";
            $winnt_opts = "/2";
        } else {
            $src_tree .= 'i386';
        }

        return "$dos_zdrv;cd $src_tree;$winnt_path $winnt_opts $lang_opts /s:$src_tree /u:$unattend_txt";
    };

$u->comments ('_meta', 'edit_files') =
    ['Display prompt for final edits?'];

$u->{'_meta'}->{'edit_files'} = '1';

$u->comments ('_meta', 'fdisk_lba') =
    ['Use extended INT13 BIOS calls for fdisk?'];

$u->{'_meta'}->{'fdisk_lba'} = \&ask_fdisk_lba;

$u->{'_meta'}->{'fdisk_cmds'} = \&ask_fdisk_cmds;

$u->comments ('_meta', 'fdisk_confirm') =
    ['Prompt for confirmation before running fdisk_cmds?'];

$u->{'_meta'}->{'fdisk_confirm'} = 1;

$u->comments ('_meta', 'ntinstall_cmd') =
    ['System command to run in place of winnt under dosemu? (linuxboot only)'];
$u->{'_meta'}->{'ntinstall_cmd'} =
    sub {
        return (yes_no_choice ('Use nt5x-install script - (DOSEMU alternative)')
                ? 'nt5x-install'
                : undef);
    };

$u->{'_meta'}->{'format_cmd'} =
    sub {
        if (defined $u->{'_meta'}->{'ntinstall_cmd'}) {
            return undef;
        }
        return (yes_no_choice ('Format C: drive')
                ? 'format /y /z:seriously /q /u /a /v: c:'
                : undef);
    };

$u->{'_meta'}->{'ipaddr'} =
    sub {
        my $ret;
        if ($is_linux) {
            my $dhcp_settings = dhcp_settings ();
            $ret = $dhcp_settings->{'ip'};
        }
        else {
            # Parse file written by autoexec.bat
            my $ipconfig = '\\ipconfig.txt';
            if (-e $ipconfig) {
                foreach my $line (read_file ($ipconfig)) {
                    $line =~ /^\s*IP Address\s+:\s+([\d.]+)\r?$/
                        or next;
                    $ret=$1;
                    last;
                }
            }
            defined $ret
                or warn "Unable to get IP address from $ipconfig";
        }
        return $ret;
    };


$u->comments ('_meta', 'local_admins') =
    ['Accounts added to local Administrators group'];
$u->{'_meta'}->{'local_admins'} =
    sub {
        my $dom = $u->{'Identification'}->{'JoinDomain'};
        defined $dom
            or return undef;
        print "Enter users to add to local Administrators group.\n";
        return simple_q
            ("Type 0 or more usernames, separated by spaces:\n");
    };

$u->{'_meta'}->{'macaddr'} =
    sub {
        my $ret;
        if ($is_linux) {
            # Get the interface we are using.
            my $dhcp_settings = dhcp_settings ();
            my $interface = $dhcp_settings->{'interface'};
            # Run ifconfig to get MAC address for interface.
            open IFCONFIG, "ifconfig $interface|"
                or die "Could not fork: $^E";
            my @lines = <IFCONFIG>;
            close IFCONFIG
                or die "ifconfig $interface exited with status $?";
            foreach my $line (@lines) {
                chomp $line;
                if ($line =~ /HWaddr (..:..:..:..:..:..)/) {
                    $ret = $1;
                    # Remove colons, to convert to form used by "net
                    # diag /status"
                    $ret =~ s/://g;
                }
            }
            defined $ret
                or warn "Unable to get MAC address from ifconfig $interface";
        }
        else {
            # Parse file written by autoexec.bat.
            my $netdiag = '\\netdiag.txt';
            foreach my $line (read_file ($netdiag)) {
                $line =~ /^Permanent node name: ([0-9A-F]+)\r?$/
                    or next;
                $ret = $1;
                last;
            }
            defined $ret
                or warn "Unable to get MAC address from $netdiag";
        }
        return $ret;
    };

$u->{'_meta'}->{'netinst'} = 'c:\\netinst';

$u->comments ('_meta', 'ntp_servers') =
    ['NTP servers, separated by commas or spaces'];

$u->{'_meta'}->{'ntp_servers'} =
    sub {
        return simple_q
            ("Enter NTP servers, separated by spaces (default=none):");
    };

$u->comments ('_meta', 'tmpdrive') = [ 'Drive used for temporary files in DOS' ];
(defined $ENV{'TMPDRIVE'})
   or $ENV{'TMPDRIVE'}='';
$u->{'_meta'}->{'tmpdrive'} = $ENV{'TMPDRIVE'};

$u->comments ('_meta', 'dos_zdrv') = [ 'Install share drive letter in DOS' ];
(defined $ENV{'DOS_ZDRV'})
   or $ENV{'DOS_ZDRV'}='Z:';
$u->{'_meta'}->{'dos_zdrv'} = $ENV{'DOS_ZDRV'};

my $dos_zdrv = $u->{'_meta'}->{'dos_zdrv'};

$u->comments ('_meta', 'OS_dir') = ['Directory holding OS media directories'];
$u->{'_meta'}->{'OS_dir'} =
    sub { return $file_spec->catdir ("$dos_zdrv", 'os'); };

$u->{'_meta'}->{'OS_media'} = \&ask_os;

$u->{'_temp'}->{'postinst'} = \&create_postinst_bat;

$u->{'_meta'}->{'replace_mbr'} =
    sub {
        return yes_no_choice
            ('Replace Master Boot Record (if unsure, say yes)');
    };

$u->comments ('_meta', 'top') = ['First script run by postinst.bat'];
$u->sort_index ('_meta', 'top') = 1;
$u->comments ('_meta', 'middle') = ['Optional script(s) run by postinst.bat'];
$u->sort_index ('_meta', 'middle') = 2;
$u->comments ('_meta', 'bottom') = ['Last script(s) run by postinst.bat'];
$u->sort_index ('_meta', 'bottom') = 3;

# Go through the first line (head) of each script and slurp out the
# line matching the desired token.
sub _script_sel_helper ($$) {
    my ($token, $heads) = @_;
    my %ret;
    
    foreach my $script (sort keys %$heads) {
        $heads->{$script} =~ /^::\s*$token(?!\w)\W*(.*)\z/
            or next;
        my $desc = $1;
        my $key = "$script ($desc)";
        (exists $ret{$key})
            and die "Internal error (duplicate key in _top_helper)";
        $ret{"$script ($desc)"} = $script;
    }

    return %ret;
}

$u->{'_meta'}->{'top'} =
    sub {
        my $bat_heads = batfile_first_lines ();
        my %master_choices = _script_sel_helper ('MASTER', $bat_heads);
        my $master = '';

        if (scalar keys %master_choices > 0) {
            my @choices = (map { ($_ => $master_choices{$_}) }
                           sort keys %master_choices);
            print "Choose master post-installation script to run.\n";
            $master = menu_choice (@choices, 'none' => '');
        }

        return $master;
    };

$u->{'_meta'}->{'middle'} =
    sub {
        my $bat_heads = batfile_first_lines ();
        my %optional_choices = _script_sel_helper ('OPTIONAL', $bat_heads);
        my @options = multi_choice ('Choose optional scripts to run.',
                                    sort keys %optional_choices);
        return join ';', map { $optional_choices{$_} } @options;
    };

$u->{'_meta'}->{'bottom'} = '';

# Default is to fetch these from environment set up by autoexec.bat.
$u->comments ('_meta', 'z_path') = ['UNC path to install share'];
(defined $ENV{'Z_PATH'})
    or die "autoexec.bat failed to set Z_PATH; bailing";
$u->{'_meta'}->{'z_path'} = $ENV{'Z_PATH'};

$u->comments ('_meta', 'z_user') = ['Username for mapping install share'];
(defined $ENV{'Z_USER'})
    or die "autoexec.bat failed to set Z_USER; bailing";
$u->{'_meta'}->{'z_user'} =
    sub {
        my $user = $ENV{'Z_USER'};
        my $domain = $ENV{'Z_DOMAIN'};
        return (defined $domain && $domain =~ /\S/
                ? canonicalize_user ($domain, $user)
                : $user);
    };

$u->comments ('_meta', 'z_password') = ['Password for mapping install share'];
(defined $ENV{'Z_PASS'})
    or die "autoexec.bat failed to set Z_PASS; bailing";
$u->{'_meta'}->{'z_password'} = $ENV{'Z_PASS'};

$u->comments ('_meta', 'z_drive') = [ 'Install share drive letter' ];
$u->{'_meta'}->{'z_drive'} = 'Z:';

$u->{'UserData'}->{'FullName'} =
    sub {
        return simple_q ("Enter the user's full name for this machine:\n");
    };

$u->{'UserData'}->{'OrgName'} =
    sub {
        return simple_q ("Enter the organization name for this machine:\n");
    };

$u->{'UserData'}->{'ComputerName'} =
    sub {
        my $name = simple_q ("Enter computer name (* == autogenerate):\n");
        return $name;
    };

$u->comments ('GuiRunOnce', 'Command0') =
    ["Command which runs after OS installation finishes"];

$u->{'GuiRunOnce'}->{'Command0'} =
    sub {
        return $u->{'_temp'}->{'guirunonce'};
    };

$u->{'_temp'}->{'guirunonce'} =
    sub {
        my $ret;
        my $postinst = $u->{'_temp'}->{'postinst'};

        if (!defined $postinst) {
            undef $ret;
        }
        elsif (!defined $u->{'_meta'}->{'top'}) {
            # No toplevel script means no invocation of todo.pl,
            # so no need to use mapznrun.bat.
            $ret = $postinst;
        }
        else {
            my $netinst = $u->{'_meta'}->{'netinst'};
            # Basic framework for mapping Z: drive
            my $dos_zdrv = $u->{'_meta'}->{'dos_zdrv'};
            my $mapznrun = $file_spec->catfile ($netinst, 'mapznrun.bat');
            print "Copying $mapznrun...";
            copy (dos_to_host ("$dos_zdrv\\bin\\mapznrun.bat"),
                  dos_to_host ($mapznrun))
                or die "Unable to copy $dos_zdrv\\bin\\mapznrun.bat to $mapznrun";
            print "done.\n";

            my $mapcd = $file_spec->catfile ($netinst, 'mapcd.js');
            print "Copying $mapcd...";
            copy (dos_to_host ("$dos_zdrv\\bin\\mapcd.js"),
                  dos_to_host ($mapcd))
                or die "Unable to copy $dos_zdrv\\bin\\mapcd.js to $mapcd";
            print "done.\n";

            # "Permanent" credentials (drive letter, UNC path)
            my $z = $u->{'_meta'}->{'z_drive'};
            my $z_path = $u->{'_meta'}->{'z_path'};
            my $permcred = $file_spec->catfile ($netinst, 'permcred.bat');
            print "Creating $permcred...";
            write_file ($permcred,
                        "\@SET Z=$z",
                        "\@SET Z_PATH=$z_path");
            print "done.\n";

            # "Temporary" credentials (username, password)
            my $z_user = $u->{'_meta'}->{'z_user'};
            my $z_pass = $u->{'_meta'}->{'z_password'};
            my $tempcred = $file_spec->catfile ($netinst, 'tempcred.bat');
            print "Creating $tempcred...";
            write_file ($tempcred,
                        "\@SET Z_USER=\"$z_user\"",
                        "\@SET Z_PASS=\"$z_pass\"");
            print "done.\n";

            $ret = "$mapznrun $postinst";
        }

        return $ret;
    };

$u->{'GuiUnattended'}->{'AdminPassword'} =
    sub {
        return password_q ('Enter password for local administrator account: ');
    };

$u->{'GuiUnattended'}->{'AutoLogon'} =
    sub {
        my $runonce_cmd = $u->{'GuiRunOnce'}->{'Command0'};
        return (defined $runonce_cmd
                ? 'Yes'
                : undef);
    };

$u->{'Identification'}->{'JoinDomain'} =
    sub {
        # Mutual recursion.  IniFile object takes care of it.
        my $join_workgroup = $u->{'Identification'}->{'JoinWorkgroup'};
        # If we are joining a workgroup, then we are not joining a
        # domain.
        defined $join_workgroup
            and return undef;
        return simple_q
            ('Join workstation to what domain (default = none)? ');
    };

$u->{'Identification'}->{'JoinWorkgroup'} =
    sub {
        # Mutual recursion.  IniFile object takes care of it.
        my $join_domain = $u->{'Identification'}->{'JoinDomain'};
        # If we are joining a domain, then we are not joining a
        # workgroup.
        defined $join_domain
            and return undef;
        return simple_q
            ('Join workstation to what workgroup (default = none)? ');
    };

# Ask about domain before workgroup, ceteris paribus.
$u->sort_index ('Identification', 'JoinWorkgroup')
    = $u->sort_index ('Identification', 'JoinDomain') + 1;

$u->{'Identification'}->{'DomainAdmin'} =
    sub {
        my $dom = $u->{'Identification'}->{'JoinDomain'};
        defined $dom or return undef;
        my $user = simple_q ("DomainAdmin account for joining $dom domain? ");
        return canonicalize_user ($dom, $user);
    };

$u->{'Identification'}->{'DomainAdminPassword'} =
    sub {
        my $admin = $u->{'Identification'}->{'DomainAdmin'};
        defined $admin
            or return undef;
        return password_q
            ("Enter DomainAdminPassword for $admin account: ");
    };

$u->comments ('_temp', 'scan_windrivers_path') = 
    ['Directory holding Windows drivers collection'];
$u->{'_temp'}->{'scan_windrivers_path'} = 
    sub { return $file_spec->catdir ( $u->{'_meta'}->{'dos_zdrv'}, "site", "win_drivers"); };

$u->comments ('_temp', 'scan_windrivers_options') = 
    ['Option(s) to scan engine of Windows driver(s) (search-win-drivers.pl)'];
$u->{'_temp'}->{'scan_windrivers_options'} = '' ; 

$u->comments ('_temp', 'scan_windrivers_dest') = 
    ['Directory holding the found Windows drivers on hard drvive (relative to \)'];
$u->{'_temp'}->{'scan_windrivers_dest'} = 'drvscan' ;

# use '_meta' section since used by DOSEMU|nt5x-install script
$u->comments ('_meta', 'scan_windrivers_dest_map') = 
    ['Maps between found Windows drivers paths',
     'and their destination path on hard-drive (below $oem$\$1)'];
$u->{'_meta'}->{'scan_windrivers_dest_map'} = \&windrivers_scan_dest_map;

$u->comments ('_temp', 'scan_windrivers') = 
    ['Retrieve automated scan output of Windows drivers (lspci based)'];
$u->{'_temp'}->{'scan_windrivers'} = \&windrivers_scan;

$u->{'Unattended'}->{'OemPnPDriversPath'} = \&ask_oem_pnp_drivers_path;

my $product_key_q =
    "Enter your product key now.\n"
    . "This is the 25-character code from your software license\n"
    . "(like 12345-6789A-BCDEF-GHIJK-LMNOP)\n\n"
    . "Enter key: ";

$u->{'UserData'}->{'ProductID'} =
    sub {
        my $media_obj =
            Unattend::WinMedia->new ($u->{'_meta'}->{'OS_media'});
        my $name = $media_obj->name ();

        # Only ask for ProductID for win2k or winnt.
        $name =~ /Windows 2000/ || $name =~ /Windows NT/
            or return undef;

            print "OS-ProductID:", $name ,"\n";
        return simple_q ($product_key_q);
    };

$u->{'UserData'}->{'ProductKey'} =
    sub {
        my $media_obj =
            Unattend::WinMedia->new ($u->{'_meta'}->{'OS_media'});
        my $name = $media_obj->name ();

        # ProductKey is never used by win2k nor winnt.
        $name =~ /Windows 2000/ || $name =~ /Windows NT/
            and return undef;

            print "OS-ProductKey:", $name ,"\n";
        # Only ask for ProductKey if we lack a ProductID.
        my $product_id = $u->{'UserData'}->{'ProductID'};
        defined $product_id
            and return undef;
        return simple_q ($product_key_q);
    };

$u->comments ('MassStorageDrivers') =
    ['See <http://support.microsoft.com/?kbid=288344>'];

$u->{'MassStorageDrivers'} =
    sub {
        my $media_obj = Unattend::WinMedia->new ($u->{'_meta'}->{'OS_media'});

        my @oem_drivers =
            multi_choice ('Select OEM drivers for [MassStorageDrivers]:',
                          sort $media_obj->textmode_oem_drivers (1));

        scalar @oem_drivers > 0
            or return undef;

        # OK, adding some OEM drivers.  Add the retail ones while we
        # are at it.
        my @retail_drivers =
            multi_choice ('Select RETAIL drivers for [MassStorageDrivers]:',
                          sort $media_obj->textmode_retail_drivers (1));

        my %ret = ((map { $_ => 'RETAIL' } @retail_drivers),
                   (map { $_=> 'OEM' } @oem_drivers));
        return \%ret;
    };

$u->comments ('OEMBootFiles') = 'See comments for [MassStorageDrivers]';
$u->{'OEMBootFiles'} =
    sub {
        (defined $u->{'MassStorageDrivers'})
            or return undef;
        my $media_obj = Unattend::WinMedia->new ($u->{'_meta'}->{'OS_media'});
        my %ret = (map { $_ => $u->no_value () }
                   $media_obj->textmode_files ());
        return \%ret;
    };

# Make [_meta] section sort last in the file.
$u->sort_index ('_meta') = 999999;

## Now the meat of the script.

# Compare Z:\version.txt file to VERSION environment variable.
my $version_file = "$dos_zdrv\\version.txt";
if (! -f dos_to_host ($version_file)) {
    print "Warning: $version_file not found (old install share?)\n";
}
elsif (!defined $ENV{'VERSION'}) {
    print "Warning: VERSION variable is empty (old boot disk?)\n"
}
else {
    my ($share_ver) = read_file ($version_file);
    chomp $share_ver;
    my $boot_ver = $ENV{'VERSION'};
    $share_ver eq $boot_ver
        or print "Warning: Boot disk version ($boot_ver) does not match install share version ($share_ver)\n";
}

# Read master unattend.txt.
$u->read (dos_to_host ("$dos_zdrv\\lib\\unattend.txt"));

# Read site-specific unattend.txt, if it exists.
if (1) {
    my $site_unattend_txt = dos_to_host ("$dos_zdrv\\site\\unattend.txt");
    -e ($site_unattend_txt)
        and $u->read ($site_unattend_txt);
}

# Output some interesting info.
my $ipaddr = $u->{'_meta'}->{'ipaddr'};
defined $ipaddr
    and print "IP address:  $ipaddr\n";
my $macaddr = $u->{'_meta'}->{'macaddr'};
defined $macaddr
    and print "MAC address: $macaddr\n";

# Read site-specific Perl configuration file.
if (1) {
    my $site_conf = dos_to_host ("$dos_zdrv\\site\\config.pl");

    if (-e $site_conf) {
        my $result = do $site_conf;
        $@
            and die "do $site_conf failed: $@";
        defined $result
            or die "Could not do $site_conf: $^E";
    }
}

# On Linux, we may need to correct the kernel's notion of the disk
# geometry.  Otherwise the disk partitioning tool will have the wrong
# idea about how to create the partition, and dosemu will present the
# wrong geometry to the Windows installer (resulting in a partition
# which does not boot).
if ($is_linux) {
    my $bios_head = $ENV{'LEGACY_BIOS_HEAD'};
    my $bios_sect = $ENV{'LEGACY_BIOS_SECT'};

    if (defined $bios_head && defined $bios_sect) {
        my $hda = readlink ('/dev/dsk');
        defined $hda
            or die "readlink /dev/dsk failed: $^E";

        my $sectors = get_disk_sectors ();

        my $cylinders = int ($sectors / $bios_head / $bios_sect);

        $sectors == $cylinders * $bios_head * $bios_sect
            or print "Odd.  C/H/S does not multiply out to $sectors.\n";

        $cylinders > 65535
            and $cylinders = 65535;

        my $sys_hda = $hda;
        $sys_hda =~ s/\//!/g;
        my $settings_file = "/proc/ide/$sys_hda/settings";

        if (-e $settings_file) {
            print "\nSetting C/H/S for $hda to $cylinders/$bios_head/$bios_sect...";
            open SETTINGS, ">$settings_file"
                or die "Unable to open $settings_file for writing: $^E";
            printf SETTINGS "bios_cyl:%d bios_head:%d bios_sect:%d\n",
            $cylinders, $bios_head, $bios_sect;
            close SETTINGS
                or die "Unable to close $settings_file: $^E";
            print "done.\n";
            # Disk geometry is now fixed, no need to hack disk geo into the partition:
            $u->{'_meta'}->{'fix_disk_geo_heads'} = "";
            $u->{'_meta'}->{'fix_disk_geo_sectors'} = "";
        }
        else {
            # Non-IDE disk.  Should probably sanity-check kernel
            # geometry against legacy BIOS geometry here.  FIXME.
            # Send partition geometry via unatted.txt so we can
            # hack it into partition after the dosemu run.
            # FIXME Should we ask the user before we do this?
            if (not defined $u->{'_meta'}->{'fix_disk_geo_heads'}) {
                $u->{'_meta'}->{'fix_disk_geo_heads'} = $bios_head;
            }
            if (not defined $u->{'_meta'}->{'fix_disk_geo_sectors'}) {
                $u->{'_meta'}->{'fix_disk_geo_sectors'} = $bios_sect;
            }
        }
    }
}

# Set environment variable controlling fdisk's use of INT13 extensions.
$is_linux || ($u->{'_meta'}->{'fdisk_lba'})
    or $ENV{'FFD_VERSION'}=6;

# Read current partition table.
my $partition_table = partition_table ();

my $fdisk_cmds;
# Partition the disk.
while (1) {
    $fdisk_cmds = $u->{'_meta'}->{'fdisk_cmds'};
    defined $fdisk_cmds
        or $fdisk_cmds = '';

    $fdisk_cmds =~ /\S/
        or last;

    ($u->{'_meta'}->{'fdisk_confirm'})
        or last;

    print "\n";
    print "ABOUT TO PARTITION THE FIRST HARD DRIVE!\n";
    print "WARNING: This operation erases the disk!";
    yes_no_choice ("Are you sure")
        and last;

    $u->{'_meta'}->{'fdisk_cmds'} = \&ask_fdisk_cmds;
}

# Run the fdisk commands.
my $is_fdisk;

foreach my $cmd (split /;/, $fdisk_cmds) {
    $is_fdisk = 1;
    system ($is_linux
            ? convert_fdisk_parted ($cmd)
            : $cmd);
}

if ($is_linux) {
    # On Linux, we (re-)create the device nodes after modifying the
    # partition table.
    my $hda = readlink ('/dev/dsk');
    defined $hda
        or die "readlink /dev/dsk failed: $^E";
    0 == system 'make-blkdev-nodes', $hda
        or die "make-blkdev-nodes $hda failed: $?";
}
else {
    # If partition table has changed, reboot.
    print "\nRe-checking partition table...";
    if ($partition_table ne partition_table (1) ||
        ($partition_table eq '' && defined $is_fdisk)) {
        print "changed.  Rebooting...\n";
        sleep 2;
        system ('fdisk /reboot');
        die "Internal error";
    }
    else {
        print "no change.  Continuing.\n";
    }
}

# Run formatting command, if any.
my $format_cmd = $u->{'_meta'}->{'format_cmd'};
# On DOS, format now.
# On Linux, take care of it later.
my @doit_cmds;
if (defined $format_cmd) {
    if ($is_linux) {
        print "(Deferring format command to run under DOSEMU)\n";
        push @doit_cmds, $format_cmd;
        push @doit_cmds, 'if errorlevel 1 exit 1';
    }
    else {
        system $format_cmd;
    }
}

# Overwrite MBR, if desired.
if ($u->{'_meta'}->{'replace_mbr'}) {
    if ($is_linux) {
        linux_write_mbr ('/usr/lib/freedos-mbr.bin');
#        linux_write_mbr ('/usr/lib/booteasy.bin');
    }
    else {
        system ('fdisk /mbr');
    }
}

# Create C:\netinst and subdirectories.
my $netinst = $u->{'_meta'}->{'netinst'};
foreach my $dir ($netinst, "$netinst\\logs") {
    -d dos_to_host ($dir)
        and next;
    print "Creating $dir...";
    mkdir dos_to_host ($dir)
        or die "FAILED: $^E";
    print "done.\n";
}

# At this point, force everything else.
$u->generate ();

# Batch script to run after this script exits.
my $doit = "$netinst\\doit.bat";
if($is_linux) {
	# xcopy will copy a file that will prevent a cycling of DOSemu
	# this is tested as the first command
	# The filename itself
	my $noCycling = "$netinst\\" . int(rand(10000000)) . ".tmp";
    # First of all, if the checkpoint file exist, leave DOSEmu
    unshift @doit_cmds, "IF EXIST $noCycling EXITEMU";
    # DOSEMU: copy driver files found by the scan driver system.
    # - files will be present on the C: drive (newly formated) 
    #   BEFORE winnt.exe is launched ... but it's not a problem (checked)
    #   We also could have installed these driver files after the use
    #   of dosemu in /etc/master script.
    # - limitation of DOS 8.3 files and length of path makes painfull
    #   to perform the driver copy by DOS/XCOPY.
    #   workaround: create symlinks in Y: drive (/c/) and let XCOPY 
    #   works: symlinks are automagically "translated" into real 
    #   folders and files onto the FAT filesystem of the hard drive.
    # - no troubles with $oem$\$1\drivers and scan_windrivers_dest_map 
    #   also set to 'drivers': winnt.exe just merge the content of 
    #   these folders (into c:\drivers).
    if ( (! defined $u->{'_meta'}->{'ntinstall_cmd'})
         and ( $u->{'_temp'}->{'scan_windrivers'} ne '' )) {

       mkdir "/c/" . $u->{'_temp'}->{'scan_windrivers_dest'}
           or die "FAILED: $^E";

       for my $e (split /@/, $u->{'_meta'}->{'scan_windrivers_dest_map'}) {
         (my $i, my $d) = split /:/, $e ;
         # convert $d into a full unix path 
         $d =~ s#\\#/#g ;
         $d = "/c/" . $d;
         system "ln -s $i $d" ;
       }
    }
    # copy contents from Y: (/c under linux) the new C:
    push @doit_cmds, 'xcopy /s /e /y Y:\\ C:\\';
    # have the XCOPY command copy over the checkpoint file
    write_file($noCycling, 'prevent cycling of DOSemu');
}

push @doit_cmds, split /;/, $u->{'_meta'}->{'doit_cmds'};
print "Creating $doit...";
write_file ($doit, @doit_cmds);
print "done.\n";

# Create list of files to offer for editing.
my $unattend_txt = "$netinst\\unattend.txt";

my @edit_choices;

push @edit_choices, ("Edit $unattend_txt" => $unattend_txt);

my $postinst = $u->{'_temp'}->{'postinst'};
defined $postinst
    and push (@edit_choices,
              "Edit $postinst (will run after OS install is done)"
              => $postinst);

push @edit_choices, ("Edit $doit (will run when you select Continue)"
                     => $doit);

# Scan of Windows drivers:
# - write output log : only once c:\netinst exists.
# - Update OemPnPDriversPath if needed
if (( defined $u->{'_temp'}->{'scan_windrivers'} ) &&
    ( $u->{'_temp'}->{'scan_windrivers'} ne '' )) {

   my $raw_file = $file_spec->catfile ($u->{'_meta'}->{'netinst'}, 
                                       'logs', 'drivers.log');
   print "Write Windows drivers scan raw output into $raw_file...";
   write_file( $raw_file, split /\n/, $u->{'_temp'}->{'scan_windrivers'});
   print "done.\n";

   if ( $u->{'_meta'}->{'scan_windrivers_dest_map'} eq '' ) {
       print "(Scan of Windows driver(s): no driver path(s) to add to OemPnPDriversPath )\n";
   }
   else {
       print "Update 'OemPnPDriversPath' with new windows driver path(s)...\n";
       for my $e (split /@/, $u->{'_meta'}->{'scan_windrivers_dest_map'}) {
           (my $i, my $d) = split /:/, $e ;
           $u->{'Unattended'}->{'OemPnPDriversPath'} .= ";" . $d ;
       }
   }
}

# Create unattend.txt file.
print "Creating $unattend_txt...";

# Remove [_temp] section.  Since it holds subroutines with
# side-effects, including it in unattend.txt would almost certainly be
# an error.
delete $u->{'_temp'};

my @unattend_contents = $u->generate ();

write_file ($unattend_txt, @unattend_contents);
print "done.\n";

while ($u->{'_meta'}->{'edit_files'}) {
    my $file = menu_choice (@edit_choices,
                            'Continue' => undef);
    defined $file
        or last;
    if ($is_linux) {
        system 'nano', '--nowrap', dos_to_host ($file);
    }
    else {
        system 'pico', '-w', $file;
    }
}

# Return control to master script, which will run doit.bat.
exit 0;
