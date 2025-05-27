# Disable various first-time login junk.

use warnings;
use strict;

@ARGV == 0
    or die "Usage: $0";

my %reg;
use Win32::TieRegistry (Delimiter => '/', TiedHash => \%reg, qw(REG_DWORD REG_BINARY REG_MULTI_SZ));

# Replace %VAR% with environment variable VAR in a string.
sub expand_vars ($) {
    my ($arg) = @_;

    while ($arg =~ /%([^%]+)%/) {
        my $var = $1;
        my $val = $ENV{$var};
        $val =~ /%/
            and die 'Internal error (time to rewrite expand_vars)';
        $arg =~ s/%$var%/$val/g;
    }

    return $arg;
}

# Get profiles directory and default user subdirectory
my $profile_list =
    'LMachine/SOFTWARE/Microsoft/Windows NT/CurrentVersion/ProfileList/';
my $profile_list_key = $reg{$profile_list};
defined $profile_list_key
    or die "Unable to read $profile_list: $^E";

my $profiles_dir = $profile_list_key->{'/ProfilesDirectory'};
defined $profiles_dir
    or die "Unable to read /ProfilesDirectory: $^E";
$profiles_dir = expand_vars ($profiles_dir);

my $default_user = $profile_list_key->{'/DefaultUserProfile'};
defined $default_user
    or die "Unable to read /DefaultUserProfile: $^E";

# Get HKEY_CURRENT_USER key
my $cuser_key = $reg{'CUser/'};

# Get .default user key
my $defuser_key = $reg{'Users/.DEFAULT/'};

# Get NTUSER.DAT registry hive key
$reg{'/'}->AllowLoad (1)
    or die "Unable to enable loading of hive files: $^E";
my $ntuser_dat = "$profiles_dir\\$default_user\\NTUSER.DAT";
my $ntuser_key = $reg{'Users'}->Load ($ntuser_dat, 'NTUSER')
    or die "Unable to load registry hive $ntuser_dat: $^E";

# Setup keys for per-user

