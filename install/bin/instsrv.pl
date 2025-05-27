# Like "instsrv", but require an account and prompt for the password.

use warnings;
use strict;
use Win32::OLE;
#use Term::ReadKey;

@ARGV == 3
    or die "usage: $0 <service> <command> <account name>\n";

my ($service, $cmd, $acct) = @ARGV;

print "*** Now configuring $service\n";

#ReadMode 2;

my $pass;
while (1) {
    print "Enter password for $acct: ";
    $pass = <STDIN>;
    chomp $pass;
#    print "\nRe-type password: ";
#    my $pass2 = <STDIN>;
    my $pass2 = $pass;
#    chomp $pass2;
    $pass eq $pass2
        and last;
    print "Passwords do not match!\nTry again.\n\n";
}

#ReadMode 0;

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get the Win32_Service class.
# <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_service.asp>
my $srv_class = Win32::OLE->GetObject ('WinMgmts:Win32_Service');
my $ret = $srv_class->Create
    ($service,
     $service,
     $cmd,
     16,
     1,
     'Automatic',
     0,
     $acct,
     $pass
     );

$ret == 0
    or die "Win32_Service::Create failed; code == $ret";

exit 0;
