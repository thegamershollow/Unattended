# Manage the to-do list.

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32API::Registry qw(:Func :SE_);
my %reg;
use Win32::TieRegistry (Delimiter => '/', TiedHash => \%reg);
use Win32::NetResource; # for get_drive_path
use Win32::Console;

(exists $ENV{'SystemDrive'})
    or die "Internal error";

my $c = $ENV{'SystemDrive'};

# Location of the "to do" list.
my $todo = "$c\\netinst\\todo.txt";

# Location of "mapznrun" script
my $mapznrun = "$c\\netinst\\mapznrun.bat";

# Location of the "to do" logs.
my $log = "$c\\netinst\\logs\\todo.txt";

# Determine alternate letter for z: drive and store it in Z
# environment variable (unless it is already set).
unless (exists $ENV{'Z'}) {
    # Try to get drive letter from the path to this script.
    use File::Spec;
    my ($vol, undef, undef) = File::Spec->splitpath ($0);
    $ENV{'Z'} = $vol;
}

my $z = $ENV{'Z'};

unless (-e $mapznrun) {
    print "Hm, no $mapznrun file.  Attempting to copy from $z\\bin...";
    use File::Copy;
    copy "$z\\bin\\mapznrun.bat", $mapznrun
        or die "copy failed ($^E); bailing";
}

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help', 'user', 'go')
    or pod2usage (2);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, -verbose => 2);

sub stop () {
    while (1) {
        sleep 3600;
    }
}

# Since this is the top-level "driver" script, stop if we encounter
# any problems.
END {
    $? == 0
        and return;

    print "$0 exiting with status $? ; halting...\n";
    stop ();
}

sub reboot ($) {
    my ($timeout) = @_;
    AllowPriv (SE_SHUTDOWN_NAME, 1)
        or die "Unable to AllowPriv SE_SHUTDOWN_NAME: $^E";

    print "$0 is bouncing the system\n";
    InitiateSystemShutdown ('', "$0: Rebooting...", $timeout, 1, 1)
        or die "Unable to InitiateSystemShutdown: $^E";
    stop ();
}

# Check if we have administrative privileges.
sub are_we_administrator () {
    # See if we can enable the "take ownership" privilege.  This is
    # just a poor approximation to what we really want to know, which
    # is (usually) whether we can install software.
    return AllowPriv (SE_TAKE_OWNERSHIP_NAME, 1)
        && AllowPriv (SE_TAKE_OWNERSHIP_NAME, 0);
}

# Read a file.  Return an empty list if file does not exist.
sub read_file ($) {
    my ($file) = @_;

    -e $file
        or return ();

    open FILE, $file
        or die "Unable to open $file for reading: $^E";
    my @ret = <FILE>;
    close FILE
        or die "Unable to close $file: $^E";
    map { chomp } @ret;

    # Cull empty lines
    return grep { /./ } @ret;
}

# Write some lines to a file.
sub write_file ($@) {
    my ($file, @lines) = @_;

    if (scalar @lines > 0) {
        my $tmp = "$file.tmp.$$";
        open TMP, ">$tmp"
            or die "Unable to open $tmp for writing: $^E";
        foreach my $line (@lines) {
            print TMP "$line\n";
        }
        close TMP
            or die "Unable to close $tmp: $^E";

        rename $tmp, $file
            or die "Unable to rename $tmp to $file: $^E";
    }
    else {
        # When file becomes empty, remove it.
        unlink $file
            or die "Unable to unlink $file: $^E";
    }
}


# Push one or more commands onto the to-do list.
sub push_todo (@) {
    my @new_cmds = @_;

    my @old_cmds = read_file ($todo);
    write_file ($todo, @new_cmds, @old_cmds);
}

# Pop the next command off of the to-do list.  With arg, just peek at
# the next command; do not really pop it off.
sub pop_todo (;$) {
    my ($peek) = @_;
    my @cmds = read_file ($todo);

    scalar @cmds > 0
        or return undef;

    my $ret = shift @cmds;

    $peek
        or write_file ($todo, @cmds);

    return $ret;
}

sub peek_todo () {
    return pop_todo (1);
}

