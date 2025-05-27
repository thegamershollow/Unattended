#!/usr/bin/perl

use warnings;
use strict;
use File::Basename;

@ARGV < 2
    or die "Usage: $0 <# of previous versions to skip>\n";

my $skip = 0;

@ARGV > 0
    and $skip = $ARGV[0];

my $dir = dirname ($0);

my $news = "$dir/../../NEWS.txt";

open NEWS, $news
    or die "Unable to open $news for reading: $^E";

my $ver;
while (my $line = <NEWS>) {
    chomp $line;
    $line =~ /Changes in version (\S+)/
        or next;
    if ($skip == 0) {
        $ver = $1;
        last;
    }
    $skip--;
}

close NEWS
    or die "Unable to close $news: $^E";

defined $ver
    or die "Could not find version ($skip) in $news";

print $ver, "\n";

exit 0;
