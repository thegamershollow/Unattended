# Script to configure Automatic Updates from a command prompt.
# Part of <http://unattended.sourceforge.net/>.
# 2004-02-15 Nils Østbjerg <no@business.aau.dk>

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;

my %opts;
GetOptions (\%opts, 'help|h|?', 'day=i', 'time=i', 'remote=s', 'wait=i',
            'sus=s', 'status=s', 'noautoreboot', 'policy')
  or pod2usage (2);

(exists $opts{'help'})
  and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure exactly one argument after options.
scalar @ARGV == 1
  or pod2usage (2);

my ($au_options) = @ARGV;


## Initialize the hashes 

my %au_values = ('ScheduledInstallDay' => 255, 
		 'ScheduledInstallTime' => 255,
                 'RescheduleWaitTime' => 255,
                 'AUOptions' => 255,
		 'NoAutoRebootWithLoggedOnUsers' => 255,
		 'NoAutoUpdate' => 255,
		 'UseWUServer' => 255
		);

my %wu_values = ('WUServer' => '',
                 'WUStatusServer' => '',
                );

my %old_values = ('AUOptions' => 254, 
		  'AUState' => 254,
		  'ScheduledInstallDay' => 255,
		  'ScheduledInstallTime' => 255
		 );

## Validate all options.

  
if ($opts{'policy'}) { 
# Use policy settings.
  if ($au_options eq "off" || $au_options eq "1") {
      (exists $opts{'day'} || exists $opts{'time'}
       || exists $opts{'wait'} || exists $opts{'sus'}
       || exists $opts{'status'} || exists $opts{'noautoreboot'})
          and die ("only the --remote option is allowed for this mode\n");
    
    $au_values{'NoAutoUpdate'} = 1;
    
  } elsif ($au_options eq "notify" || $au_options eq "2") {
    (exists $opts{'day'} || exists $opts{'time'} || exists $opts{'wait'})
      and die ("--day, --time and --wait options is not allowed for this mode\n");
    
    $au_values{'AUOptions'} = 2;
    
  } elsif ($au_options eq "download"|| $au_options eq "3" ) {
    (exists $opts{'day'} || exists $opts{'time'} || exists $opts{'wait'}) 
      and die ("--day, --time and --wait options is not allowed for this mode\n");
    
    $au_values{'AUOptions'} = 3;
    
  } elsif ($au_options eq "install"|| $au_options eq "4" ) {
    (exists $opts{'day'} && exists $opts{'time'} && exists $opts{'wait'})
      or die "--day, --time and --wait options required for this mode\n";
    
    if ($opts{'day'} =~ /^[01234567]$/) {
      $au_values{'ScheduledInstallDay'} = $opts{'day'};
    } else {
      die "--day must be between 0 and 7\n";
    }
    
    if ($opts{'time'} =~ /^\d+$/ && $opts{'time'} >= 0 && $opts{'time'} <= 23) {
      $au_values{'ScheduledInstallTime'} = $opts{'time'};
    } else {
      die "--time must be between 0 and 23\n";
    }
    
    if ($opts{'wait'} =~ /^\d+$/ && $opts{'wait'} >= 1 && $opts{'wait'} <= 60) {
      $au_values{'RescheduleWaitTime'} = $opts{'wait'};
    } else {
      die "--wait must be between 1 and 60\n";
    }
    
    $au_values{'AUOptions'} = 4;
    
  } else {
    die "Argument must be 1, off, 2, notify, 3, download, 4, or install.\n";
  }

  if (exists $opts{'noautoreboot'}) {
    $au_values{'NoAutoRebootWithLoggedOnUsers'} = 1;
  }
  
  if (exists $opts{'sus'}) {
    if ($opts{'sus'} =~ /^http\:\/\/.+$/ ) {
      $wu_values{'WUServer'} = $opts{'sus'}; 
      $au_values{'UseWUServer'} = 1; 
    } else {
      die ("syntax is : --sus http://susserver.example.com");
    }
  }
  
  if (exists $opts{'status'}) {
    if ($opts{'status'} =~ /^http\:\/\/.+$/ ) {
      $wu_values{'WUStatusServer'} = $opts{'status'}; 
    } else {
      die ("syntax is : --status http://susserver.example.com");
    }
  }
} else {
# Use old settings, and allow admins to configure it.

  if ($au_options eq "off" || $au_options eq "1") {
    (exists $opts{'day'} || exists $opts{'time'} )
      and die ("only the --remote option is allowed for this mode\n");
    
    $old_values{'AUOptions'} = 1;
    $old_values{'AUState'} = 7;
        
  } elsif ($au_options eq "notify" || $au_options eq "2") {
    (exists $opts{'day'} || exists $opts{'time'})
      and die ("--day and --time options is not allowed for this mode\n");
    
    $old_values{'AUOptions'} = 2;
    $old_values{'AUState'} = 2;
    
  } elsif ($au_options eq "download"|| $au_options eq "3" ) {
    (exists $opts{'day'} || exists $opts{'time'})
      and die ("--day and --time options is not allowed for this mode\n");
    
    $old_values{'AUOptions'} = 3;
    $old_values{'AUState'} = 2;
    
  } elsif ($au_options eq "install"|| $au_options eq "4" ) {
    (exists $opts{'day'} && exists $opts{'time'})
      or die "--day and --time options required for this mode\n";
    
    if ($opts{'day'} =~ /^[01234567]$/) {
      $old_values{'ScheduledInstallDay'} = $opts{'day'};
    } else {
      die "--day must be between 0 and 7\n";
    }
    
    if ($opts{'time'} =~ /^\d+$/ && $opts{'time'} >= 0 && $opts{'time'} <= 23) {
      $old_values{'ScheduledInstallTime'} = $opts{'time'};
    } else {
      die "--time must be between 0 and 23\n";
    }

    $old_values{'AUOptions'} = 4;
    $old_values{'AUState'} = 2;
  } else {
    die "Argument must be 1, off, 2, notify, 3, download, 4, or install.\n";
  }

  if (exists $opts{'noautoreboot'} || exists $opts{'sus'} || exists $opts{'status'}) {
    die ("The --policy option is required for the use of this option.\n");
  }
  
}


