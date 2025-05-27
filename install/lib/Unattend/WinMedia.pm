# Object which contains knowledge about Windows installation media.

package Unattend::WinMedia;

use warnings;
use strict;
use Unattend::IniFile;
use File::Spec::Win32;
use File::Spec::Unix;
use fields qw (txtsetup setupp prodspec path);

# File::Spec is supposed to auto-detect the OS and adapt
# appropriately, but it does not recognize a $^O value of "dos".  Work
# around this bug here.
my $file_spec = 'File::Spec::Win32';

my %cache;

# Function which translates DOS path names to host form.  Defaults to
# identity.
my $dos_to_host = sub ($) { return @_; };

sub new ($$) {
    my ($proto, $path) = @_;

    my $class = ref $proto || $proto;

    (exists ($cache{$path}))
        and return $cache{$path};

    my Unattend::WinMedia $self = fields::new ($class);

    my $txtsetup;
    my $setupp;
    my $prodspec;

    if (-d &$dos_to_host ($file_spec->catfile( $path, 'amd64'))) {
        $txtsetup = $file_spec->catfile ($path, 'amd64', 'txtsetup.sif');
        $setupp = $file_spec->catfile ($path, 'amd64', 'setupp.ini');
        $prodspec = $file_spec->catfile ($path, 'amd64', 'prodspec.ini');
    }
    else {
        $txtsetup = $file_spec->catfile ($path, 'i386', 'txtsetup.sif');
        $setupp = $file_spec->catfile ($path, 'i386', 'setupp.ini');
        $prodspec = $file_spec->catfile ($path, 'i386', 'prodspec.ini');
    }
    -f &$dos_to_host ($txtsetup) && -f &$dos_to_host($setupp)
        && -f &$dos_to_host ($prodspec)
        or return undef;

    # Remember the path to this media
    $self->{path} = $path;

    # Read the relevant sections of TXTSETUP.SIF
    $self->{txtsetup} = Unattend::IniFile->new 
        (&$dos_to_host ($txtsetup), 'Strings|SCSI|SCSI\.Load');

    # Read SETUPP.INI
    $self->{setupp} = Unattend::IniFile->new (&$dos_to_host ($setupp));

    # Read PRODSPEC.INI
    $self->{prodspec} = Unattend::IniFile->new (&$dos_to_host ($prodspec));

    return $self;       # Already blessed by fields::new
}

sub set_dos_to_host ($$) {
    my (undef, $func) = @_;

    $dos_to_host = $func;
}

# Handy optimization
sub cache ($) {
    my Unattend::WinMedia ($self) = @_;

    $cache{$self->{path}} = $self;
    return 1;
}

sub path ($) {
    my Unattend::WinMedia ($self) = @_;
    return $self->{path};
}

# Grovel around to find the common name of this media.
sub name ($) {
    my Unattend::WinMedia ($self) = @_;
    my $ret = 'UNKNOWN OS';

    my $strings = $self->{txtsetup}->{'Strings'};

    # productname appears to be canonical, but first appeared in XP
    if (exists $strings->{'productname'}) {
        $ret = $strings->{'productname'};
    }
    else {
        my $cdname;
        # Windows 2000 Workstation, Server, and Advanced Server each
        # use different keys here.
        foreach my $key ('wkscd', 'srvcd', 'entcd') {
            (exists $strings->{$key})
                or next;
            $cdname = $strings->{"$key"};
        }
        if (defined $cdname) {
            # $cdname is something like "Windows 2000 Professional CD"
            # (English) or "CD Windows 2000 Professional" (French).
            # Get rid of the "CD" string and surrounding whitespace.
            $cdname =~ s/\s*CD(-ROM)?\s*//;
            $ret = $cdname;
        }
    }

    return $ret;
}

sub localization ($) {
    my Unattend::WinMedia ($self) = @_;
    return $self->{prodspec}->{'Product Specification'}->{'Localization'};
}

sub service_pack ($) {
    my Unattend::WinMedia ($self) = @_;
    my $ret = '';

    my $strings = $self->{txtsetup}->{'Strings'};

    my $spcdname;

    # NT did not support slipstreaming.
    # 2000 puts this string in "spcd".
    # XP puts it in "spcdname".
    foreach my $key ('spcdname', 'spcd') {
        (exists $strings->{$key})
            or next;
        $spcdname = $strings->{$key};
        last;
    }

    defined $spcdname
        and ($ret) = $spcdname =~ /Service Pack (\S+)/;

    return $ret;
}

