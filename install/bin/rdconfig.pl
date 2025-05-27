# Script to configure Remote Desktop (aka. Terminal Services).

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'remote=s', 'allow=i')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure no arguments after options.
scalar @ARGV == 0
    or pod2usage (2);

(defined $opts{'allow'})
    or pod2usage (2);

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get a handle to the SWbemServices object of the machine.
my $computer = Win32::OLE->GetObject (exists $opts{'remote'}
                                      ? "WinMgmts://$opts{'remote'}/"
                                      : 'WinMgmts:');

# Get the Win32_TerminalServiceSetting objects for the machine.  There
# should be only one.  See
# <http://msdn.microsoft.com/library/en-us/termserv/termserv/win32_terminalservicesetting.asp>
my $ts_set = $computer->InstancesOf ('Win32_TerminalServiceSetting');

# Convert set to Perl array.
my @ts = Win32::OLE::Enum->All ($ts_set);

if (scalar @ts < 1) {
    print "$0: Win32_TerminalServiceSetting class not found; nothing to do.\n";
    exit 0;
}

scalar @ts == 1
    or die "Internal error";

my $ts = $ts[0];

my $ret = $ts->SetAllowTSConnections($opts{'allow'});
$ret == 0
    or die "SetAllowTSConnections failed: %d\n";

exit 0;

=head1 NAME

rdconfig.pl - Configure Remote Desktop (aka. Terminal Services)

=head1 SYNOPSIS

rdconfig.pl [ options ]

Options (may be abbreviated):

 --help                 Display verbose help and exit
 --remote=<host>        Operate on <host> instead of local machine
 --allow=<arg>          Allow/disallow remote connections
 
=head1 DESCRIPTION

This script configures the Remote Desktop for Windows XP and above.

Use --allow=1 to enable Remote Desktop connections and --allow=0 to
disable them.

=head1 NOTES

To change the list of users who can access the machine remotely, edit
the "Remote Desktop Users" local group.

On earlier versions of Windows, the same feature was called "Terminal
Services".  When invoked on such versions, this script does nothing
and exits successfully.

=head1 SEE ALSO

C<http://msdn.microsoft.com/library/en-us/termserv/termserv/terminal_services_wmi_provider_classes.asp>
