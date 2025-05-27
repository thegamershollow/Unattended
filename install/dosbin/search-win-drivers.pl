#! /usr/bin/env perl
#
# TODO - command-line option to search for a particular InfString (no hw scan).
# TODO - display which device match without their subsystem.
# TODO - cache: document in online help of this file.
# TODO - keep the driver model in cache in order to choose (un)matching drivers 
#        depending on OS to install: 2k/XP/2003, Vista/2008/7.
# TODO - extend -c option to '<bus>:<class>:<vendor>:<dev>' to exclude
#        (with usage like 'PCI::8086:' for excluding a particular vendor).
# TODO - option to exclude a particular device.
# TODO - scan SCSI bus devices (with lsscsi) ?
# TODO - what about virtual devices and/or virtual buses ?  example: VMware mouse pointer driver
# TODO - HDAUDIO bus: display the PCI device(s) that provide this kind of bus(es) ?
# TODO - Microsoft documentation also list alternate ways to write INF strings, like
#        'PCI\CC_...' or 'USB\SUBCLASS_...'. Do we need to support them, since it seems that 
#        no drivers are currenlty using these forms ?
# 
# Changelog:
#   20110505 - fix: HDaudio: use 'MFG Function Id' if 'AFG Function Id' or 'Function Id' is not available.
#   20110426 - fix: HDaudio parsing: not all values are hexa numbers. also fix hexa number parsing.
#   20110312 - fix on HDaudio: use 'AFG Function Id' as 'Function Id' replacement if exists.
#   20110312 - use /sys/bus/usb to detect USB support.
#   20110308 - fix: files /proc/asound/card<n1>/codec#<n2>: n1,n2 may have several digits.
#   20110120 - fix #52 USB error message
#   20091130 - comments revisited.
#   20091130 - default drivers path: use /z/drivers/ (instead of /z/site/win_drivers/).
#   20090925 - removed hardcoding of "FUNC_01" in HDAUDIO devices: computed instead.
#   20090811 - removed POD documentation, provides a basic online help.
#   20090810 - display which device(s) matchs a given driver.
#   20090810 - Windows/Activeperl can be use to to cache file generation.
#   20090808 - BUGFIX: Also use SubSystem information of a device. 
#              If not driver match, search again for this device but without the SubSystem part.
#   20090807 - Partial code rewrite; added get_infstr() to calculate InfString.
#   20090420 - Use cache file present at any sub-level of a given drivers collection.
#   20090417 - Support of multiple drivers root paths.
#   20090416 - Added cache file mechanism (to avoid parsing .INF files everytime)
#   20090416 - code rewrite for Windows drivers parsing .INF files (one step further to cache).
#              feel more quick: 30sec -> 50sec (HDAUDIO support) -> 20sec now
#   20090323 - Added USB devices support (via lsusb output).
#   20090323 - HDAUDIO support is working fine.
#   20090320 - Notice that unmatched devices may be indirectly supported by the 
#              choosed drivers for other devices.
#   20090317 - Added '-m' option to 'lspci -n' : supposed to be more portable.
#   20090309 - Initial HDAUDIO support (via CentOS4/CentOS5)
#   20090301 - test if folder of drivers exists.
#   20090301 - partial code rewrite: less "PCI" everywhere.
#   20090301 - moved Microsoft INF references to online help.
#   20080112 - case insensitive search on pattern PCI\\VEN (reported by Jye Meier)
#   20081006 - deal with .INF encoded in UTF-16le format
#   20081003 - initial (public) revision
#
# Coding rules:
#   - output convention: only matching folder(s) are displayed (without '#') 
#     for easy parsing  by install.pl script.
#     so use the out() function to print STDOUT comment(s).
#   - a given hardware device can match several Windows driver(s) (.INF files), 
#     a given .INF file can support several hardware device(s).
#   - the INF file parsing will stop on the first device that match, since the goal
#     of this script is to display all the matching Windows driver(s).
#
# Windows .INF files:
#
#   - Some drivers provides .INF encoded in UTF16le format.
#     This tool handles this encoding format. 
#     To read this kind of files from *unix system, tip is to use command:
#       $ strings --encoding l <inffile>
#
# HDAUDIO support: 
#
#   - we need to retrieve informations on HDaudio device(s), such as HDAUDIO vendor ID,
#     HDAUDIO {model,subsys} ID.
#     HDAUDIO bus is hanlded by a PCI device, and it can't easily be parsed ala "lspci".
#     So we can use the ALSA sound kernel modules to retrieve these informations 
#     or try to discover the HDAUDIO bus and devices by ourself...
#     ALSA usage is a little problematic: the sound card must be ALSA-supported in order to 
#     retrieve its HDAUDIO-identfiers, no ? For the moment, this is not yet a problem since we 
#     have only Intel based HDAUDIO devices.
#
#   - according to kernel-doc-2.6.18/Documentation/sound/alsa/Procfile.txt, 
#     HD-Audio Codec informations can be retrieved from files /proc/asound/card*/codec#*
#     and/or files /proc/asound/card*/codec97#*/*#*. 
#     These files have different structure format.
#     see file /usr/share/doc/kernel-doc-2.6.18/Documentation/sound/alsa/ALSA-Configuration.txt
#     see file /usr/share/doc/kernel-doc-2.6.18/Documentation/sound/alsa/hda_codec.txt
#              ("Notes on Universal Interface for Intel High Definition Audio Codec")
#
#   - tests with SigmaTel STAC9200 - DELL Latitude D520 / D530
#       $ head /proc/asound/card0/codec#0
#       Codec: SigmaTel STAC9200
#       Address: 0
#       Function Id: 0x1
#       Vendor Id: 0x83847690
#       Subsystem Id: 0x102801c2
#       Revision Id: 0x102201
#       <snip>
#
#       $ cat drivers/dell/audio-sigmatel-92xx/WDM/STHDA.inf:
#       <snip>
#       [Sigmatel]
#       %ST.DeviceDesc%=STHDA,HDAUDIO\FUNC_01&VEN_8384&DEV_7690&SUBSYS_102801B5
#       %ST.DeviceDesc%=STHDA,HDAUDIO\FUNC_01&VEN_8384&DEV_7690&SUBSYS_102801D8
#       %ST.DeviceDesc%=STHDA,HDAUDIO\FUNC_01&VEN_8384&DEV_7690&SUBSYS_102801C2
#       <snip>
#
#   - test on IBM x41s laptop with CentOS5:
#     please notice that AC97 audio devices are matched by their PCI devices, not via HDAUDIO bus.
#       $ lspci  |grep -i audio
#       00:1e.2 Multimedia audio controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) AC'97 Audio Controller (rev 03)
#
#       $ head /proc/asound/card0/codec97#0/ac97#0-0
#       0-0/0: Analog Devices AD1981B
#       PCI Subsys Vendor: 0x1014
#       PCI Subsys Device: 0x0581
#       
#       Capabilities     : -headphone out-
#       DAC resolution   : 20-bit
#       ADC resolution   : 16-bit
#       3D enhancement   : No 3D Stereo Enhancement
#
#   - ALSA also handle (win)modem: booted with CentOS5:
#
#       $ head /proc/asound/card1/codec97#0/mc97#1-1
#       1-1/0: Conexant id 23
#
#       Extended modem ID: codec=1 LIN1
#       Modem status     : PRA(GPIO) PRB(res) PRC(ADC1) PRD(DAC1) PRE(ADC2) PRF(DAC2) PRG(HADC) PRH(HDAC)
#       Line1 rate       : 8000Hz
#
#   - DELL precision M4300 laptop (Unattended booted):
#     this hardware has both a HDaudio sound card and a HDaudio modem: see Function Id.
#
#       $ lspci |grep -i audio
#       01:1b.0 Audio device: Intel Corporation 82801H (ICH8 Family) HD Audio Controller (rev 02)
#
#       $ head /proc/asound/card0/codec#0
#       Codec: Sigmatel STAC9205
#       Address: 0
#       Function Id: 0x1
#       Vendor Id: 0x838476a0
#       Subsystem Id: 0x102801ff
#       Revision Id: 0x100204
#       No Modem Function Group found
#       Default PCM:
#           rates [0x7e0]: 44100 48000 88200 96000 176400 192000
#           bits [0xe]: 16 20 24
#
#       $ head /proc/asound/card0/codec#1
#       Codec: Conextant ID 2c06
#       Address: 1
#       MFG Function Id: 0x2 (unsol 1)
#       Vendor Id: 0x14f12c06
#       Subsystem Id: 0x14f1000f
#       Revision Id: 0x100000
#       Modem Function Group: 0x2
#
#       Matching drivers: DriverPacks/S/z1 and dell/modem-conextant-d330-dell-m4300-R167368
#
#       $ strings --encoding l DriverPacks/S/z1/STHDA.INF
#       <snip>
#       %ST.DeviceDesc%=STHDA,HDAUDIO\FUNC_01&VEN_8384&DEV_76A0&SUBSYS_102801FF
#       <snip>
#
#       $ cat dell/modem-conextant-d330-dell-m4300-R167368/del000f5.inf
#       <snip>
#       [HSF_MODEM]
#       %HSFModem%  = ModemX, HDAUDIO\FUNC_02&VEN_14F1&DEV_2C06&SUBSYS_14F1000F
#       <snip>
#
# USB support:
#
#   - more and more devices are now plugged "behind" the USB bus on laptops,
#     like fingerprint reader or bluetooth bus.
#
#   - bluetooth: Under Windows, usually installed as an application since it requires 
#     installation of a bluetooth stack. 
#     So even if we could provides bluetooth support, Windows drivers do not 
#     reference any blootooth device in .INF files.
#
#   - output on DELL Latitude E4300:
#     $ lsusb
# [1] Bus 008 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
#     Bus 007 Device 004: ID 0c45:63fe Microdia
# [1] Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
# [1] Bus 006 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
# [1] Bus 005 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
#     Bus 004 Device 002: ID 046d:c016 Logitech Inc. M-UV69a/HP M-UV96 Optical Wheel Mouse
# [1] Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
#     Bus 003 Device 002: ID 0a5c:5800 Broadcom Corp.
# [1] Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
# [1] Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
#     Bus 001 Device 004: ID 413c:8162 DELL Computer Corp.
#     Bus 001 Device 003: ID 413c:8161 DELL Computer Corp.
#     Bus 001 Device 002: ID 0a5c:4500 Broadcom Corp.
# [1] Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
#
#     [1] : These entries are discarted since they are internal to Linux kernel
#           (to describe USB topology like root and hubs): no Windows .INF file 
#           will ever describe this Vendor and Product Identifiers.


