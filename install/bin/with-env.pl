# Run a command with an environment defined by another command.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help', 'no-error')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, -verbose => 2);

# Ensure exactly two arguments
scalar @ARGV == 2
    or pod2usage (2);

my ($env_cmd, $cmd) = @ARGV;

my @settings = `$env_cmd`;

$opts{'no-error'} || $? == 0
    or die "$env_cmd failed, status ", $? / 256, '.', $? %256;

# Update environment with settings.
foreach my $setting (@settings) {
    chomp $setting;
    my ($var, $value) = $setting =~ /^([^=]+)=(.*)\z/;
    defined $var
        or die "Unable to parse output of $env_cmd:\n  $setting\n  ";
    $ENV{$var} = $value;
}

# Run "real" command.

system $cmd;
$? == 0
    or die "$cmd failed, status ", $? / 256, '.', $? %256;

exit 0;

__END__

=head1 NAME

with-env.pl - Use one command to set another's environment

=head1 SYNOPSIS

with-env.pl [ options ] <env_cmd> <cmd>

Options (may be abbreviated):

 --help         Display this help and exit
 --no-error     Do not abort if <env_cmd> gives an error

=head1 DESCRIPTION

This script takes two arguments, which are both commands to be run.
The first command should output one or more lines of the form:

  VARIABLE=VALUE

(Note that there is no space around the equals sign.)  This script
will add these settings to the environment, and then run the second
command.