foreach my $reg_key ($cuser_key, $defuser_key, $ntuser_key) {
    $reg_key->{'Console/'} = {
        # Set scroll buffer to 2000 lines for console
#        '/ScreenBufferSize' => [ pack('L', 131072080), REG_DWORD ],
        # Allow users to use mouse to edit in console
#        '/QuickEdit' => [ pack('L', 1), REG_DWORD ],
    } or die "Unable to set User/Console/ registry settings: $^E";

    $reg_key->{'Control Panel/'} = {
        'Desktop/' => {
            # Enable killing tasks that don't respond
#            '/AutoEndTasks' => "1",
            # Turn on font smoothing
#            '/FontSmoothing' => "2",
            # Disable screen saver
#            '/ScreenSaveActive' => [ pack('L', 0), REG_DWORD ],
            # Timeout for responding is 5 seconds
#            '/WaitToKillAppTimeout' => "5000",
        },
        'Keyboard/' => {
            # Make windows remember the state of numlock
#            '/InitialKeyboardIndicators' => "2",
        },
        'PowerCfg/' => {
            # Change power policy to Always On
#            '/CurrentPowerPolicy' => "3",
        },
    } or die "Unable to set User/Control Panel/ registry settings: $^E";

    $reg_key->{'Software/'} = {
        'Microsoft/' => {
            'Command Processor/' => {
                # Enable UNC paths to be used on the command line
#                '/DisableUNCCheck' => [ pack('L', 1), REG_DWORD],
            },
            'Ftp/' => {
                # Enable pasive FTP
#                '/Use PASV' => 'yes',
            },
            'Internet Connection Wizard/' => {
                # Disable Internet Connection Wizard
                '/Completed' => [ pack('L', 1), REG_BINARY ],
            },
            'Internet Explorer/' => {
                'Main/' => {
                    # Reuse Internet Explorer windows when possible
#                    '/AllowWindowReuse' => [ pack('L', 1), REG_DWORD ],
                    # Show images the size that they should be
#                    '/Enable AutoImageResize' => 'no',
                    # Don't display errors on page dialog
#                    '/Error Dlg Displayed On Every Error' => 'no',
                    # Don't display errors on page dialog window
#                    '/Error Dlg Details Pane Open' => 'no',
                    # Render screen before drawing
#                    '/Force Offscreen Composition' => [ pack('L', 1), REG_DWORD ],
                    # Don't remember passwords
#                    '/FormSuggest Passwords' => 'no',
                    # Don't prompt to remember passwords
#                    '/FormSuggest PW Ask' => 'no',
                    # Close downloads windows when complete
#                    '/NotifyDownloadComplete' => 'no',
                    # Show Image placeholders
#                    '/Show Image Placeholders' => [ pack('L', 1), REG_DWORD ],
                    # Don't ask to auto fill out forms
#                    '/Use FormSuggest' => 'no',
                    # Don't use search assistant in Internet Explorer
#                    '/Use Search Asst' => 'no',
                },
                'IntelliForms/' => {
                    # Don't ask to auto fill out forms
#                    '/AskUser' => [ pack('L', 0), REG_DWORD ],
                },
            },
            'MediaPlayer/' => {
                'Preferences/' => {
                    # Don't prompt for Privacy Statement on Media Player
                    '/AcceptedPrivacyStatement' => [ pack('L', 1), REG_DWORD],
                },
            },
            'Telnet/' => {
                # Enable smoother scrolling in telnet
#                '/SmoothScroll' => [ pack('L', 1), REG_DWORD],
            },
            'Windows/' => {
                'CurrentVersion/' => {
                    'Explorer/' => {
                        'Advanced/' => {
                            # Disable Thumbnail caching
#                            '/DisableThumbnailCache' => [ pack('L', 1), REG_DWORD ],
                            # Display path names correctly
#                            '/DontPrettyPath' => [ pack('L', 1), REG_DWORD ],
                            # Show Hidden and System Files
#                            '/Hidden' => [ pack('L', 1), REG_DWORD ],
                            # Restore folders on startup
#                            '/PersistBrowsers' => [ pack('L', 1), REG_DWORD ],
                            # Launch explorer windows in separate processes
#                            '/SeparateProcess' => [ pack('L', 1), REG_DWORD ],
                            # Display contents of system folders
#                            '/WebViewBarricade' => [ pack('L', 1), REG_DWORD ],
                            # always show full startmenue
#                            '/IntelliMenus' => 'no',                            
                        },
                        'AutoComplete/' => {
                            # Turn on auto completion of commands
#                            '/Append Completion' => 'yes',
                            # Turn on auto suggestion for commands
#                            '/AutoSuggest' => 'yes',
                        },
                        'CabinetState/' => {
                            # Show full path in title bar for explorer windows
#                            '/FullPath' => [ pack('L', 1), REG_DWORD ],
                        },
                        # Don't prefix shortcuts with "Shortcut to.."
#                        '/Link' => [ pack('L', 0), REG_BINARY ],
                        'SmallIcons/' => {
                            # Show Small Icons in Internet Explorer
#                            '/SmallIcons' => 'yes',
                        },
                        'Tips/' => {
                            # Disable tips
                            '/Show' => [ pack('L', 0), REG_DWORD ],
                        },
                    },
                    'Internet Settings/' => {
                        '5.0/' => {
                            'Cache/' => {
                                'Content/' => {
                                    # Only cache 100Mb of internet pages
#                                    '/CacheLimit' => [ pack('L', 102400), REG_DWORD ],
                                },
                            },
                        },
                        'Cache/' => {
                            # Empty Temporary Internet Files when browser exits
#                            '/Persistent' => [ pack('L', 0), REG_DWORD ],
                        },
                        # Don't cache Encrypted pages
#                        '/DisableCachingOfSSLPages' => [ pack('L', 1), REG_DWORD ],
                        # Don't show privacy reminder
#                        '/PrivDiscUiShown' => [ pack('L', 1), REG_DWORD ],
                        # Check for newer of page on every visit
#                        '/SyncMode5' => [ pack('L', 3), REG_DWORD ],
                        # Don't warn when crossing from http to https
#                        '/WarnOnZoneCrossing' => [ pack('L', 0), REG_DWORD ],
                        'Zones/' => {
                            '3/' => {
                                # Don't prompt on form submission
#                                '/1601' => [ pack('L', 0), REG_DWORD ],
                            },
                        },
                    },
                    'Policies/Explorer/' => {
                        # Don't include machine name in shortcuts
#                        '/LinkResolveIgnoreLinkInfo' => [ pack('L', 0), REG_DWORD ],
                        # Don't do an exaustive search if lnk is broken
#                        '/NoResolveSearch' => [ pack('L', 1), REG_DWORD ],
                    },
                },
            },
        },
    } or die "Unable to set User/Software/Microsoft/ registry settings: $^E";

    # Set Screen Saver to None
#    delete $reg_key->{'Control Panel/Desktop//SCRNSAVE.EXE'};

    # Don't run Internet Connection Wizard
    delete $reg_key->{'Software/Microsoft/Windows/CurrentVersion/RunOnce//^SetupICWDesktop'};
}