use warnings;
use strict;
use Getopt::Long;
use File::Spec;

# Cache file: Unix format (on stdout), even generated from a Windows system.
#   ref: http://www.xav.com/perl/faq/Windows/ActivePerl-Winfaq8.html#Reading_from_and_writing_to_file
binmode(STDOUT);

################################################################################
## usage()
################################################################################
sub usage() {

  print  "Find which Windows driver(s) may match the platform's hardware devices.\n"
        . "(PCI, HDAUDIO or USB devices)\n"
        . "\n"
        . "Usage: search-win-drivers.pl [-h] [-g] [-t] [-c <cid>] [-d <dir>] ...\n"
        . "\n"
        . "  -h ................ this help\n"
        . "  -c <cid> .......... Exclude device of Class ID <cid> from search.\n"
        . "  -d <dir> .......... Windows driver collection path to use.\n"
        . "  -g ................ generate cache file for <path> (to STDOUT)\n"
        . "  -t ................ test mode: no hardware scanning performed\n"
        . "\n"
        . "Default driver collection path: /z/drivers\n"
        ;

  exit(1);
} #usage()

################################################################################
## out()
################################################################################
sub out($) {

    my ($m) = @_;
    print "# $m\n";
} # out()


################################################################################
## display_hash()
################################################################################
sub display_hash {
    my %h = @_;
    for my $i (keys %h) {
        out("  $i => $h{$i}");
    }
} # display_hash()

