# Removes "Previous Operating System on C:\" line from boot.ini

use warnings;
use strict;
use bytes;

# you can find the ASCII (win-latin-1) numbers in the windows
# character map (in the start folder > accessories > system tools)
# browse the "terminal" font and you will find the ASCII numbers you
# need
my %regexp_map =
    ('dan' => qr{Tidligere operativsystem p\x86},
     'deu' => qr{Vorheriges Betriebssystem auf},
     'enu' => qr{Previous Operating System on},
     'esn' => qr{Sistema operativo anterior en},
     'fra' => qr{Syst\x8Ame d\'exploitation pr\x82c\x82dent sur},
     'ita' => qr{Sistema operativo precedente su},
     'nld' => qr{Vorig besturingssysteem op},
     'nor' => qr{Tidligere operativsystem p\x86},
     'ptb' => qr{Sistema operacional anterior na},
     'sve' => qr{Tidigare operativsystem p\x86},
     );

my $bootini = 'C:\\boot.ini';

my $lang = (exists $ENV{'WINLANG'} ? $ENV{'WINLANG'} : 'enu');

my $langstr = (exists $regexp_map{$lang} ? $regexp_map{$lang} : $regexp_map{'enu'});

sub reset_attribs () {
    system 'attrib', '+h', '+s', $bootini;
}

END {
    # Be sure to reset attribs on boot.ini no matter what.
    reset_attribs ();
}

system 'attrib', '-h', '-s', $bootini;

open BOOTINI, $bootini
    or die "Unable to open $bootini for reading: $^E";

my @lines = grep { $_ !~ $langstr } <BOOTINI>;

close BOOTINI
    or die "Unable to close $bootini: $^E";

open BOOTINI, ">$bootini"
    or die "Unable to open $bootini for writing: $^E";

print BOOTINI @lines;

close BOOTINI
    or die "Unable to close $bootini: $^E";

exit 0;
