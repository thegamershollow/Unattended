# Disable various first-time login junki and other annoying stuff.

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
        '/ScreenBufferSize' => [ pack('L', 131072080), REG_DWORD ],
        # Allow users to use mouse to edit in console
        '/QuickEdit' => [ pack('L', 1), REG_DWORD ],
    } or die "Unable to set User/Console/ registry settings: $^E";

    $reg_key->{'Control Panel/'} = {
        'Desktop/' => {
            # Enable killing tasks that don't respond
            '/AutoEndTasks' => "1",
            # Turn on font smoothing
            '/FontSmoothing' => "2",
            # Set Font smoothing to standard
            '/FontSmoothingType' => [ pack('L', 1), REG_DWORD ],
            # Remove tool tips from Min/Max/Close Buttons
            '/MinMaxClose' => "0",
            # Disable screen saver
            '/ScreenSaveActive' => [ pack('L', 0), REG_DWORD ],
            # Timeout for responding is 5 seconds
            '/WaitToKillAppTimeout' => "5000",
            # Don't automatically return to the welcome screen
            '/NoAutoReturnToWelcome' => "1",
        },
        'Keyboard/' => {
            # Make windows remember the state of numlock
            '/InitialKeyboardIndicators' => "2",
        },
        'PowerCfg/' => {
            # Change power policy to Always On
            '/CurrentPowerPolicy' => "3",
        },
    } or die "Unable to set User/Control Panel/ registry settings: $^E";

    $reg_key->{'Software/'} = {
        'Microsoft/' => {
            'Command Processor/' => {
                # Change command completion char to TAB
                '/CompletionChar' => [ pack('L', 9), REG_DWORD],
                # Enable command line completion
                '/EnableExtensions' => [ pack('L', 1), REG_DWORD],
                # Change directory completion char to TAB
                '/PathCompletionChar' => [ pack('L', 9), REG_DWORD],
                # Enable UNC paths to be used on the command line
                '/DisableUNCCheck' => [ pack('L', 1), REG_DWORD],
            },
            'Ftp/' => {
                # Enable pasive FTP
                '/Use PASV' => 'yes',
            },
            'Internet Explorer/' => {
                'Main/' => {
                    # Reuse Internet Explorer windows when possible
                    '/AllowWindowReuse' => [ pack('L', 1), REG_DWORD ],
                    # Show images the size that they should be
                    '/Enable AutoImageResize' => 'no',
                    # Don't display errors on page dialog
                    '/Error Dlg Displayed On Every Error' => 'no',
                    # Don't display errors on page dialog window
                    '/Error Dlg Details Pane Open' => 'no',
                    # Render screen before drawing
                    '/Force Offscreen Composition' => [ pack('L', 1), REG_DWORD ],
                    # Don't remember passwords
                    '/FormSuggest Passwords' => 'no',
                    # Don't prompt to remember passwords
                    '/FormSuggest PW Ask' => 'no',
                    # Close downloads windows when complete
                    '/NotifyDownloadComplete' => 'no',
                    # Show Image placeholders
                    '/Show Image Placeholders' => [ pack('L', 1), REG_DWORD ],
                    # Don't ask to auto fill out forms
                    '/Use FormSuggest' => 'no',
                    # Don't use search assistant in Internet Explorer
                    '/Use Search Asst' => 'no',
                },
                'IntelliForms/' => {
                    # Don't ask to auto fill out forms
                    '/AskUser' => [ pack('L', 0), REG_DWORD ],
                },
            },
            'MediaPlayer/' => {
                'Preferences/' => {
                    # Don't prompt for Privacy Statement on Media Player
                    '/AcceptedPrivacyStatement' => [ pack('L', 1), REG_DWORD],
                },
            },
            'MessengerService/' => {
                # Don't prompt to create a passport
                '/PassportBalloon' => [ pack('L',0x0a), REG_BINARY ],
            },
            'Telnet/' => {
                # Enable smoother scrolling in telnet
                '/SmoothScroll' => [ pack('L', 1), REG_DWORD],
            },
            'Search Assistant/' => {
                # Use classic search for explorer
                '/SocialUI' => [ pack('L', 0), REG_DWORD],
                # Use advanced search dialog
                '/UseAdvancedSearchAlways' => [ pack('L', 1), REG_DWORD],
            },
            'Windows/' => {
                'CurrentVersion/' => {
                    'Applets/' => {
                        'Tour/' => {
                            # Make windows think we have already seen the tour of windows
                            '/RunCount' => [ pack('L', 0), REG_DWORD],
                        },
                    },
                    'Explorer/' => {
                        'Advanced/' => {
                            # Disable Thumbnail caching
                            '/DisableThumbnailCache' => [ pack('L', 1), REG_DWORD ],
                            # Display path names correctly
                            '/DontPrettyPath' => [ pack('L', 1), REG_DWORD ],
                            # Remove popup balloons from tray applications
                            #'/EnableBalloonTips' => [ pack('L', 0), REG_DWORD ],
                            # Show Hidden and System Files
                            '/Hidden' => [ pack('L', 1), REG_DWORD ],
                            # Prevent windows from crawling network looking for shares
                            '/NoNetCrawling' => [ pack ('L', 1), REG_DWORD],
                            # Restore folders on startup
                            '/PersistBrowsers' => [ pack('L', 1), REG_DWORD ],
                            # Launch explorer windows in separate processes
                            '/SeparateProcess' => [ pack('L', 1), REG_DWORD ],
                            # Hide really important files needed to boot
                            '/ShowSuperHidden' => [ pack('L', 0), REG_DWORD ],
                            # Use small icons on start menu
                            '/Start_LargeMFUIcons' => [ pack('L', 0), REG_DWORD ],
                            # Set number of frequently used programs to 11
                            '/Start_MinMFU' => [ pack('L', 11), REG_DWORD ],
                            # Don't notify or highlight new applications
                            '/Start_NotifyNewApps' => [ pack('L', 0), REG_DWORD ],
                            # Don't show My Music on Start Menu
                            '/Start_ShowMyMusic' => [ pack('L', 0), REG_DWORD ],
                            # Don't show My Pictures on Start Menu
                            '/Start_ShowMyPics' => [ pack('L', 0), REG_DWORD ],
                            # Show Connect To on Start Menu
                            '/Start_ShowNetConn' => [ pack('L', 2), REG_DWORD ],
                            # Show Network Places on Start Menu
                            '/Start_ShowNetPlaces' => [ pack('L', 1), REG_DWORD ],
                            # Show Administrative Tools on All Programs
                            '/StartMenuAdminTools' => [ pack('L', 1), REG_DWORD ],
                            # Set number of windows for clustering to 5
                            '/TaskbarGroupSize' => [ pack('L', 5), REG_DWORD ],
                            # Display contents of system folders
                            '/WebViewBarricade' => [ pack('L', 1), REG_DWORD ],
                        },
                        'AutoComplete/' => {
                            # Turn on auto completion of commands
                            '/Append Completion' => 'yes',
                            # Turn on auto suggestion for commands
                            '/AutoSuggest' => 'yes',
                        },
                        'CabinetState/' => {
                            # Show full path in title bar for explorer windows
                            '/FullPath' => [ pack('L', 1), REG_DWORD ],
                            #
                            '/Settings' => [ pack('LLL', 0x2000c, 0x77e7011b, 0x60), REG_BINARY ],
                            # Use classic search find files and computers
                            '/Use Search Asst' => 'no',
                        },
                        'Desktop/' => {
                            'CleanupWiz/' => {
                                # Don't run desktop cleanup wizard
                                '/NoRun' => [ pack('L', 1), REG_DWORD ],
                            },
                        },
                        'HideDesktopIcons/' => {
                            'NewStartPanel/' => {
                                # Display My Network Places on Desktop
                                '/{208D2C60-3AEA-1069-A2D7-08002B30309D}' => [ pack('L', 0), REG_DWORD ],
                                # Display My Computer on Desktop
                                '/{20D04FE0-3AEA-1069-A2D8-08002B30309D}' => [ pack('L', 0), REG_DWORD ],
                                # Display My Documents on Desktop
                                '/{450D8FBA-AD25-11D0-98A8-0800361B1103}' => [ pack('L', 0), REG_DWORD ],
                                # Display Internet Explorer on Desktop
                                '/{871C5380-42A0-1069-A2EA-08002B30309D}' => [ pack('L', 0), REG_DWORD ],
                            },
                        },
                        # Don't prefix shortcuts with "Shortcut to.."
                        '/Link' => [ pack('L', 0), REG_BINARY ],
                        'SmallIcons/' => {
                            # Show Small Icons in Internet Explorer
                            '/SmallIcons' => 'yes',
                        },
                    },
                    'Internet Settings/' => {
                        '5.0/' => {
                            'Cache/' => {
                                'Content/' => {
                                    # Only cache 100Mb of internet pages
                                    '/CacheLimit' => [ pack('L', 102400), REG_DWORD ],
                                },
                            },
                        },
                        'Cache/' => {
                            # Empty Temporary Internet Files when browser exits
                            '/Persistent' => [ pack('L', 0), REG_DWORD ],
                        },
                        # Don't cache Encrypted pages
                        '/DisableCachingOfSSLPages' => [ pack('L', 1), REG_DWORD ],
                        # Don't show privacy reminder
                        '/PrivDiscUiShown' => [ pack('L', 1), REG_DWORD ],
                        # Check for newer of page on every visit
                        '/SyncMode5' => [ pack('L', 3), REG_DWORD ],
                        # Don't warn when crossing from http to https
                        '/WarnOnZoneCrossing' => [ pack('L', 0), REG_DWORD ],
                        'Zones/' => {
                            '3/' => {
                                # Don't prompt on form submission
                                '/1601' => [ pack('L', 0), REG_DWORD ],
                            },
                        },
                    },
                    'Policies/Explorer/' => {
                        # Don't include machine name in shortcuts
                        '/LinkResolveIgnoreLinkInfo' => [ pack('L', 0), REG_DWORD ],
                        # Don't do an exaustive search if lnk is broken
                        '/NoResolveSearch' => [ pack('L', 1), REG_DWORD ],
                        # Don't create shared document area
                        '/NoSharedDocuments' => [ pack('L', 1), REG_DWORD ],
                    },
                    'UnreadMail/' => {
                        # Don't display count of unread mail
                        '/MessageExpiryDays' => [ pack('L', 0), REG_DWORD ],
                    },
                },
                'ShellNoRoam/' => {
                    'DUIBags/' => {
                        'ShellFolders/' => {
                            '{00021400-0000-0000-C000-000000000046}/' => {
                                # Expand Details panel for Desktop
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{208D2C60-3AEA-1069-A2D7-08002B30309D}/' => {
                                # Expand Details panel for Network Places
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{20D04FE0-3AEA-1069-A2D8-08002B30309D}/' => {
                                # Expand Details panel for My Computer
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{450D8FBA-AD25-11D0-98A8-0800361B1103}/' => {
                                # Expand Details panel for My Documents
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{7007ACC7-3202-11D1-AAD2-00805FC1270E}/' => {
                                # Expand Details panel for Network Connections
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{C0542A90-4BF0-11D1-83EE-00A0C90DC849}/' => {
                                # Expand Details panel for Other Computers
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{E88DCCE0-B7B3-11D1-A9F0-00AA0060FA31}/' => {
                                # Expand Details panel for Compressed Folder
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                            '{F3364BA0-65B9-11CE-A9BA-00AA004AE837}/' => {
                                # Expand Details panel for System Folder
                                '/ExpandDetailsTasks' => [ pack('L', 1), REG_DWORD ],
                            },
                        },
                    },
                },
            },
            'Windows NT/' => {
                'CurrentVersion/' => {
                    'srvWiz/' => {
		        # do not show Server Configuration Wizard at startup
                        '/' => [ pack('L', 0), REG_DWORD ],
                    },
                },
            },
        },
    } or die "Unable to set User/Software/Microsoft/ registry settings: $^E";

    # Remove all Post Boot Reminders
    foreach my $reminder ( keys( %{$reg_key->{'Software/Microsoft/Windows/CurrentVersion/Explorer/PostBootReminders/'}} ) ) {
        delete $reg_key->{'Software/Microsoft/Windows/CurrentVersion/Explorer/PostBootReminders/'.$reminder};
    }
    delete $reg_key->{'Software/Microsoft/Windows/CurrentVersion/Explorer/PostBootReminders/'};

    # Set Screen Saver to None
    delete $reg_key->{'Control Panel/Desktop//SCRNSAVE.EXE'};

    # Add ODBC panel to Control Panel
    delete $reg_key->{'Control Panel/don\'t load/odbccp32.cpl'};
}