################################################################################
## get_infstr()
################################################################################
sub get_infstr($) {
    my ($d) = @_;
    my $str = "";

    if ( $d->{'bustype'} eq "PCI" ) {
        $str = sprintf("PCI\\VEN_%s&DEV_%s", $d->{'vendor'}, $d->{'device'});
        if ( $d->{'svendor'} ne "" ) {
            $str .= sprintf("&SUBSYS_%s%s", $d->{'svendor'}, $d->{'sdevice'}) ;
        }
    }

    elsif ( $d->{'bustype'} eq "HDAUDIO" ) {
        $str = sprintf("HDAUDIO\\FUNC_%s&VEN_%s&DEV_%s", $d->{'hdfunc'}, $d->{'vendor'}, $d->{'device'});
        if ( $d->{'svendor'} ne "" ) {
            $str .= sprintf("&SUBSYS_%s%s", $d->{'svendor'}, $d->{'sdevice'}) ;
        }
    }

    elsif ( $d->{'bustype'} eq "USB" ) {
        $str = sprintf("USB\\VID_%s&PID_%s", $d->{'vendor'}, $d->{'device'});
    }

    else {
        out(sprintf("ERROR: unknown bus type '%s'", $d->{"bustype"}));
        exit(1);
    }

    return $str;
} # get_infstr()

################################################################################
## display_device()
################################################################################
sub display_device($) {
    my ($d) = @_;
    out(sprintf("- desc=%s", $d->{'desc'}));
    out(sprintf("  bustype=%s busid=%s vendor=%s device=%s class=%s subsys=%s%s"
                , $d->{'bustype'}
                , $d->{'busid'}
                , $d->{'vendor'}
                , $d->{'device'}
                , $d->{'class'}
                , $d->{'svendor'}
                , $d->{'sdevice'}
               ));
    out(sprintf("  infstr=%s", $d->{'infstr'}));
} # display_device()

################################################################################
## display_devices()
################################################################################
sub display_devices($) {
    my (@t) = @_;
    foreach my $d (@t) {
        display_device($d);
    }
} # display_devices()