my %pid_table =
    (
     # Windows Server 2003, Standard x64 Edition
     '76869270' => 'Volume',
     # Windows Server 2003
     '69763000' => 'Trial',
     '69753000' => 'Retail',
     '69712270' => 'Volume',
     # Windows Server 2003, Enterprise Edition
     '69713000' => 'Retail',
     '69713270' => 'Volume',
     # XP
     # See <http://www.thetechguide.com/howto/setuppini.html>
     '55274OEM' => 'Dell OEM',
     '55274000' => 'Retail',
     '55274270' => 'Volume',
     '51882335' => 'Retail',
     '51883270' => 'Volume',
     '82503OEM' => 'OEM',
     # XP Sp3 Hungarian
     '55920270' => 'Volume',
     # 2k Adv Server
     '51879000' => 'Retail',
     '51879270' => 'Volume',
     # 2k
     '51873OEM' => 'OEM',
     '51873000' => 'Retail',
     '51873270' => 'Volume',
     # Windows 2000 Professional, Spanish
     '52339270' => 'Volume',
     # Windows 2000 Professional, Russian
     '52882000' => 'Retail',
     # 2k server
     '51876000' => 'Retail',
     '51876270' => 'Volume',
     # NT
     '50036' => 'Retail',
     '50382' => 'Retail'
     );

sub type ($) {
    my Unattend::WinMedia ($self) = @_;
    my $ret = 'UNKNOWN PID';

    # Get product id string
    my $pid = $self->{setupp}->{'Pid'}->{'Pid'};

    if ( defined $pid ) {
        if ( exists $pid_table{$pid} ) {
            $ret = $pid_table{$pid};
        } 
        elsif ( $pid =~ /^.....270$/ ) {
            $ret = 'Volume??';
        } 
        elsif ( $pid =~ /^.....000$/ ) {
            $ret = 'Retail??';
        } 
        elsif ( $pid =~ /^.....OEM$/ ) {
            $ret = 'OEM??';
        }
        else {
            $ret = "UNKNOWN PID $pid";
        }
    }

    return $ret;
}

sub full_name ($) {
    my Unattend::WinMedia ($self) = @_;

    my $name = $self->name ();
    my $sp = $self->service_pack ();
    $sp ne ''
        and $sp = " SP$sp";
    my $type = $self->type ();
    my $localization = $self->localization();
    return "$name$sp ($type, $localization)";
}

# Find the .inf files below a given directory.  Allow .inf files in
# one directory to "mask" the presence of .inf files below it.  This
# is useful for computing the OemPnPDriversPath.
sub _find_inf_files ($);
sub _find_inf_files ($) {
    my ($dir) = @_;
    my @results;

    # Read the directory.
    opendir DIR, &$dos_to_host ($dir)
        or die "Unable to opendir $dir: $^E";

    my @entries = sort readdir DIR;

    closedir DIR
        or die "Unable to closedir $dir: $^E";

    # Loop through it once, looking for .inf files.
    foreach my $entry (@entries) {
        my $full_path = $file_spec->catfile ($dir, $entry);

        if ($entry =~ /\.inf\z/i) {
            push @results, $full_path;
        }
    }

    # If we found any .inf files, we are done.  Otherwise, loop
    # through directory again, calling ourselves on each subdirectory
    # and accumulating the results.
    if (scalar @results == 0) {
        foreach my $entry (@entries) {
            $entry eq '.' || $entry eq '..'
                and next;

            my $full_path = $file_spec->catdir ($dir, $entry);

            -d &$dos_to_host ($full_path)
                and push @results, _find_inf_files ($full_path);
        }
    }

    return (@results);
}

# Like find_inf_files above, but return only the directory portions,
# relative to the base path provided as argument.
sub _find_oem_pnp_dirs ($) {
    my ($base) = @_;

    my @files = _find_inf_files ($base);
    my %dirs;

    foreach my $file (@files) {
        my $rel_path = $file_spec->abs2rel ($file, $base);
        my (undef, $rel_dir) = $file_spec->splitpath ($rel_path);
        # Remove trailing slash
        $rel_dir = $file_spec->catdir ($rel_dir);
        $dirs{$rel_dir} = undef;
    }

    return keys %dirs;
}

