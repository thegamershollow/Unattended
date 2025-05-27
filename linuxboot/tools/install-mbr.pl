#!/usr/bin/perl

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help')
    or pod2usage (2);
 
(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, -verbose => 2);

# Ensure two arguments.
scalar @ARGV == 2
    or pod2usage (2);

my ($mbr_image, $disk) = @ARGV;

# Write a new master boot record.
sub write_mbr ($$) {
    my ($boot_file, $disk) = @_;

    -f $boot_file
        or die "$boot_file is not a regular file";

    -b $disk
        or die "$disk is not a block device";

    use bytes;
    use Fcntl;

    use constant MBR_SIZE => 446;
    use constant SECT_SIZE => 512;

    my $bootsect = '';

    # Read the current boot sector
    sysopen DISK, $disk, O_RDONLY
        or die "Unable to open $disk for reading: $^E";
    sysread DISK, $bootsect, SECT_SIZE
        or die "Unable to read from $disk: $^E";
    close DISK
        or die "Unable to close $disk: $^E";

    my $new_mbr = '';

    open BOOT, $boot_file
        or die "Unable to open $boot_file for reading: $^E";
    read BOOT, $new_mbr, MBR_SIZE
        or die "Unable to read from $boot_file: $^E";
    close BOOT
        or die "Unable to close $boot_file: $^E";

    my $deficit = MBR_SIZE - length $new_mbr;
    if ($deficit > 0) {
        # Pad out with zeroes
        $new_mbr .= "\x00" x $deficit;
    }
    elsif ($deficit < 0) {
        # Truncate
        $new_mbr = substr($new_mbr, 0, MBR_SIZE);
    }

    length $new_mbr == MBR_SIZE
        or die 'Internal error';

    # Overwrite the MBR portion
    print "Installing $boot_file as MBR...";

    substr($bootsect, 0, MBR_SIZE, $new_mbr);

    # Set the magic cookie to indicate a valid boot sector
    substr($bootsect, -2, 1, chr 0x55);
    substr($bootsect, -1, 1, chr 0xAA);

    # Write it out
    sysopen DISK, $disk, O_WRONLY
        or die "Unable to open $disk for writing: $^E";
    syswrite DISK, $bootsect, SECT_SIZE
        or die "Unable to write boot sector to $disk: $^E";
    close DISK
        or die "Unable to close write to $disk: $^E";

    print "done.\n";
}

write_mbr ($mbr_image, $disk);

exit 0;

__END__

=head1 NAME

install-mbr.pl - Install a Master Boot Record on a device

=head1 SYNOPSIS

install-mbr.pl <MBR image> <block device>

=head1 OPTIONS

--help          Display help and exit

=head1 EXAMPLE

install-mbr.pl misc/freedos-mbr.bin /dev/sda