# Add registry entry to make a command run at next logon of current
# user.  If arg is undef, remove the registry entry.
sub run_at_logon (;$) {
    my ($cmd) = @_;
    my $run_subkey = 'Software/Microsoft/Windows/CurrentVersion/Run/';
    my $run_key = (exists $opts{'user'}
                   ? "CUser/$run_subkey" : "LMachine/$run_subkey");
    my $todocmd = '/ToDoCmd';

    if ($cmd) {
        (exists $reg{$run_key})
            or $reg{$run_key} = { }
                or die "Unable to create $run_key: $^E";
        $reg{$run_key}->{$todocmd} = $cmd
            or die "Unable to set $run_key$todocmd to $cmd: $^E";
    }
    elsif (exists $reg{$run_key}) {
        (delete $reg{$run_key}->{$todocmd})
            or die "Unable to delete $run_key$todocmd: $^E";
    }
}

# Get Windows version as a canonical string, like "win2ksp4".
sub get_windows_version () {
    my $ver_key = "LMachine/SOFTWARE/Microsoft/Windows NT/CurrentVersion";

    my $pn_key = "$ver_key//ProductName";
    my $product_name = $reg{$pn_key};
    defined $product_name
        or die "Unable to get $pn_key: $^E";
    my $csd_key = "$ver_key//CSDVersion";
    my $csd_version = (exists $reg{$csd_key} ? $reg{$csd_key} : '');
    defined $csd_version
        or die "Unable to get $csd_key: $^E";

    my $os;
    if ($product_name eq 'Microsoft Windows 2000') {
        $os = 'win2k';
    }
    elsif ($product_name eq 'Microsoft Windows XP') {
        $os = 'winxp';
    }
    elsif ($product_name =~ m/Windows Server.*(2003)/) {
        $os = 'ws2k3';
    }
    elsif ($product_name =~ m/Vista/) {
        $os = 'vista';
    }
    elsif ($product_name =~ m/Windows Server.*(2008)/) {
        $os = 'ws2k8';
    }
    elsif ($product_name =~ m/Windows Server.*(2012)/) {
        $os = 'win2012';
    }
    elsif ($product_name =~ m/Windows Server.*(2016)/) {
        $os = 'win2016';
    }
    elsif ($product_name =~ m/Windows Server.*(2019)/) {
        $os = 'win2019';
    }
    elsif ($product_name =~ m/Windows 7/) {
        $os = 'win7';
    }
    elsif ($product_name =~ m/Windows 8/) {
        $os = 'win8';
    }
    elsif ($product_name =~ m/Windows 10/) {
        $os = 'win10';
    }
    else {
        die "Unrecognized $pn_key: $product_name";
    }

    my $sp;
    if ($csd_version eq '') {
        $sp = '';
    }
    # Get a version number (only works up to 9)
    elsif ($csd_version =~ /(\d+)/) {
        $sp = "sp$1";
    }
    else {
        die "Unrecognized $csd_key: $csd_version";
    }

    return "$os$sp";
}

# Get a handle to the SWbemServices object for this machine.
my $wmi = Win32::OLE->GetObject ('WinMgmts:');

# Get the three-letter acronym for the language of the running OS.
sub get_windows_language () {
    use Win32::OLE;
    # Bomb out completely if COM engine encounters any trouble.
    Win32::OLE->Option ('Warn' => 3);

    # Get the SWbemObjectSet of Win32_OperatingSystem instances.
    my $os_instances = $wmi->InstancesOf ('Win32_OperatingSystem');

    # Convert set to Perl array.
    my @oses = Win32::OLE::Enum->All ($os_instances);

    scalar @oses == 1
        or die "Internal error (too many OS objects in get_windows_language)";

    # See OSLanguage property in
    # <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_operatingsystem.asp>.
    # See also <http://www.microsoft.com/globaldev/nlsweb> and
    # <http://www.microsoft.com/globaldev/reference/winxp/langtla.mspx>.

    my %lang_table = (
                      0x0401 => 'ara',
                      0x0404 => 'cht',
                      0x0405 => 'csy',
                      0x0406 => 'dan',
                      0x0407 => 'deu',
                      0x0408 => 'ell',
                      0x0409 => 'enu',
                      0x040a => 'esp',
                      0x040b => 'fin',
                      0x040c => 'fra',
                      0x040d => 'heb',
                      0x040e => 'hun',
                      0x0410 => 'ita',
                      0x0411 => 'jpn',
                      0x0412 => 'kor',
                      0x0413 => 'nld',
                      0x0414 => 'nor',
                      0x0415 => 'plk',
                      0x0416 => 'ptb',
                      0x0418 => 'rom',
                      0x0419 => 'rus',
                      0x041d => 'sve',
                      0x041f => 'trk',
                      0x0804 => 'chs',
                      0x0816 => 'ptg',
                      0x0c0a => 'esn',
                      );

    my $langid = $oses[0]->OSLanguage;
    (defined $lang_table{$langid})
        or die sprintf "Unknown language ID 0x%04X", $langid;

    return $lang_table{$langid};
}

