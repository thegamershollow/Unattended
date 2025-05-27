# perl script for apps-only-installs, called by appsonly.bat
# contributed by Gerhard Hofmann, gerhard.hofmann@planat.de
# place appsonly.bat, appsonly.pl, choice.exe, setenv.exe,
# pathman.exe into \\server\install\bin
# some documentation included in appsonly.bat
# Download of appsonly.bat, appsonly.pl and some "helper" apps:
# http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin
# Release 2009.08.19

use Win32::NetResource;
#use warnings;
#use strict;
use Carp;
use File::Spec::Win32;
use File::Copy;
#use Unattend::IniFile;
#use Unattend::WinMedia;
use Win32::Console ;



$autologinpwd = "";


# Select from among zero or more strings.
sub multi_choice (@) {
    my ($prompt, @strings) = @_;

    scalar @strings > 0
        or return ();

    my %selected = map { $_ => 0 } @strings;

    my $menu_state = { 'prompt' => $prompt };

  LOOP:
    while (1) {
        my @choices =
            ('Select/deselect all' =>
             sub { my $sel = (0 < scalar grep { $selected{$_} == 0
                                                } @strings);
                   # If anything is not selected, select all; else,
                   # deselect all.
                   %selected = map { $_ => $sel } @strings;
               },
             'All done ; continue' =>
             sub {
                 no warnings 'exiting';
                 last LOOP;
             },
             map { 
                 my $str = $_;
                 (sprintf "[%s] %s", $selected{$str} ? '*' : ' ', $str)
                     => sub { $selected{$str} = !$selected{$str} }
               } @strings,
             );

        my $func = menu_choice ($menu_state, @choices);
        &$func ();
    }

    my %sort_index;
    foreach my $i (0 .. scalar @strings - 1) {
        $sort_index{$strings[$i]} = $i;
    }

    my @selections = grep { $selected{$_} } keys %selected;
    return sort { $sort_index{$a} <=> $sort_index {$b} } @selections;
}


# Create a menu of options.  Takes an even number of arguments which
# are display / return pairs.  For example:
#
#     menu_choice ('option X' => 'foo', 'option Y' => 'bar')
#
# ...returns 'foo' if the user selects option X and 'bar' if the user
# selects option Y.
sub menu_choice (@) {
    my @args = @_;
    my @choice_map;
    my $opts = { };

    # Current page
    my $page = 0;
    # Prompt
    my $prompt = '';

    ref $args[0] eq 'HASH'
        and $opts = shift @args;
    
    # Process magic options hash.
    foreach my $key (keys %$opts) {
        if ($key eq 'page') {
            $page = $opts->{$key};
        }
        elsif ($key eq 'prompt') {
            $prompt = $opts->{$key} . "\n";
        }
    }

    scalar @args % 2 == 0
        or croak "menu_choice called with odd number of arguments";

    # Total number of choices
    my $count = scalar @args / 2;

    # Choices to display per page
    my $per_page = 15;

    my $pages = int(($count + $per_page - 1) / $per_page);

    my $ret;
  LOOP:
    while (1) {
        print "\n$prompt";
        $pages > 1
            and printf "(Page %d/%d)\n", $page+1, $pages;

        my $start = $page * $per_page;

        my $i = 0;
        my $choices = '';

        # Generate current page of choices.
        while ($i < $per_page && $start + $i < $count) {
            my $elt = 2 * ($start + $i);
            my $hexd = sprintf '%X', $i+1;
            print "$hexd) $args[$elt]\n";
            $choices .= $hexd;
            # Capture value for sub below
            my $val = $args[$elt + 1];
            $choice_map[$i] = sub { no warnings 'exiting';
                                    $ret = $val;
                                    last LOOP;
                                };
            $i++;
        }

        # If we have multiple pages, generate Next/Previous option.
        if ($pages > 1) {
            print "N/P) Next/Previous page\n";
            $choices .= 'N';
            $choice_map[$i] = sub { $page = ($page + 1) % $pages };
            $i++;
            $choices .= 'P';
            $choice_map[$i] = sub { $page = ($page + $pages - 1) % $pages };
            $i++;
        }

        print "X) Exit this program\n";
        $choices .= 'X';
        
        # user has chosen exit -> disable autologin
        $choice_map[$i] = sub { print "Exiting.\n"; system ("%z_path%\\bin\\autolog.pl --logon=0") ; exit 1; };
        
        $i++;

        my $sel = choice ('Select: ', $choices);

        my $func = $choice_map[$sel];
        &$func ();
    }

    # Record which page we ended up on
    $opts->{'page'} = $page;

    return $ret;
}

