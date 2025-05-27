# Script to add certificates to certificate stores.

# Note: This script relies on the CryptoAPI COM interface (CAPICOM),
# which must be installed first.  See
# <http://msdn.microsoft.com/library/en-us/security/Security/getting_ready_to_use_capicom.asp>.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'add=s')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure no arguments after options.
scalar @ARGV == 0
    or pod2usage (2);

# Require "--add" option (for now)
(defined $opts{'add'})
    or pod2usage (2);

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# CAPICOM constant definitions
use constant {
    # Store Location
    # http://msdn.microsoft.com/library/en-us/security/security/capicom_store_location.asp
    CAPICOM_LOCAL_MACHINE_STORE => 1,

    # Store Open Mode
    # http://msdn.microsoft.com/library/en-us/security/security/capicom_store_open_mode.asp
    CAPICOM_STORE_OPEN_READ_ONLY => 0, 
    CAPICOM_STORE_OPEN_READ_WRITE => 1, 
    CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED => 2, 
    CAPICOM_STORE_OPEN_EXISTING_ONLY => 128, 
    CAPICOM_STORE_OPEN_INCLUDE_ARCHIVED => 256,
};

my $cert_file = $opts{'add'};

# Create a new Certificate object, and load it from the file. See
# <http://msdn.microsoft.com/library/en-us/security/security/certificate.asp>.
my $cert = Win32::OLE->new ('CAPICOM.Certificate');
$cert->Load ($cert_file);

# Create a new Store object, and use it to open the store.  See
# <http://msdn.microsoft.com/library/en-us/security/security/store.asp>.
my $store = Win32::OLE->new ('CAPICOM.Store');

# FIXME: These should be command-line options.
my $store_location = CAPICOM_LOCAL_MACHINE_STORE;
my $store_name = 'ROOT';

$store->Open ($store_location, $store_name, CAPICOM_STORE_OPEN_READ_WRITE);

# Add the certificate to the store.  Note that this may put up a
# dialog box...
$store->Add ($cert);

exit 0;

__END__

=head1 NAME

cert.pl - Add a certificate to a store

=head1 SYNOPSIS

cert.pl [options]

Options (may be abbreviated):

 --help                 Display help and exit
 --add <filename>       Read cert from <filename> and add it to store

=head1 DESCRIPTION

This script manipulates Windows certificate stores.

The "--add <filename>" option reads a certificate from a .cer or .pfx
file and adds it to the root CA store for the local system.  (There is
no option to set the store's location or name.  Someday...)

=head1 SEE ALSO

C<http://msdn.microsoft.com/library/en-us/security/security/store.asp>
