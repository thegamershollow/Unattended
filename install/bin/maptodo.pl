# used to map a drive with authentication upon restart and
#  run todo.pl --go
#
#  By Shad Lords for the Unattended project

use warnings;
use strict;
use Pod::Usage;
use Win32::NetResource;

my ($netres, $tmp, $error, $drivemapped, $uncpath);

if ((@ARGV == 2) || (@ARGV == 4)) {
	my ($drive, $share, $user, $password) = @ARGV;

	$drive =~ /^[a-z]:?$/i
		or die "Invalid drive specification $drive";

	# Add colon if needed.
	$drive =~ /:$/
		or $drive .= ':';

	$netres = {
		"RemoteName" => "$share",
		"LocalName" => "$drive"
		};

	print("Mapping: $$netres{LocalName} => $$netres{RemoteName}\n");
	$drivemapped = 120;
	while ($drivemapped > 0) {
		$drivemapped--;
		Win32::NetResource::GetUNCName($uncpath, $drive);
		if (("$uncpath" eq "$share") && ( -r "$drive\\bin\\todo.pl" )) {
			print("Running: $drive\\bin\\todo.pl --go\n");
			$drivemapped = -1;
			system ("$drive\\bin\\todo.pl --go");
		} else {
			sleep(1);
			Win32::NetResource::CancelConnection("$drive",1,1);
			$user ? Win32::NetResource::AddConnection($netres,$password,$user,0)
				: Win32::NetResource::AddConnection($netres);
		}
	}

	if (! $drivemapped) {
		print "\nError mapping drive ... Quitting\n";
	    while (1) {
	        sleep 3600;
		}
	}
} else {
	pod2usage (2);
}

__END__

=head1 NAME

maptodo.pl - Map drive and run todo.pl

=head1 SYNOPSIS

maptodo.pl <drive> <share> [ <user> <password> ]
