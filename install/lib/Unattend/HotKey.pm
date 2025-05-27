# HotKey.pm

# Fetches a single keystroke under Unix.  Stolen from Perl FAQ
# (section 8) and hacked up a bit.

package Unattend::HotKey;

@ISA = qw(Exporter);
@EXPORT = qw(cbreak cooked readkey read_secret);

use warnings;
use strict;
use POSIX qw(:termios_h);

my $fd_stdin = fileno(STDIN);

# Save original terminal settings
my $oterm     = POSIX::Termios->new();
$oterm->getattr($fd_stdin);

# Create CBREAK settings
my $cterm     = POSIX::Termios->new();
$cterm->getattr($fd_stdin);

my $echo     = ECHO | ICANON;

$cterm->setlflag(~$echo & $cterm->getlflag());
$cterm->setcc(VTIME, 0);
$cterm->setcc(VMIN, 1);

sub cbreak {
    $cterm->setattr($fd_stdin, TCSANOW);
}

sub cooked {
    $oterm->setattr($fd_stdin, TCSANOW);
}

sub readkey {
    my $key = '';
    cbreak();
    sysread(STDIN, $key, 1);
    cooked();
    return $key;
}

sub read_secret ($) {
    my ($max_length) = @_;

    my $ret = '';
    my $key = '';

    cbreak ();

    while (1) {
        sysread (STDIN, $key, 1);

        if ($key eq chr(10)) {
            last;
        }
        elsif ($key eq chr(8) || $key eq chr(127)) {
            length $ret > 0
                or next;
            $ret = substr $ret, 0, -1;
            print chr(8), ' ', chr(8);
        }
        else {
            length $ret < $max_length
                or next;
            $ret .= $key;
            print '*';
        }
    }

    cooked ();

    print "\n";
    return $ret;
}

END { cooked() }

1;