## Change the registry settings.

my %reg;
use Win32::TieRegistry (Delimiter => '/', TiedHash => \%reg);

my $key_name = ('HKEY_LOCAL_MACHINE/SOFTWARE/Policies/Microsoft/Windows/');
my $wu_key_name = ('WindowsUpdate/');
my $au_key_name = ('AU/');

($opts{'remote'})
  and $key_name = "//$opts{'remote'}/$key_name";

my $key = $reg{$key_name};

defined $key 
  or die "Unable to open $key_name";

foreach my $name (sort keys %wu_values) {
  my $val = $wu_values{$name};
  if ($val eq '') {   
    if (exists $key->{"$wu_key_name$name"}) {
      (delete $key->{"$wu_key_name$name"})
	or die "Unable to delete $key_name$wu_key_name$name: $^E";
    }
  } else {
    $key->{"$wu_key_name"}= { "/$name" => $val}
      or die "Unable to set $key_name$wu_key_name$name to $val: $^E";
  }
}

foreach my $name (sort keys %au_values) {
  my $val = $au_values{$name};
  if ($val == 255 ) {
    if (exists $key->{"$wu_key_name$au_key_name$name"}) {
      (delete $key->{"$wu_key_name$au_key_name$name"})
	or die "Unable to delete $key_name$wu_key_name$au_key_name$name: $^E";
    }
  } else {
    $key->{"$wu_key_name"}= { "$au_key_name" => 
			      {
			       "/$name" =>  [ pack("L", $val), "REG_DWORD" ] 
			      }
			    }
      or die "Unable to set $key_name$au_key_name$name to $val: $^E";
  }
}

my $old_key_name = ('HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows/'
		    . 'CurrentVersion/WindowsUpdate/Auto Update/');

($opts{'remote'})
  and $old_key_name = "//$opts{'remote'}/$old_key_name";

my $old_key = $reg{$old_key_name};

defined $old_key 
  or die "Unable to open $old_key_name";

foreach my $name (sort keys %old_values) {
  my $val = $old_values{$name};
  if ($val == 255 ) {
    if (exists $old_key->{"$name"}) {
      delete $old_key->{"$name"} 
	or die "Unable to delete $old_key_name$name: $^E";
    }
  } elsif ($val != 254) {
    $old_key->{"/$name"} =  [ pack("L", $val), "REG_DWORD" ]
      or die "Unable to set $old_key_name$name to $val: $^E";
  }
}

__END__

=head1 NAME

auconfig.pl - Configure Windows AutoUpdate

=head1 SYNOPSIS

auconfig.pl [ options ] <command>

Commands:

 1 | off         Disable automatic updates
 2 | notify      Notify user before download
 3 | download    Download automatically; notify user before install
 4 | install     Download and install automatically 

Options:

 --help           Display verbose help and exit (RECOMMENDED)
 --policy         Use system policy settings
 --remote <host>  Operate on <host> instead of local machine     
 --day <day>      Day of week for autoupdate (1 == Sunday; 0 == every day)
 --time <hour>    Time for auto update (0 == midnight, 23 == 11 P.M.)
 --wait <min>     How long after a restart a rescheduled install starts  
 --sus <url>      Specifies the URL address of the SUS server to be used
 --status <url>   Specifies the URL address of the SUS stastistics server
 --noautoreboot   Turns off automatic reboots while users are logged on

=head1 DESCRIPTION

auconfig.pl configures the Windows 2000 and XP "Auto Updates"
facility. 

The off command allows no options, except --policy and --remote.

The notify and download commands requires no options, but allows all 
excepts the --day, --time and --wait options.   

All options are allowed with the install command, and the --day,
and --time are required. If the --policy option is used the --wait
option is required as well.

The --policy option is required for all options except --remote, 
--day and --time. When the --policy option is use the settings is 
a system policy, which cant be changed from the GUI.

The --day option specifies which weekday the automatic installation 
runs. The value must be between 0 and 7.  1 means Sunday, 2 
means Monday, and 7 means Saturday.  0 means every day.

The --time option specifies at which time the automatic installation
runs. The value must be between 0 and 23.  0 mean midnight, 1 means 
1 A.M., 12 means noon, and 23 means 11 P.M.

With the --wait you specify the amount of minutes a computer waits
before preforming installations which was scheduled to take place while
the computer was off. The range is from 1 to 60 minutes.

The --sus option enables Automatic Updates to use the Software Update 
Services server specified. 
The format of the url is http://susserver.example.com

The --status allows you to specify the SUS statistics server. The format of
the url is the same as with --sus.

The --noautoreboot option makes Automatic Update present the user 
with a request for a system reboot if one is required, instead of the
default behavior where the system will reboot if required, something
that may result in loss of data.


=head1 SEE ALSO

C<http://windows2000faq.com/articles/?articleid=26221>
C<http://support.microsoft.com/?id=328010>
C<http://www.microsoft.com/resources/documentation/WindowsServ/2003/all/deployguide/en-us/dmebh_sus_wviy.asp>