# Setup keys for machine

$reg{'LMachine'}->{'Software/'} = {
    'Classes/' => {
        'Software/' => {
            'Microsoft/' => {
                'MediaPlayer/' => {
                    'Preferences/' => {
                        # Don't prompt for EULA on Media Player
                        '/AcceptedEULA' => [ pack('L', 1), REG_DWORD],
                    },
                },
            },
        },
    },
    'Microsoft/' => {
        'Windows/' => {
            'CurrentVersion/' => {
                'Explorer/' => {
                    'AlwaysUnloadDLL/' => {
                        # Unload DLL's once all applications using them are done
#                        '/' => "1",
                    },
                    # Show drive letters first on shares
#                    '/ShowDriverLettersFirst' => [ pack('L', 1), REG_DWORD ],
                },
            },
        },
    },
    'Policies/' => {
        'Microsoft/' => {
            'Windows/' => {
                'Installer/' => {
                    # Enable administrators to install applications over Terminal Services
#                    '/EnableAdminTSRemote' => [ pack('L', 1), REG_DWORD ],
                },
            },
        },
    },
} or die "Unable to set LMachine/Software/ registry settings: $^E";

$reg{'LMachine'}->{'System/'} = {
    'CurrentControlSet/' => {
        'Control/' => {
            'FileSystem/' => {
                # Disable NTFS Last Access updates
#                '/NtfsDisableLastAccessUpdate' => [ pack('L', 1), REG_DWORD ],
            },
        },
        'Services/' => {
            'KSecDD/' => {
                # Don't show start button balloon tip
                '/StartButtonBalloonTip' => [ pack('L', 1), REG_DWORD ],
            },
        },
    },
} or die "Unable to set LMachine/System/CurrentControlSet/ registry settings: $^E";

# Show icon in taskbar for network interfaces
foreach my $networkadapter (keys( %{$reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'}} )) {
    if ( defined $reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'.$networkadapter.'Connection/'} ) {
        $reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'.$networkadapter} = {
            'Connection/' => {
#                '/ShowIcon' => [ pack('L', 1), REG_DWORD],
             },
        };
    }
}

# Change CdRom letter to R: and update setup paths
foreach my $mounts ( grep( /:$/, keys( %{$reg{'LMachine/System/MountedDevices/'}} ) ) ) {
    if ( $reg{'LMachine/System/MountedDevices/'.$mounts} =~ /[Cc].[Dd].[Rr].[Oo].[Mm]/ ) {
        my $oldcdrom = delete $reg{'LMachine/System/MountedDevices/'.$mounts};
#        $reg{'LMachine/System/MountedDevices//\\DosDevices\\R:'} = [ $oldcdrom, REG_BINARY ];
#        $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//Installation Sources'} = [ ['R:\\i386'], REG_MULTI_SZ ];
#        $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//ServicePackSourcePath'} = 'R:\\';
#        $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//SourcePath'} = 'R:\\';
        last;
    }
}

# Don't browse for Scheduled Tasks in Network Neighborhood
#delete $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Explorer/RemoteComputer/NameSpace/{D6277990-4C6A-11CF-8D87-00AA0060F5BF}/'};

exit 0;
