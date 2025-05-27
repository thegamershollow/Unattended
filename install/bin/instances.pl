
use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?', 'remote=s', 'query=s')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure exactly one argument after options.
scalar @ARGV == 1
    or pod2usage (2);

my ($class) = @ARGV;

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get a handle to the SWbemServices object of the machine.
my $computer = Win32::OLE->GetObject (exists $opts{'remote'}
                                      ? "WinMgmts://$opts{'remote'}/"
                                      : 'WinMgmts:');

# Get the SWbemObjectSet of all objects of the class.
my $query = "SELECT * FROM $class";
(exists $opts{'query'})
    and $query .= " WHERE $opts{'query'}";
print "Executing query: $query\n";
my $instances_set = $computer->ExecQuery ($query);

# Convert set to Perl array.
my @instances = Win32::OLE::Enum->All ($instances_set);

# Display all properties of an object.
sub dump_obj ($) {
    my ($obj) = @_;
    # Get set of properties of the class.
    my $props_set = $obj->{'Properties_'};

    # Convert set to Perl array.
    my @props = Win32::OLE::Enum->All ($props_set);
    foreach my $prop (@props) {
        my $name = $prop->{'Name'};
        printf "%32s ", $name;
        my $value;
        if ($prop->{'IsArray'}) {
            my $elts = $prop->Value();
            if (!defined $elts) {
                $value = "<empty array>";
            }
            else {
                $value = '<array ' . join ' ', @$elts;
                $value .= '>';
            }
        }
        else {
            $value = $prop->{'Value'};
            defined $value
                or $value = '<undefined>';
        }
        print "$value\n";
    }
}

foreach my $instance (@instances) {
    dump_obj ($instance);
    print "\n";
}

exit 0;

__END__

=head1 NAME

instances.pl - Dump all instances of a WMI class

=head1 SYNOPSIS

instances.pl [ options ] <WMI class name>

Options:

 --help                 Display help and exit
 --remote <host>        Operate on <host> instead of local machine
 --query <query>        Restrict instances to match WQL query <query>

=head1 SEE ALSO

http://msdn.microsoft.com/library/en-us/wmisdk/wmi/wmi_classes.asp
http://msdn.microsoft.com/library/en-us/wmisdk/wmi/querying_with_wql.asp