# Get the name of the local Administrators group, which varies by
# language.
sub get_administrators_group () {
    # Lookup by well-known SID.  See
    # <http://support.microsoft.com/?id=243330> and
    # <http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_sid.asp>.

    my $admin_sid = $wmi->Get ('Win32_SID.SID="S-1-5-32-544"');
    return $admin_sid->{'AccountName'};
}

# For input letter X, return the UNC path to which X: is connected.
# If X is a not a networked drive, return "X:".
use constant ERROR_NOT_CONNECTED => 2250;
sub get_drive_path ($) {
    my ($drive) = @_;
    my $ret;

    $drive =~ /^[a-z]:?$/i
        or die "Invalid drive specification $drive";

    # Add colon if needed.
    $drive =~ /:$/
        or $drive .= ':';

    if (Win32::NetResource::GetUNCName ($ret, $drive)) {
        # all done
    }
    elsif ($^E == ERROR_NOT_CONNECTED) {
        # Not a network drive, so just return the drive letter itself.
        $ret = $drive;
    }
    else {
        die "Unable to GetUNCName for $drive: $^E";
    }

    return $ret;
}

# Arrange to run ourselves at next logon.
sub run_ourselves_at_logon () {
    my $user_arg = (exists $opts{'user'} ? ' --user' : '');
    run_at_logon ("$mapznrun $0" . $user_arg . ' --go');
}

# Set up console for single-character input and autoflush output.
my $console = new Win32::Console (STD_INPUT_HANDLE)
    or die "Unable to create STDIN console: $^E";

$| = 1;

# Run a command, including handling of pseudo-commands (like .reboot).
# If second arg is true, return exit status ($?) instead of bombing if
# non-zero.
sub do_cmd ($;$);
sub do_cmd ($;$) {
    my ($cmd, $no_bomb) = @_;
    my $ret;

    if ($cmd =~ /^\./) {
        if ($cmd eq '.reboot') {
            # If the to-do list is not empty, arrange to run ourselves
            # after reboot.
            my $next_cmd = peek_todo ();
            defined $next_cmd
                and run_ourselves_at_logon ();
            reboot (5);
            die 'Internal error';
        }
        elsif ($cmd =~ /^\.expect-reboot\s+(.*)$/) {
            my $new_cmd = $1;
            # If the to-do list is not empty, arrange to run ourselves
            # after reboot.
            my $next_cmd = peek_todo ();
            defined $next_cmd
                and run_ourselves_at_logon ();
            do_cmd ($new_cmd);
            print "Expecting previous command to reboot; exiting.\n";
            exit 0;
        }
        elsif ($cmd =~ /^\.reboot-on\s+(\d+)\s+(.*)$/) {
            my ($err_to_reboot, $new_cmd) = ($1, $2);
            my $status = do_cmd ($new_cmd, 1);

            if ($status == $err_to_reboot << 8) {
                print "$new_cmd exited status $err_to_reboot; rebooting.\n";
                do_cmd ('.reboot');
                die 'Internal error';
            }

            $ret = $status;
        }
        elsif ($cmd =~ /^\.missing-ok\s+(.*)$/) {
            my $new_cmd = $1;
            my $status = do_cmd ($new_cmd, 1);

            $status == 1 << 8
                and $status = 0;

            $ret = $status;
        }
        elsif ($cmd =~ /^\.ignore-err\s+(\d+)\s+(.*)$/) {
            my ($err_to_ignore, $new_cmd) = ($1, $2);
            my $status = do_cmd ($new_cmd, 1);

            $status == $err_to_ignore << 8
                and $status = 0;

            $ret = $status;
        }
        elsif ($cmd =~ /^\.ignore-all-err\s+(.*)$/) {
            my $new_cmd = $1;
            my $status = do_cmd ($new_cmd, 1);
            my $real_status = $status >> 8;

            if ($real_status == 0) {
                $ret = 0;
            } elsif ($real_status == 1) {
                $ret = 1;
            } else {
                $ret = 0;
            }
        }
        elsif ($cmd =~ /^\.sleep\s+(\d+)$/) {
            my ($secs) = $1;
            print "Sleeping $secs seconds...";
            sleep $secs;
            print "done.\n";
            $ret = 0;
        }
        else {
            die "Unrecognized pseudo-command $cmd";
        }
    }
    else {
        print "Running: $cmd\n";
	## log actions
	my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	$mon += 1;
	$mon = ($mon < 10)?"0$mon":$mon;
	$mday = ($mday < 10)?"0$mday":$mday;
        my $status = system $cmd;
	my ($sec2,$min2,$hour2) = localtime(time);
    	my @old = read_file ($log);
	write_file($log, ((1900+$year)."/$mon/$mday $hour:$min:$sec -> $hour2:$min2:$sec2, status $status,\tRunning:$cmd"), @old);
        $ret = $status;
    }

    defined $ret
        or die 'Internal error';

    unless ($no_bomb) {
        while ($ret != 0) {
            print "$cmd failed, status ", $ret >> 8, ' (', $ret % 256, ')', "\n";
            print "A)bort R)etry I)gnore ? ";
            my $old_mode = $console->Mode (ENABLE_PROCESSED_INPUT);
            defined $old_mode
                or die "Unable to set mode on console: %^E";

            my $key = $console->InputChar (1);
            defined $key
                or die "InputChar failed: $^E";

            defined $console->Mode ($old_mode)
                or die "Unable to reset mode on console: %^E";

            $key = uc $key;
            if ($key eq 'A') {
                die "Aborting.\n";
            }
            elsif ($key eq 'R') {
                print "\nRetrying...\n";
                return do_cmd ($cmd);
            }
            elsif ($key eq 'I') {
                print "\nIgnoring.\n";
                $ret = 0;
            }
        }
    }

    return $ret;
}

