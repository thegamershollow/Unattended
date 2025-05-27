# Overwrite passwords in unattend.txt with X marks

use warnings;
use strict;

my $unattend = 'c:\\netinst\\unattend.txt';

open UNATTEND, $unattend
    or die "Unable to open $unattend for reading: $^E";

my @lines = <UNATTEND>;

close UNATTEND
    or die "Unable to close $unattend: $^E";

map { s/^(.*(ProductID|ProductKey|Password)\s*)=.*$/$1=xxxxxxxx/i; } @lines;

open UNATTEND, ">$unattend"
    or die "Unable to open $unattend for writing: $^E";

print UNATTEND @lines;

close UNATTEND
    or die "Unable to close $unattend: $^E";

exit 0;