# Setup keys for machine

$reg{'Classes'}->{'CLSID'} = {
    '{450D8FBA-AD25-11D0-98A8-0800361B1103}/' => {
        # Make My Computer the first icon
        '/SortOrderIndex' => [ pack('L', 84), REG_DWORD],
    },
} or die "Unable to set Classes/CLSID/ registry settings: $^E";

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
        'Command Processor/' => {
            # Change command completion char to TAB
            '/CompletionChar' => [ pack('L', 9), REG_DWORD],
            # Enable command line completion
            '/EnableExtensions' => [ pack('L', 1), REG_DWORD],
            # Change directory completion char to TAB
            '/PathCompletionChar' => [ pack('L', 9), REG_DWORD],
        },
        'Windows/' => {
            'CurrentVersion/' => {
                'Applets/' => {
                    'Tour/' => {
                        # Make windows think we have already seen the tour of windows
                        '/RunCount' => [ pack('L', 0), REG_DWORD ],
                    },
                },
                'Explorer/' => {
                    'Advanced/' => {
                        # Prevent windows from crawling network looking for shares
                        '/NoNetCrawling' => [ pack('L', 1), REG_DWORD ],
                    },
                    'AlwaysUnloadDLL/' => {
                        # Unload DLL's once all applications using them are done
                        '/' => "1",
                    },
                    # Show drive letters first on shares
                    '/ShowDriverLettersFirst' => [ pack('L', 1), REG_DWORD ],
                },
                'UnreadMail/' => {
                    # Don't display count of unread mail
                    '/MessageExpiryDays' => [ pack('L', 0), REG_DWORD ],
                },
            },
        },
        'Windows NT/' => {
            'CurrentVersion/' => {
                'WinLogon/' => {
                    # Disable Fast User Switching
                    '/AllowMultipleTSSessions' => [ pack('L', 0), REG_DWORD ],
                },
            },
        },
    },
    'Policies/' => {
        'Microsoft/' => {
            'Windows/' => {
                'Installer/' => {
                    # Enable administrators to install appliations over Terminal Services
                    '/EnableAdminTSRemote' => [ pack('L', 1), REG_DWORD ],
                },
            },
        },
    },
} or die "Unable to set LMachine/Software/ registry settings: $^E";

