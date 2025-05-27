#!/usr/bin/perl

# Script to produce a cpio archive of device nodes.  Useful for
# producing a ramdisk (initrd) for a diskless Linux boot without
# mknod, which requires root privileges.

# Reads lines from stdin like this:

#   dev/mem c 1 1

# ...and produces a CPIO archive on stdout.

use warnings;
use strict;
use bytes;

binmode STDOUT, ':raw';

my $cur_inode = 1;
sub uniq_inode () {
    my $ret = $cur_inode;
    $cur_inode++;
    return $ret;
}

sub cpio_header ($$$$$$$$$$$$$$) {
    my ($c_magic, @rest) = @_;

    my $ret = $c_magic;

    scalar @rest == 13
        or die "internal error";

    foreach my $field (@rest) {
        $ret .=  sprintf '%08X', $field;
    }

    return $ret;
}

sub cpio_dev ($$$$) {
    my ($name, $type, $major, $minor) = @_;

    $name =~ /^[\.\/]/
        and die "internal error: $name starts with dot or slash";
    $name =~ /\x00/
        and die "internal error: name has a NULL char";

    my $mode = 0;

    if ($type eq 'c') {
        $mode |= 2 << 12;
    }
    elsif ($type eq 'b') {
        $mode |= 6 << 12;
    }
    else {
        die "internal error";
    }

    # Assign read/write permission for owner; no permissions for group
    # or other.
    $mode |= 0600;

    my $null_term_name = $name . chr(0);

    my $ret = cpio_header
        (# c_magic (Magic cookie)
         '070701',
         # c_ino (File inode number; we just make it up)
         uniq_inode (),
         # c_mode (File type and permissions)
         $mode,
         # c_uid (File uid) and c_gid (File gid) -- both root
         0, 0,
         # c_nlink (Link count)
         1,
         # c_mtime (modification time) -- now
         time,
         # c_filesize (Size of data field: 0)
         0,
         # c_maj, c_minor (Major/minor of file device number: irrelevant)
         0, 0,
         # c_rmaj, c_rmin (Major/minor for this device node)
         $major, $minor,
         # c_namesize (Length of filename, including trailing null)
         length $null_term_name,
         # c_chksum (checksum of data field: 0, since there is no data field)
         0);
    
    # After header comes null-terminated file name
    $ret .= $null_term_name;

    return $ret;
}

sub cpio_trailer () {
    my $trailer = 'TRAILER!!!' . chr(0);
    my $head = cpio_header
        ('070701',
         uniq_inode (),
         0,
         0, 0,
         0,
         0,
         0,
         0, 0,
         0, 0,
         length $trailer,
         0);
    return $head . $trailer;
}

# Return enough null characters to align argument to a multiple of 4
# bytes.
sub align ($) {
    my ($buf) = @_;
    if ((length $buf) % 4 == 0) {
        return '';
    }
    return chr(0) x (4 - (length $buf) % 4);
}

my $out = '';

while (my $line = <>) {
    # Remove comments
    $line =~ s/\#.*//;
    $line =~ /^\s*$/
        and next;
    my ($name, $type, $major, $minor) =
        $line =~ /^(.*)\s+(\S)\s+(\d+)\s+(\d+)\s*$/;
    defined $name
        or die "Unable to parse input line";

    $name =~ /^[\.\/]/
        and die "Leading dot or slash not allowed ($name); bailing out";

    $type =~ /^[bc]$/
        or die "Invalid type ($type) ; bailing";

    $out .= cpio_dev ($name, $type, $major, $minor);
    $out .= align ($out);
}

$out .= cpio_trailer ();
$out .= align ($out);

print $out;
