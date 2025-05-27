# Script to enable or disable automatic logon.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'logon=s', 'user=s', 'password=s', 'domain=s',
            'keep', 'help')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

my %reg;
use Win32::TieRegistry (Delimiter => '/', TiedHash => \%reg);

my $winlogon_key_name =
    'HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows NT/CurrentVersion/Winlogon/';

my $winlogon_key = $reg{$winlogon_key_name};
defined $winlogon_key
    or die "Unable to open $winlogon_key_name: $^E";

my %new_values = ('DefaultUserName' => $opts{'user'},
                  'DefaultPassword' => $opts{'password'},
                  'AutoAdminLogon' => $opts{'logon'},
                  'DefaultDomainName' => $opts{'domain'}
                  );

foreach my $name (sort keys %new_values) {
    my $val = $new_values{$name};
    if (defined $val) {
        $winlogon_key->SetValue ($name, $val)
            or die "Unable to set $winlogon_key_name/$name to $val: $^E";
    }
    elsif (!$opts{'keep'}) {
        (delete $winlogon_key->{"/$name"})
            or die "Unable to delete $winlogon_key_name/$name: $^E";
    }
    # else do nothing
}

__END__

=head1 NAME

autolog.pl - Set defaults for Windows logon

=head1 SYNOPSIS

autolog.pl [ options ]

Options (may be abbreviated):

 --help                 Display help and exit
 --user=<username>      Set user name field to <username>
 --password=<password>  Set password field to <password>
 --domain=<domain>      Set domain to <domain>
 --logon=<val>          Set AutoAdminLogon key to <val>
 --keep                 Keep current setting for unspecified entries

=head1 NOTES

This script modifies the registry entries controlling automatic logon.
These also control the default user name and domain name in the logon
panel, even when automatic logon is disabled.

Failing to specify an argument removes the corresponding registry key,
unless the --keep option is provided.  You probably at least want to
specify --logon=0, because otherwise Windows will not even set the
defaults to be the last user who logged on.

Note that all of these values, most notably the password, are stored
as cleartext.

Also note that if the password is not set, the automatic logon will
still work if the account has an empty password.  However, Windows
will "helpfully" set the AutoAdminLogon key back to 0 in this case,
disabling automatic logon for next time.

=head1 EXAMPLES

To automatically log on to the local machine as user "Administrator"
with password "sekrit":

  autolog.pl --logon=1 --user=Administrator --password=sekrit

To set the defaut user name and domain to MYDOM\someuser:

  autolog.pl --logon=0 --user=someuser --domain=MYDOM

To disable automatic logon and clear the defaults, but allow Windows
to set the defaults in the future:

  autolog.pl --logon=0

To disable all memory of who logged on last, so the the user name must
be typed every time:

  autolog.pl

=head1 SEE ALSO

  <http://support.microsoft.com/?kbid=234562>