$reg{'LMachine'}->{'System/'} = {
    'CurrentControlSet/' => {
        'Control/' => {
            'ContentIndex/' => {
                # Find text in all files, not just known ones
                '/FilterFilesWithUnknownExtensions' => [ pack('L', 1), REG_DWORD ],
            },
            'FileSystem/' => {
                # Disable NTFS Last Access updates
                '/NtfsDisableLastAccessUpdate' => [ pack('L', 1), REG_DWORD ],
            },
            'Lsa/' => {
                # Disable simple filesharing
                '/ForceGuest' => [ pack('L', 0), REG_DWORD ],
            },
            'Print/' => {
                # Don't announce printers to other servers
                '/DisableServerThread' => [ pack('L', 1), REG_DWORD ],
            },
            'Tcpip/' => {
                # Disable dynamic DNS updates
                '/DisableDynamicUpdate' => [ pack('L', 1), REG_DWORD ],
                # Don't autoconfigure IP if DHCP not found
                '/IPAutoconfigurationEnabled' => [ pack('L', 0), REG_DWORD ],
            },
        },
    },
} or die "Unable to set LMachine/System/CurrentControlSet/ registry settings: $^E";

# Show icon in taskbar for network interfaces
# foreach my $networkadapter (keys( %{$reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'}} )) {
#     if ( defined $reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'.$networkadapter.'Connection/'} ) {
#         $reg{'LMachine/System/CurrentControlSet/Control/Network/{4D36E972-E325-11CE-BFC1-08002BE10318}/'.$networkadapter} = {
#             'Connection/' => {
#                 '/ShowIcon' => [ pack('L', 1), REG_DWORD],
#              },
#         };
#     }
# }

# Change CD-ROM letter to R: and update setup paths
# foreach my $mounts ( grep( /:$/, keys( %{$reg{'LMachine/System/MountedDevices/'}} ) ) ) {
#     if ( $reg{'LMachine/System/MountedDevices/'.$mounts} =~ /[Cc].[Dd].[Rr].[Oo].[Mm]/ ) {
#         my $oldcdrom = delete $reg{'LMachine/System/MountedDevices/'.$mounts};
#         $reg{'LMachine/System/MountedDevices//\\DosDevices\\R:'} = [ $oldcdrom, REG_BINARY ];
#         $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//Installation Sources'} = [ ['R:\\i386'], REG_MULTI_SZ ];
#         $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//ServicePackSourcePath'} = 'R:\\';
#         $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Setup//SourcePath'} = 'R:\\';
#         last;
#     }
# }

# Don't browse for Scheduled Tasks in Network Neighborhood
delete $reg{'LMachine/Software/Microsoft/Windows/CurrentVersion/Explorer/RemoteComputer/NameSpace/{D6277990-4C6A-11CF-8D87-00AA0060F5BF}/'};

exit 0;
