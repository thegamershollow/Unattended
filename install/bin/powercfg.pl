# Script to set the power management policy
# Written by Justin Beckley
# E-mail - jbeckley@utk.edu

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

# Store options in a hash for later use
my %opts;
GetOptions (\%opts, 'help|h|?')
    or pod2usage (2);

# If the user needs help, give it
(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure only one argument after the options
scalar @ARGV == 1
    or pod2usage (2);

# Assign the argument to a variable
my $power = $ARGV[0];

## Validate options

# Argument must be 0 - 5
$power =~ /^[012345]$/
    or die "Argument must be 0,1,2,3,4, or 5.\n";

## Now do some work

my %reg;
use Win32::TieRegistry (Delimiter => '/', TiedHash => \%reg, qw (REG_SZ));

my $key = ('HKEY_CURRENT_USER/Control Panel/PowerCfg/');

my $power_key = $reg{$key};
defined $power_key
    or die "Unable to open $key: $^E\n";

# Write the power configuration to the registry
defined ($power_key->{'/CurrentPowerPolicy'} = $power)
    or die "Unable to set CurrentPowerPolicy key: $^E";

__END__

=head1 NAME

powercfg.pl - Specify a power management scheme

=head1 SYNOPSIS

powercfg.pl [ options ] 0/1/2/3/4/5

Options:

--help	Display verbose help and exit

=head1 DESCRIPTION

powercfg.pl allows the user to specify a power management scheme that is
built into windows.

                            Turn Off               System
                        ---------------------------------------
                        monitor   hard disk    standby  hibernate

  0 - Home/Office Desk - 20 min.   Never       Never     Never
  1 - Portable/Laptop  - 15 min.   30 min.     20 min.   3 hrs.
  2 - Presentation     - Never     Never       Never     Never
  3 - Always On        - 20 min.   Never       Never     Never
  4 - Minimal Mngt.    - 15 min.   Never       Never     Never
  5 - Max Battery      - 15 min.   Never       20 min.   45 min.

=head1 SEE ALSO

Nothing provided yet.
