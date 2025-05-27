# Script to delete links within special folders 
# (like AllUsersDesktop).

use warnings;
use strict;
use Getopt::Long;
use Pod::Usage;
use Win32::OLE;

use File::Basename;
use File::Spec;
use File::Path;

# Your usual option-processing sludge.
my %opts;
GetOptions (\%opts, 'help|h|?' )
    or pod2usage (1);

(exists $opts{'help'})
    and pod2usage ('-exitstatus' => 0, '-verbose' => 2);

# Ensure one argument after options.
scalar @ARGV == 1
    or pod2usage (1);

my ($target) = @ARGV;

# Bomb out completely if COM engine encounters any trouble.
Win32::OLE->Option ('Warn' => 3);

# Get WshShell object.  See
# <http://msdn.microsoft.com/library/en-us/script56/html/wsobjwshshell.asp>
my $wsh_shell = Win32::OLE->CreateObject ('WScript.Shell');

sub canonicalize_filename ($) {
    my ($filename) = @_;

    # FIXME: Add support for "ProgramFiles".  And for "QuickLaunch";
    # see <http://www.winnetmag.com/Files/07/9176/Listing_03.txt>.
    if ($filename =~ /^special:([a-z]+)(.*)/i) {
        my ($special, $rest) = ($1, $2);
        # Get special folder.  See
        # <http://msdn.microsoft.com/library/en-us/script56/html/wsprospecialfolders.asp>

        my $folder = $wsh_shell->SpecialFolders ($special);
        $filename = "$folder$rest";
    }

    return $filename;
}

$target = canonicalize_filename ($target);

unlink $target;
exit 0;

__END__

=head1 NAME

unlink.pl - Remove links  on special Folders   

=head1 SYNOPSIS

unlink.pl <target> 

Options (may be abbreviated):

 --help                   Display help and exit

=head1 DESCRIPTION

This script remove a link within special folders (special:AllUsersDesktop)

=head1 EXAMPLES

 unlink.pl special:AllUsersDesktop\"\Adobe Reader 7.0.lnk\"

=head1 SEE ALSO
C<http://msdn.microsoft.com/library/en-us/script56/html/wsprospecialfolders.asp>