################################################################################
## load_cachedatas()
##   Load datas from cache file $1 and store them into 
##   structure $2 that is a reference to an array of strings.
##   Currently, its format is "<inf_string>@@<absolute_folder_path>"
##   Return 1 if an error occured.
##   usage: load_cachedatas("/full/path/cache_file", \@datas)
################################################################################
sub load_cachedatas($$) {
  my ($fc, $infdatas_ref) = @_;
  my $nb_inf_orig = scalar(@$infdatas_ref) ; 
  my $cache_version_mandatory = 1 ;    ## valid cache file version
  my $cache_version = 0 ;              ## current cache file version

  my ($vol,$absrootpath,$fname) = File::Spec->splitpath($fc) ;

  out("- load cache file '$fc' ...") ;
  open FILE, $fc or ( out("ERROR: Unable to open cache file '$fc': $^E") && return 1) ;
  while ( my $line = <FILE> ) {
    chomp $line ;
    next if ( $line =~ /^([;\#])/ );  # skip comments
    # check cache version; we suppose this is the first usable line
    my ( $str, $p ) = split(/@@/, $line);
    if ( $str eq "__cache_version__" ) {
      $cache_version = $p ;
    }
    if ( $cache_version ne $cache_version_mandatory ) {
      out("ERROR: Invalid cache version '$cache_version': expected '$cache_version_mandatory'");
      return 1;
    }
    # convert to absolute path and store datas
    # splipath() return with path separator included
    push @$infdatas_ref, "$str" . "@@" . "$absrootpath$p" ;
  }
  close FILE;
  out("- added " . ( scalar(@$infdatas_ref) - $nb_inf_orig ) . " INF strings");
  return 0;
} # load_cachedatas()

################################################################################
## parse_infiles()
##   Retrieve all INF strings from .INF files below folder $1 (parsing INF files). 
##   Datas are stored in $2, that is a reference to an array of strings.
##   Currently, its format is "<inf_string>@@<absolute_folder_path>"
##   $3 is a switch to enable(1)/disable(0) the use of cache file (if present) 
##   in any sub-folder of $1.
##   Return 1 if an error occured.
##   usage: parse_infiles("folder", \@datas,0|1)
################################################################################
sub parse_infiles($$) {
    my ($folder, $infdatas_ref, $use_cache) = @_;
    my $infnb = 0 ; # number of readed .INF files
    my $infdatas_nb_orig = scalar(@$infdatas_ref) ; 
    my @foldertocheck = ( File::Spec->rel2abs($folder));

    out("Parse .INF files below folder $folder ...");
    out("(no use of cache file)") if ( $use_cache ne 1);
    while ( defined(my $d = pop(@foldertocheck))) {
      opendir DIR, $d 
         or ( out("ERROR: unable to open folder '$folder': $^E") && return 1) ;
      my @delt = readdir DIR;
      closedir DIR;

      if ($use_cache) {
        my $fc = File::Spec->catfile("$d","search-win-drivers.cache");
        if ( -f $fc ) {
          # Cache file exist in folder $d: let's use it
          my $nb_before = scalar(@$infdatas_ref) ;
          # FIXME no check of return code ?
          load_cachedatas($fc,$infdatas_ref);
          $infdatas_nb_orig += scalar(@$infdatas_ref) - $nb_before ;  ## do not count twice INF string
          next ; # used cache, work on next folder
        }
      }

      ## no cache file or cache file usage disabled: let's parse .INF files
      foreach my $entry (@delt) {
        next if $entry eq '.'  ;
        next if $entry eq '..' ;
        my $f = File::Spec->catfile("$d","$entry");
        if ( -d $f ) {
          push @foldertocheck, $f;
          next ;
        }
        next if $f !~ /\.inf$/i ;

        ## If here, then $f is an .INF file: parse its content
        ## perl read file as UTF-8 by default.
        ## if file is encoded as UFT-16le, have to force to use this encoding

        open FILE, $f 
           or ( out("ERROR: Unable to open file '$f': $^E") && return 1) ;
        ( sysread(FILE,my $s2,2) eq 2 ) 
           or ( out("Unable read 2 bytes from '$f': $^E") && return 1) ;
        if ( $s2 eq chr(0xff) . chr(0xfe)) {
          close FILE;
          open(FILE,"<:encoding(UTF-16LE)", $f) 
             or ( out("Unable to open file '$f' as UTF-16LE: $^E") && return 1) ;
        }
        else {
          sysseek(FILE,0,0);  # rewind to start of file
        }

        $infnb++ ;
        my %infstrings = () ; # unique INFstring of the current .INF file directory.
        
        ## read .INF file line by line: find INFstrings and keep unique ones.
        while ( my $line = <FILE> ) {
          chomp $line;
          next if ( $line =~ /^([;\#])/ );  # skip comment
          if ( $line =~ /^.*((PCI|HDAUDIO|USB)\\([a-z]+_[\da-f]+&)+[a-z]+_[\da-f]+).*/i ) {
            $infstrings{$1} = 1 ;
          }
        }
        close FILE;
        # keep datas related to this parsed .INF file: unique inf strings
        foreach my $e (keys %infstrings) {
          push @$infdatas_ref, "$e" . "@@" . "$d" ;
        }
      } # foreach
    } # while
    out("- parsed $infnb .INF files, added " . ( scalar(@$infdatas_ref) - $infdatas_nb_orig ) . " INF strings. (no cache)");
    return 0;
} # parse_infiles()


################################################################################
## parse_hardware()
##   Parse hardware devices and return an array of devices.
##   If mode $1 is "test", then no real hardware scanning is performed, 
##   use selftest devices (and check them against INF files).
################################################################################
sub parse_hardware($$) {

    my ($mode) = @_;
    my @dev = ();
  
    ##
    ## SELFTEST mode
    ## 
  
    if ( $mode eq "test" ) {
        out("TEST MODE: NO hardware scanning: manually defining hardware devices");
    
        push @dev, { "bustype" => "PCI"
                   , "busid"   => "SELFTEST"
                   , "vendor"  => "10DE"
                   , "device"  => "00F1"
                   , "class"   => "0300"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "PCI\\VEN_10DE&DEV_00F1"
                   , "desc"    => "NVIDIA Device ID 0x00F1"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match DriverPacks-20080530/D/G/N1/nv4_go.inf");

        push @dev, { "bustype" => "PCI"
                   , "busid"   => "SELFTEST"
                   , "vendor"  => "14e4"
                   , "device"  => "1677"
                   , "class"   => "0200"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "PCI\\VEN_14e4&DEV_1677"
                   , "desc"    => "Broadcom Corp... NetXtreme BCM5751 Gigabit Ethernet PCI Express (rev 01)"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match DriverPacks-20080530/D/L/B1/b57win32.inf");
        
        push @dev, { "bustype" => "PCI"
                   , "busid"   => "SELFTEST"
                   , "vendor"  => "14e4"
                   , "device"  => "1677"
                   , "class"   => "0200"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "PCI\\VEN_14e4&DEV_1677"
                   , "desc"    => "Broadcom Corp... NetXtreme BCM5751 Gigabit Ethernet PCI Express (rev 01)"
                   };
	out("SELFTEST: add 2nd $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match DriverPacks-20080530/D/L/B1/b57win32.inf");
	
        push @dev, { "bustype" => "PCI"
                   , "busid"   => "SELFTEST-UTF16le_infFILE"
                   , "vendor"  => "1148"
                   , "device"  => "4320"
                   , "class"   => "n/a"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "PCI\\VEN_1148&DEV_4320"
                   , "desc"    => "Allied Telesis AT-2916T"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match DriverPacks-20080530/D/L/M/yk50x86.inf (UTF-16le encoding)");
    
        push @dev, { "bustype" => "PCI"
                   , "busid"   => "SELFTEST-non-HDAUDIO_infFILE"
                   , "vendor"  => "1014"
                   , "device"  => "0581"
                   , "class"   => "n/a"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "PCI\\VEN_1014&DEV_0581"
                   , "desc"    => "Analog Devices AD1981B"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match drivers/__FIXME__/_FIXME_.inf (audio non-HAUDIO)");
    
        push @dev, { "bustype" => "HDAUDIO"
                   , "busid"   => "SELFTEST-HDAUDIO_infFILE"
                   , "vendor"  => "8384"
                   , "device"  => "7690"
                   , "class"   => "n/a"
                   , "svendor" => ""
                   , "sdevice" => ""
                   , "infstr"  => "HDAUDIO\\FUNC_01&VEN_8384&DEV_7690&SUBSYS_102801C2"
                   , "desc"    => "SigmaTel STAC9200"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match dell/audio-sigmatel-92xx/WDM/STHDA.inf");
    
        push @dev, { "bustype" => "HDAUDIO"
                   , "busid"   => "SELFTEST-HDAUDIO_infFILE"
                   , "vendor"  => "111D"
                   , "device"  => "76B2"
                   , "class"   => "n/a"
                   , "svendor" => "1028"
                   , "sdevice" => "0250"
                   , "infstr"  => "HDAUDIO\\FUNC_01&VEN_111D&DEV_76B2&SUBSYS_10280250"
                   , "desc"    => "IDT 92HD71B7X from Intel Corporation 82801I (ICH9 Family) HD Audio Controller (rev 03)"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match DELL/IDT_92HDXXX-HD-AUDIO_A05_R206244.EXE/WDM/STWRT.inf");

        push @dev, { "bustype" => "HDAUDIO"
                   , "busid"   => "SELFTEST-HDAUDIO_infFILE"
                   , "vendor"  => "14f1"
                   , "device"  => "2c06"
                   , "class"   => "n/a"
                   , "hdfunc"  => "0x2"
                   , "svendor" => "14f1"
                   , "sdevice" => "000f"
                   , "infstr"  => "HDAUDIO\\FUNC_02&VEN_14f1&DEV_2c06&SUBSYS_14f1000f"
                   , "desc"    => "Conextant ID 2c06"
                   };
	out("SELFTEST: add $dev[$#dev]->{'bustype'} device '$dev[$#dev]->{'desc'}'");
	out("          that (only) match dell/modem-conextant-d330-dell-m4300-R167368/del000f5.inf");
    
        return @dev;
    }
  
    ##
    ## PCI devices: parse lspci output
    ## 
  
    out("- Check PCI devices (via lspci output command)...");
    ( -x "/sbin/lspci" ) or die "/sbin/lspci is missing";
    my $lspci_n_out = `/sbin/lspci -n -m`;
    my $lspci_out   = `/sbin/lspci`;
  
    foreach my $l (split /\n/, $lspci_n_out) {
        chomp $l;
  
        ## retrieve BusID, PCI_CLASS, PCI_VENDOR, PCI_DEVICE, SUBSYS_DEVICE, SUBSYS_VENDOR
        ## generate the corresponding string for search in .INF file(s)
        ## retrieve the human device description
	##
	## lspci(8) 3.0.0 output format:
	##   Some of the arguments are positional: 
	##   slot, class, vendor, name, device name, subsystem vendor name, subsystem name
	##   (the last two are empty if the device has no subsystem); 
	##   the remaining arguments are option-like: 
	##      -r<n> revision number <n>
	##      -p<m> programming interface <m>
	##   The relative order of positional arguments and options is undefined.
	##
	## lspci output examples:
	##
	## - centos4/i386> rpm -q pciutils
	##   pciutils-2.1.99.test8-3.4
	##   centos4/i386> lspci -n -m
	##   00:00.0 "Class 0600" "8086" "2580" -r04 "103c" "3005"
	##   00:1c.1 "Class 0604" "8086" "2662" -r03 "" ""
	##   00:1d.0 "Class 0c03" "8086" "2658" -r03 "103c" "3005"
	##   00:1d.2 "Class 0c03" "8086" "265a" -r03 "103c" "3005"
	##   00:1f.1 "Class 0101" "8086" "266f" -r03 -p8a "103c" "3005"
	##   00:1f.3 "Class 0c05" "8086" "266a" -r03 "" ""
	##   01:00.0 "Class 0300" "1002" "7187" "1028" "0402"
	##   40:00.0 "Class 0200" "14e4" "1677" -r01 "103c" "3005"
	##
	## - debian5/i386> dpkg -l pciutils
	##   pciutils 1:3.0.0-6
	##   debian5/i386> lspci -n -m
	##   00:00.0 "0600" "8086" "7190" -r01 "15ad" "1976"
	##   00:01.0 "0604" "8086" "7191" -r01 "" ""
	##   00:07.0 "0601" "8086" "7110" -r08 "15ad" "1976"
	##   00:07.1 "0101" "8086" "7111" -r01 -p8a "15ad" "1976"
	##   00:07.3 "0680" "8086" "7113" -r08 "15ad" "1976"
	##   00:0f.0 "0300" "15ad" "0405" "15ad" "0405"
	##   00:10.0 "0100" "1000" "0030" -r01 "" ""
	##   00:11.0 "0200" "1022" "2000" -r10 "1022" "2000"
	
	## WARNING: old lspci version output "Class" prepend to classid.
	$l =~ s/Class //i;
	
	## FIXME I wish I use map() function instead
	my @dt = () ;
	foreach my $e (split(/ +/, $l)) {
		$e =~ s/"//g;
		next if $e =~ /^-/ ;  # do not care of options
		push @dt, $e;
	}
	my %h = ();
	$h{'bustype'} = "PCI";
	$h{'busid'}   = $dt[0];
	$h{'class'}   = $dt[1];
	$h{'vendor'}  = $dt[2];
	$h{'device'}  = $dt[3];
	$h{'sdevice'} = $dt[4];
	$h{'svendor'} = $dt[5];
	$h{'infstr'}  = &get_infstr(\%h) ;

        $lspci_out =~ /^$h{'busid'} .+: (.+)/mi;
        $h{'desc'} = $1;

	push @dev,\%h ; 
    }
    out(sprintf("  found %d PCI device(s) on current hardware platform.", scalar @dev));
  
  
    ## 
    ## HDAUDIO devices
    ##   based on ALSA framework: check content of file(s) /proc/asound/card<num>/codec#<num>
    ##
  
    out("- Check HDAUDIO devices...");
    if ( not opendir DIR, "/proc/asound" ) {
        out("  no HDAUDIO support: no ALSA support from kernel or no HDAUDIO devices");
    }
    else {
        ## look for files that match /proc/asound/card<num>/codec#<num>
        my @acodec = ();
        my @acard = map { $_ = "/proc/asound/$_" } grep { /^card\d+$/ && -d "/proc/asound/$_" } readdir DIR ;
        closedir DIR;
        if ( scalar(@acard) eq 0 ) {
            out("  no sound card detected (/proc/asound/card<num>/): HDAUDIO devices search disabled.");
        }
        foreach my $card (@acard) {
            opendir DIR, $card;
            push @acodec, map { $_ = "$card/$_" } grep { /^codec#\d+$/ && -f "$card/$_" } readdir DIR ;
            closedir DIR;
        }
        out(sprintf("  found %d HDaudio codec (on %d sound card).", scalar(@acodec), scalar(@acard)));
        foreach my $c (@acodec) {
            my %r_ = () ;
            open FILE, $c;
            while ( my $l = <FILE> ) {
                chomp $l;
		# about values: are different depending on search field.
		# 'Codec' is a string, 'Address' an int,
		# we may have 'AFG Function Id: 0x1 (unsol 0)'
                $l =~ /^(Function Id|AFG Function Id|MFG Function Id|Vendor Id|Subsystem Id): (0x[0-9A-Fa-f]+).*/ ;
                $l =~ /^(Codec|Address): (.+)/ if not defined($1);
                next if not defined($1);
                $r_{$1} = $2 ; 
            }
            close FILE;

            my %h = ( 'bustype' => "HDAUDIO"
                    , 'busid'   => $r_{'Address'}
                    , 'class'   => ""
                    , 'vendor'  => sprintf("%04x", hex($r_{'Vendor Id'}) >> 16 )
                    , 'device'  => sprintf("%04x", hex($r_{'Vendor Id'}) &  0x0000ffff )
                    , 'svendor' => sprintf("%04x", hex($r_{'Subsystem Id'}) >> 16 )
                    , 'sdevice' => sprintf("%04x", hex($r_{'Subsystem Id'}) &  0x0000ffff )
                    , 'desc'    => $r_{'Codec'}
                  );

            # 'hdfunc' is specific to HDaudio device(s)
            $h{'hdfunc'} = "00";
            if ( defined $r_{'Function Id'} ) {
                $h{'hdfunc'} = sprintf("%02x", hex($r_{'Function Id'}));
            }
            elsif ( defined $r_{'AFG Function Id'} ) {
                $h{'hdfunc'} = sprintf("%02x", hex($r_{'AFG Function Id'}));
            }
            elsif ( defined $r_{'MFG Function Id'} ) {
                $h{'hdfunc'} = sprintf("%02x", hex($r_{'MFG Function Id'}));
            }
            $h{'infstr'}  = &get_infstr(\%h) ;
            push @dev, \%h ;
        }
    }

    ##
    ## USB devices - parse lsusb output
    ## - discard "Linux Foundation 2.0/1.1 root hub" (id=1d6b): useless info in Windows .INF files ...
    ## - FIXME discard redundant entries ? 
    ##   Not really usefull here, this is performed with all hw devices before starting search in INF files.
    ## - USB device 0000:0000: appears with old kernel like rhel[45]: seems to be the same as Linux Foundation stuff.
    ##

    out("- Check USB devices...");
    if ( not -d "/sys/bus/usb" ) {
        out("  no USB support: /sys/bus/usb/ is absent");
    }
    elsif ( not -x "/sbin/lsusb" ) {
        out("  no USB support: /sbin/lsusb is missing.");
    }
    else {
        my $lsusb_out = `/sbin/lsusb`;
        my $dev_nousb = scalar @dev;    # without USB device(s)
	foreach my $l (split /\n/, $lsusb_out) {
            chomp $l;
	    my %h = ();
            $l =~ /^Bus ([\da-f]+) Device ([\da-f]+): ID ([\da-f]+):([\da-f]+) (.*)/i;
            $h{'bustype'} = "USB";
            $h{'busid'}   = "$1:$2";
            $h{'class'}   = "n/a" ;
            $h{'vendor'}  = $3 ;
            $h{'device'}  = $4 ;
            $h{'svendor'} = "";
            $h{'sdevice'} = "";
            $h{'desc'}    = $5 ;
            $h{'infstr'}  = &get_infstr(\%h) ;

            ## discard 'Linux Foundation' stuff.
            ($h{'vendor'} eq "1d6b") or push @dev,\%h ; 

        }
        out(sprintf("  found %d USB usable devices on current hardware platform.", scalar(@dev) - $dev_nousb));
    }

    return @dev;
  
} # parse_hardware()

################################################################################
## main loop
################################################################################

# parse command-line args.
our %opts ;
my $mode = "";
%opts = (   "d" => []
          , "e" => ""
        );

my @opt_excludes_tmp = ();
GetOptions (\%opts, 'help|h|?', 'd=s@', 't', 'g', 'c=s' => \@opt_excludes_tmp )
    or usage();

(exists $opts{'help'})
    and usage();

(exists $opts{'t'}) and $mode = "test";

##
## check paths of Windows drivers collection:
##
## FIXME dedicated subroutine
## - default value (if empty)
## - use absolute paths
## - remove duplicate entries
## - checks they do not overlap

out("Check root paths of Windows drivers...");
if ( scalar(@{$opts{'d'}}) eq 0 ) {
  out("- use default path list");
  $opts{'d'} = [ '/z/drivers' ] ;
}
# keep unique list and check existence of paths
my %uniqpaths = ();
foreach my $p (@{$opts{'d'}}) {
  if ( ! -d $p ) {
    out("  ERROR: path '$p' does not exist: removed from list");
    next ;
  }
  ## FIXME canonpath() does not handle correctly '/tmp/bar/../foo': should be '/tmp/foo'
  $uniqpaths{File::Spec->canonpath(File::Spec->rel2abs($p))} = 1 ;
}
# check overlaping
foreach my $p (keys %uniqpaths) {
  my %temppath = %uniqpaths ;
  foreach my $t (keys %temppath) {
    next if ( $p eq $t );
    if ( $t =~ /^$p/ ) {
       out("  ERROR: '$t' overlap '$p' : remove '$t' from list");
       delete $uniqpaths{$t} ;
    }
  }
}
# keep these good datas
$opts{'d'} = [];
foreach my $p ( keys %uniqpaths ) {
  push @{$opts{'d'}}, $p ;
}
if ( scalar(@{$opts{'d'}}) eq 0 ) {
  out("ERROR: no Windows driver path to use: existing.");
  exit 1;
}
out("Windows drivers collections to use: @{$opts{'d'}}");

##
## generate cache file (if requested)
##

if (exists $opts{'g'}) {
  my $cache_version = 1 ;
  my $host_name = `hostname` ;
  chomp $host_name;

  foreach my $rootpath (@{$opts{'d'}}) {
    out("");
    out("Generated cache file of INF strings from Windows drivers - DO NOT EDIT");
    out("host $host_name  --  " . localtime());
    out("");
    out("** THIS OUTPUT should be saved into file:");
    out("** $rootpath/search-win-drivers.cache");
    out("");

    # display some stats
    my @infstrfiles = () ;
    &parse_infiles($rootpath,\@infstrfiles,0) && exit 1;

    out("");
    print "__cache_version__" . "@@" . "$cache_version\n";

    my $absrootpath = File::Spec->rel2abs($rootpath) ;
    foreach my $l (@infstrfiles) {
      # cache file: stored relative paths
      my ($data,$p) = split(/@@/, $l);
      $p = File::Spec->abs2rel($p, $absrootpath);

      # Paths have to be written with Unix filepath separator
      $p = File::Spec::Unix->catfile(File::Spec->splitdir($p));

      print "$data" . "@@" . "$p\n";
    }
    out("");
    out("** THIS OUTPUT should be saved into file:");
    out("** $rootpath/search-win-drivers.cache");
    out("");
  }
  if ( scalar(@{$opts{'d'}}) gt 1) {
    out("");
    out(" ***** WARNING * WARNING * WARNING * WARNING *********");
    out(" ** Cache generation has been performed on several  **");
    out(" ** root paths : do not forget to SPLIT this output **");
    out(" ** to the dedicated cache files (see above)        **");
    out(" *****************************************************");
  }
  exit 0 ;
}

## exclusions: check hexa on 4 digits and store them in hash
my %opt_excludes = ();
foreach my $e (@opt_excludes_tmp) {
  if ( $e !~ /[\da-f]{4}/i ) {
      die "Excluded classID '$e' is not a 4 digit hexadecimal number";
  }
  $opt_excludes{"$e"} = 1;
}
undef @opt_excludes_tmp;

## retrieve devices list from hardware scan
my @devices = &parse_hardware($mode);

## Walk on devices:
## - perform exclusions based on classID
## - keep only unique device(s) based on their InfString
out("Hardware device list:");
my @dev_checked = ();
my %infstrlist = ();
foreach my $d (@devices) {
    display_device($d);
    if (exists $opt_excludes{$d->{'class'}}) {
        out("  ==> device EXCLUDED from search because of its classID.");
    }
    elsif (exists $infstrlist{ $d->{'infstr'}}) {
        out("  ==> device EXCLUDED from search because another one has the same InfString.");
    }
    else {
        push @dev_checked, $d ;
        $infstrlist{ $d->{'infstr'}} = 0;
    }
}
@devices = @dev_checked;
undef @dev_checked;
undef %infstrlist;

out(sprintf("%d distinct hardware devices to consider.", scalar @devices));

## Load listing of "available" infstrings from drivers in folders
## Note: paths are RELATIVE TO repository root folder in 
##       @infstrfiles array of strings.

my @infstrfiles = () ;
out("");
foreach my $folder (@{$opts{'d'}}) {
  out("loading INF strings from Windows drivers collection...");
  out("- path: $folder");
  ## FIXME cache usage is always enabled here
  my $r = &parse_infiles($folder, \@infstrfiles,1) ; 
  exit $r if ( $r ne 0) ;
}

## Core loop: Walk on each devices to check
##   - Search for matching with INF strings from drivers
##   - infmatchdirlist : hash of driver folders that match any of platform devices
##   - dev_nomatch: array of platform devices that did not match any driver

out("");
out("Search matching drivers for current hardware platform...");
my %infmatchdirlist = () ;
my @dev_nomatch = () ;

foreach my $d (@devices) {

    ( my $token = $d->{'infstr'} ) =~ s/\\/\\\\/g ;

    ## Walk on all INF strings of drivers to the current device.
    ## Each matching driver folder is stored only once (hash infmatchdirlist)
    my $match = 0 ;
    foreach my $line (@infstrfiles) {
        if ( $line =~ /^$token/i ) {
            $match = 1 ;
            my ( $str, $fold ) = split(/@@/, $line);
            # store matching InfString for display
            if ( ! exists $infmatchdirlist{$fold}) {
              %{$infmatchdirlist{$fold}} = ();
            }
            $infmatchdirlist{$fold}{$d->{'infstr'}} = 1 ;
        }
    }

    # this device matched at least once, check next one.
    next if ( $match eq 1 );

    ## current device does not match: check if it matchs
    ## without its subsystem infortmation.
    ## FIXME do we should provide a way to disable it ?

    # same device without subsystem information
    my %dnsubsys = %{$d} ;
    $dnsubsys{'svendor'} = "" ;
    $dnsubsys{'infstr'} = get_infstr(\%dnsubsys);

    # shortcut: if current device has already no subsystem 
    # information, it's useless to find a match a second time
    # (especially if no cache file are available)
    if ( $dnsubsys{'infstr'} eq $d->{'infstr'} ) {
        push @dev_nomatch, $d;
        next;
    }

    # have to check if this 'short' version match
    ( $token = $dnsubsys{'infstr'} ) =~ s/\\/\\\\/g ;

    # Walk on all INF strings of drivers for 'short' version
    # as usual, keep all match
    foreach my $line (@infstrfiles) {
        if ( $line =~ /^$token/i ) {
            $match = 1;
            my ( $str, $fold ) = split(/@@/, $line);
            # store matching InfString for display
            if ( ! exists $infmatchdirlist{$fold}) {
              %{$infmatchdirlist{$fold}} = ();
            }
            $infmatchdirlist{$fold}{$dnsubsys{'infstr'}} = 1 ;
        }
    }

    # this device has still no match: register this.
    push @dev_nomatch, $d if ( $match eq 0);
}

## output list of driver folders that match
out(sprintf("%d driver folders to use:", scalar keys %infmatchdirlist));
for my $e ( sort keys %infmatchdirlist) {
  print "$e\n";
}

## detail on matching file/device
out("");
for my $e ( sort keys %infmatchdirlist) {
  out("- folder: $e");
  foreach my $i (keys %{$infmatchdirlist{$e}} ) {
    out("  match : $i");
  }
}

## list unamatched devices
out("");
out(sprintf("Unmatched devices: %d devices", scalar (@dev_nomatch)));
if ( scalar (scalar @dev_nomatch) > 0 ) {
    out("- They do not match even without their SubSystem part");
    out("- they might be handled directly by Windows or indirectly by the matching drivers.");
}
for my $d (@dev_nomatch) {
  out("unmatch: $d->{'infstr'} (desc: '$d->{'desc'}')");
}

exit 0;
