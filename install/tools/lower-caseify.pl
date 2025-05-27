#!/usr/bin/perl

# This scripts renames a folder and of its subfolders to lower case.
# To use this script to fix an OS installation point, simply:
#
# 1) Install ActiveState Perl and associate .pl files with it.
#
# 2) Run "lower-caseify.pl Z:\os\winxpsp2" (or whatever).

use warnings;
use strict;
use File::Spec;

sub doit ($);
sub doit ($) {
    my ($file) = @_;

    print "Skipping $file\n" if ($file =~ /.*(?:linuxaux|CVS|Unattend|AutoIt\.exe|README\.txt)$/);
    return if ($file =~ /.*(?:linuxaux|CVS|Unattend|AutoIt\.exe|README\.txt)$/);

    if (! -l $file && -d _) {
        # Directory; recurse through its contents.
        opendir DIR, $file
            or die "Unable to opendir $file: $^E";
        my @contents = readdir DIR;
        closedir DIR
            or die "Unable to closedir $file: $^E";
        foreach my $entry (@contents) {
            $entry eq '.' || $entry eq '..'
                and next;
            doit (File::Spec->catfile ($file, $entry));
        }
    }

    # Rename to lower-case.
    my $lc_file = $file;
    $lc_file =~ s/([^\/]*\/*)$/lc($1)/eg;
    $file eq $lc_file
        or print "Renaming $file -> $lc_file\n";
    $file eq $lc_file
        or rename $file, $lc_file
        or die "Unable to rename $file to $lc_file: $^E";
}

foreach my $file (@ARGV) {
    doit ($file);
}

exit 0;
