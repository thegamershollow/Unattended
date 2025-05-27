
use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'remote=s', 'user=s')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure exactly two arguments after options.
scalar @ARGV == 2
    or pod2usage (2);

my ($var_name, $value) = @ARGV;

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get a handle to the SWbemServices object of the machine.
my $computer = Win32::OLE->GetObject (exists $opts{'remote'}
                                      ? "WinMgmts://$opts{'remote'}/"
                                      : 'WinMgmts:');

# Get the environment variable class object.  See:
# <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_environment.asp>
my $var_class = $computer->Get ('Win32_Environment');

# Create an instance of this class.
my $var = $var_class->Spawninstance_ ();

# Set the instance's properties appropriately.
$var->{'Name'} = $var_name;
$var->{'Username'} = exists $opts{'user'} ? $opts{'user'} : '<SYSTEM>';
$var->{'VariableValue'} = $value;

$var->Put_();

exit 0;

__END__

=head1 NAME

setenv.pl - Set a Windows environment variable

=head1 SYNOPSIS

setenv.pl [ options ] <variable> <value>

Options (may be abbreviated):

 --help                 Display help and exit
 --remote <host>        Set variable on <host> instead of local machine
 --user <user>          Set variable for <user> (default "<SYSTEM>")

=head1 NOTES

The --user switch may be a user name or one of the special strings
"<DEFAULT>" and "<SYSTEM>".

=head1 SEE ALSO

C<http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_environment.asp>
