# Shut down a Windows workstation.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32API::Registry qw(:Func :SE_);

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'message=s', 'halt', 'reboot|r',
            'remote=s', 'timeout=i')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure no arguments after options
@ARGV == 0
    or pod2usage (2);

(exists $opts{'halt'} != exists $opts{'reboot'})
    or die "$0: You must specify exactly one of --halt or --reboot\n";

my $timeout = (exists $opts{'timeout'} ? $opts{'timeout'} : 10);
my $reboot = exists $opts{'reboot'};
my $message = (exists $opts{'message'} ? $opts{'message'}
               : "$0 is shutting down the system");

my $system = (exists $opts{'remote'} ? $opts{'remote'} : '');

# Enable "shutdown" privilege
AllowPriv (SE_SHUTDOWN_NAME, 1)
    or die "Unable to AllowPriv SE_SHUTDOWN_NAME: $^E";

InitiateSystemShutdown ($system, $message, $timeout, 1, $reboot)
    or die "Unable to InitiateSystemShutdown: $^E";

print "Shutdown initiated.\n";

exit 0;

__END__

=head1 NAME

shutdown.pl - Shut down a Windows system

=head1 SYNOPSIS

shutdown.pl [ options ]

=head1 OPTIONS

 --help                  Display help and exit
 --message=<msg>         Display <msg> in message box during countdown
 --halt                  Shut down and halt
 --reboot                Shut down and reboot
 --remote <host>         Shut down <host> instead of local machine
 --timeout=<secs>        Wait <secs> seconds before shutdown (default 10)