exists $opts{'user'} || are_we_administrator ()
    or die 'Error: Not Administrator and --user not supplied';

if (exists $opts{'go'}) {
    @ARGV == 0
        or pod2usage (2);

    # Prevent re-entrancy.
    (exists $ENV{'_IN_TODO'})
        and exit 0;
    $ENV{'_IN_TODO'} = 'yes';

    # Add "bin" and "scripts" directories to PATH.
    $ENV{'PATH'} = "$z\\bin;$z\\scripts;$ENV{'PATH'}";

    # Set handy "WINVER" environment variable.
    $ENV{'WINVER'} = get_windows_version ();

    # Set handy "WINLANG" environment variable.
    $ENV{'WINLANG'} = get_windows_language ();

    # Set handy "Z_PATH" environment variable.
    $ENV{'Z_PATH'} = get_drive_path ($z);

    # Set "Administrators" environment variable to local
    # Administrators group.
    $ENV{'Administrators'} = get_administrators_group ();

    # Disable running ourselves after reboot.
    run_at_logon ();

    while (defined (my $cmd = pop_todo ())) {
        do_cmd ($cmd);
    }
}
else {
    # Default behavior is to push one or more commands onto the todo
    # list.
    @ARGV > 0
        or pod2usage (2);
    push_todo (@ARGV);
}

exit 0;

__END__

=head1 NAME

todo.pl - Manage the to-do list

=head1 SYNOPSIS

todo.pl [ options ] <commands...>

=head1 OPTIONS

--help          Display help and exit
--go            Process the to-do list
--user          Run in "per user" mode

=head1 DESCRIPTION

todo.pl manages the "to do" list, a plain-text file in
%SystemDrive%\netinst\todo.txt.

Normally, it simply prepends its arguments to the list.

If invoked with --go, it removes commands from the list one at a time
and executes them in a controlled environment.  If todo.pl encounters
a ".reboot" command which is not the final command, it hooks the
registry to run itself at next logon and reboots the machine.

If invoked without --user, todo.pl hooks HKEY_LOCAL_MACHINE to run
itself at next logon.  So no matter who logs on next, todo.pl will be
invoked.  If invoked with --user, todo.pl hooks HKEY_CURRENT_USER
instead, so it will only run when the same user logs on next.

=head1 SEE ALSO
L<http://unattended.sourceforge.net/apps.html#todo>