sub oem_pnp_dirs ($;$$) {
    my Unattend::WinMedia $self = shift;
    my $verbose = shift;
    my $oem_system_dir = shift;

    if (not defined $oem_system_dir) {
	if (-d &$dos_to_host ($file_spec->catfile($self->path (), 'amd64'))) {
	    $oem_system_dir = $file_spec->catdir ($self->path (), 'amd64', '$oem$', '$1');
	} else {
	    $oem_system_dir = $file_spec->catdir ($self->path (), 'i386', '$oem$', '$1');
	}
    }

    $verbose
        and print "Looking for drivers under $oem_system_dir...\n";

    my @ret = (-d &$dos_to_host ($oem_system_dir)
               ? _find_oem_pnp_dirs ($oem_system_dir)
               : ());

    $verbose && scalar @ret == 0
        and print "...no driver directories found.\n";

    return @ret;
}

sub _textmode_dir ($) {
    my Unattend::WinMedia ($self) = @_;
    
    if (-d &$dos_to_host ($file_spec->catfile( $self->path (), 'amd64'))) {
      return $file_spec->catdir ($self->path, 'amd64', '$oem$','textmode');
    } else {
      return $file_spec->catdir ($self->path, 'i386', '$oem$','textmode');
    }
}

# Return the names of drivers from the [scsi] section of txtsetup.oem.
# See <http://support.microsoft.com/?kbid=288344>.

sub textmode_oem_drivers ($;$) {
    my Unattend::WinMedia ($self) = shift;
    my $verbose = shift;

    my $txtsetup_oem_file =
        $file_spec->catfile ($self->_textmode_dir (), 'txtsetup.oem');

    $verbose
        and print "Trying to parse $txtsetup_oem_file...\n";

    unless (-f &$dos_to_host ($txtsetup_oem_file)) {
        $verbose
            and print "...file not found\n";
        return ();
    }

    my $txtsetup_oem =
        Unattend::IniFile->new (&$dos_to_host ($txtsetup_oem_file),
                                'scsi');

    my @ret;

    # Grab first component of each value in [scsi] section.
    my $scsi = $txtsetup_oem->{'scsi'};
    foreach my $key (keys %$scsi) {
        my $value = $scsi->{$key};
        ref $value eq 'ARRAY'
            or $value = [ $value ] ;
        push @ret, $value->[0];
    }

    $verbose
        and print "...done\n";
    return @ret;
}

# Return a list of all files in the $OEM$/TEXTMODE directory
sub textmode_files ($) {
    my Unattend::WinMedia ($self) = @_;
    my @ret = ();

    my $textmode = $self->_textmode_dir ();

    if (-d &$dos_to_host ($textmode)) {
        opendir TEXTMODE, &$dos_to_host ($textmode)
            or die "Unable to opendir $textmode: $^E";
        while (my $ent = readdir TEXTMODE) {
            $ent eq '.' || $ent eq '..'
                and next;
            my $full_path = $file_spec->catfile ($textmode, $ent);
            if (! -f &$dos_to_host ($full_path)) {
                warn "$full_path is not a file; ignoring.\n";
                next;
            }
            push @ret, $ent;
        }
        closedir TEXTMODE, $textmode
            or die "Unable to closedir $textmode: $^E";
    }

    return @ret;
}

sub textmode_retail_drivers ($;$) {
    my Unattend::WinMedia ($self) = shift;
    # This should probably do something.  FIXME.
    my $verbose = shift;

    my @ret;

    # Iterate through entries in [SCSI] section of txtsetup.sif
    my $scsi = $self->{txtsetup}->{'SCSI'};
    foreach my $key (keys %$scsi) {
        # Skip this key unless it is listed in the [SCSI.Load] section.
        (defined $self->{txtsetup}->{'SCSI.Load'}->{$key})
            or next;
        my $value = $scsi->{$key};
        ref $value eq 'ARRAY'
            or $value = [ $value ] ;
        push @ret, $value->[0];
    }

    return @ret;
}

# Return the subdirectories of i386 or amd64 which exist and hold language
# files.
sub lang_dirs ($;$) {
    my Unattend::WinMedia ($self) = shift;
    my $verbose = shift;
    my @ret;
    
    my $dir = 'lang';
    my $full_path;
    if (-d &$dos_to_host ($file_spec->catfile( $self->path (), 'amd64'))) {
        $full_path = $file_spec->catdir ($self->path (), 'amd64', $dir);
    } else {
        $full_path = $file_spec->catdir ($self->path (), 'i386', $dir);
    }
    $verbose
        and print "Looking for $full_path...\n";

    if (-d &$dos_to_host ($full_path)) {
        $verbose
            and print "...found.\n";
        push @ret, $dir;
    }
    else {
        $verbose
            and print "...not found.\n";
    }

    return @ret;
}
