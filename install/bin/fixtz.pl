# Script to set timezone to its current value.

# See documentation at bottom for details.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure no arguments after options.
scalar @ARGV == 0
    or pod2usage (2);

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get a handle to the SWbemServices object of the machine.
my $computer = Win32::OLE->GetObject ('WinMgmts:');

# Get the set of time zone objects (should be only one).  See:
# <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_timezone.asp>
my $tz_set = $computer->InstancesOf ("Win32_TimeZone");

# Convert set to Perl array.
my @tzs = Win32::OLE::Enum->All ($tz_set);

# Grab first (only) element, which is our current time zone.
scalar @tzs == 1
    or die "Internal error";
my $tz = $tzs[0]->{'StandardName'};

print "Resetting timezone [$tz]...\n";

my $ret = system "control.exe timedate.cpl,,/Z $tz";

# Status 1 is normal, apparently.
$ret == 0 || $ret == 256
    or die "timedate.cpl failed, status ", int($ret / 256), '.', $ret % 256;

print "...done.\n";

exit 0;

__END__

=head1 NAME

fixtz.pl - Work around daylight saving bug in XP unattended install

=head1 SYNOPSIS

fixtz.pl [ options ]

Options:

 --help                 Display help and exit

=head1 NOTES

Windows XP unattended installation has a bug where daylight saving
time does not take effect.  If you use the TIMEDATE.CPL control panel
simply to set the time zone to its *current* value (which should be a
no-op), daylight saving time is then computed correctly.  This script
automates this process.

=head1 SEE ALSO

C<http://groups.google.com/groups?selm=3E657793.CB1A5467%40hydro.com>
