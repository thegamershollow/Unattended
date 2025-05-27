# Script to enable/disable system restore.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

my $me = 'srconfig.pl';

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'remote=s', 'enable', 'disable')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure no arguments after options.
scalar @ARGV == 0
    or pod2usage (2);

($opts{'enable'} || $opts{'disable'})
    or die "$me: You must specify one of --enable or --disable; bailing";

($opts{'enable'} && $opts{'disable'})
    and die "$me: You must specify only one of --enable or --disable; bailing";

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get a handle to the SWbemServices object of the machine.
my $computer = Win32::OLE->GetObject
    (exists $opts{'remote'}
     ? "WinMgmts://$opts{'remote'}/root/default"
     : 'WinMgmts:root/default');

# Run a query to find the SystemRestore class object.  See
# <http://msdn.microsoft.com/library/en-us/sr/sr/systemrestore.asp>
# and
# <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/select_statement_for_schema_queries.asp>.
# We do it this way because the class only exists on XP and later.

my $sr_set = $computer->ExecQuery ('SELECT * from meta_class WHERE __this ISA "SystemRestore"');

# Convert set to Perl array.
my @srs = Win32::OLE::Enum->All ($sr_set);

if (scalar @srs < 1) {
    print "$me: SystemRestore class not found; nothing to do.\n";
    exit 0;
}

my $sr = $srs[0];

if ($opts{'disable'}) {
    print 'Disabling System Restore...';
    $sr->Disable ('');
    print "done.\n";
}
elsif ($opts{'enable'}) {
    print 'Enabling System Restore...';
    $sr->Enable ('');
    print "done.\n";
}
else {
    die 'Internal error';
}

exit 0;

=head1 NAME

srconfig.pl - Enable/disable System Restore

=head1 SYNOPSIS

srconfig.pl [ options ]

Options (may be abbreviated):

 --help                 Display help and exit
 --remote <host>        Operate on <host> instead of local machine
 --disable              Disable system restore
 --enable               Enable system restore
 
=head1 NOTES

This script enables or disables the "System Restore" feature
introduced in Windows XP.  If run on an earlier version of Windows, it
prints a short message and exits successfully.

=head1 SEE ALSO

C<http://msdn.microsoft.com/library/en-us/sr/sr/systemrestore.asp>
C<http://support.microsoft.com/?kbid=295299>