## "choice" implementation, generic between DOS and Unix.
sub choice ($;$) {
    my ($prompt, $choices) = @_;
    my $ret;

    defined $choices
        or $choices = 'YN';

    # Canonicalize stuff to uppercase
    $choices = uc $choices;

    if ($is_linux) {
        my %choice_map;
        foreach my $i (0 .. (length $choices) - 1) {
            my $char = substr $choices, $i, 1;
            $choice_map{$char} = $i;
        }
        print "$prompt [$choices] ";
        my $key;
        while (1) {
            $key = readkey ();
            $key = uc $key;
            (exists $choice_map{$key})
                and last;
        }
        print "$key\n";
        $ret = $choice_map{$key};
    }
    else {
        system "$ENV{Z_PATH}\\bin\\choice.exe", "/c:$choices", $prompt;
        $ret = ($? >> 8) - 1;
    }

    return $ret;
}


# set autologin
# autologinpwd passed from appsonly.bat? If yes, skip dialog
if ($ENV{autologinpwd} eq "")
{
  print "enable autologin (y/n)? ";
  chomp ($autologin = <STDIN>);
  if ($autologin eq "y")
  {
    print "autologin user will be: $ENV{USERNAME}\n";
    print "autologin domain will be: $ENV{USERDOMAIN}\n";

    print "autologin password: \n";
    $cons = new Win32::Console(STD_INPUT_HANDLE); 
    $oldMode = $cons->Mode; 
    $cons->Mode(~(ENABLE_LINE_INPUT|ENABLE_ECHO_INPUT) & $oldMode ); 
    while (1) 
    { 
      $char = $cons->InputChar(1) ;
      last if ord $char == 13 ; 
      print '*' ; 
      $autologinpwd .= $char ; 
    } 
    $cons->Mode($oldMode) ; 
    system("%z%\\bin\\autolog.pl --logon=1 --user=$ENV{USERNAME} --domain=$ENV{USERDOMAIN} --password=$autologinpwd");
  }
}
else
{
	$autologinpwd = $ENV{autologinpwd};
	system("%z%\\bin\\autolog.pl --logon=1 --user=$ENV{USERNAME} --domain=$ENV{USERDOMAIN} --password=$autologinpwd");
}

# generate list of all bat files in the scripts directory
chdir "$ENV{Z}\\scripts";
@batfiles = glob("*.bat");


# if .bat file names were passed from appsonly.bat -> use the given .bat file names
# in other case, show the multiple choice dialog
# select multiple bat files
if ($ENV{script1} eq "") 
{
  @selectedfiles = multi_choice('Please choose app(s) to install.', @batfiles);
}
else
{
  if ($ENV{script8} ne "")
  {
  	push @selectedfiles, $ENV{script8};
  }
  if ($ENV{script7} ne "")
  {
  	push @selectedfiles, $ENV{script7};
  }
  if ($ENV{script6} ne "")
  {
  	push @selectedfiles, $ENV{script6};
  }
  if ($ENV{script5} ne "")
  {
  	push @selectedfiles, $ENV{script5};
  }
  if ($ENV{script4} ne "")
  {
  	push @selectedfiles, $ENV{script4};
  }
  if ($ENV{script3} ne "")
  {
  	push @selectedfiles, $ENV{script3};
  }
  if ($ENV{script2} ne "")
  {
  	push @selectedfiles, $ENV{script2};
  }
  if ($ENV{script1} ne "")
  {
  	push @selectedfiles, $ENV{script1};
  }
}

# put command to disable autologin (after all installs) onto the to-do stack
# delete Z, Z_PATH, Z_USER variables at the end, see http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg08693.html
system ("%z_path%\\bin\\todo.pl", "autolog.pl --logon=0");
system ("%z_path%\\bin\\todo.pl", "setenv -m Z -delete");
system ("%z_path%\\bin\\todo.pl", "setenv -m Z_USER -delete");
system ("%z_path%\\bin\\todo.pl" , "setenv -m Z_PATH -delete");

# call todo.pl for any selected bat file and call it once with --go
$i = 0;
#print $#selectedfiles;
while ($i <= $#selectedfiles) 
{
  #print $selectedfiles[$i];
  system ("%z_path%\\bin\\todo.pl", $selectedfiles[$i]);
  $i++;
}

system ("%z_path%\\bin\\todo.pl", "--go");

