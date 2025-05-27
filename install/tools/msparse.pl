#!/usr/bin/perl
#
# This script outputs the download urls of every language of a patch. 
# Input: [microsoft family download url] [local download directory]
#
use strict;
my %lang=(
        ara => 'ar', # Arabic
        csy => 'cs', # Czech
        dan => 'da', # Danish
        nld => 'nl', # Dutch
        enu => 'en', # English
        fin => 'fi', # Finnish
        fra => 'fr', # French
        deu => 'de', # German
        ell => 'el', # Greek
        heb => 'he', # Hebrew
        hun => 'hu', # Hungarian
        ita => 'it', # Italian
        jpn => 'ja', # Japanese
        kor => 'ko', # Korean
        nor => 'no', # Norwegian
        plk => 'pl', # Polish
        ptb => 'pt-br', # Portuguese (Brazilian)
        ptg => 'pt-pt', # Portuguese (Portugal)
        rus => 'ru', # Russian
        esn => 'es', # Spanish
        sve => 'sv', # Swedish
        trk => 'tr', # Turkish
        );
#%lang=(enu => 'en');

@ARGV == 2 || die "Usage: msparse.pl [microsoft family download url] [local download directory]\n\ne.g. msparse.pl \"http://www.microsoft.com/downloads/details.aspx?FamilyId=AC1141D2-6CE1-403E-832B-0574ADB0C296&displaylang=en\" updates/winxpsp1\n";
my $url=$ARGV[0];
my $type=$ARGV[1];

$type =~ s/^\/+//g;
$type =~ s/\/+$//g;

$url =~ s/amp;/\&/g;
$url =~ s/displaylang=[a-z]{2}(?:-[a-z]{2})?//ig;
$url =~ s/\&\&+/\&/g;
$url =~ s/\?\&/\?/;
$url =~ s/\&$//;

my $devnull;
my $eol;
if ($^O eq "MSWin32") {
  $devnull = "nul";
  $eol = "\n";
} else {
  $devnull = "/dev/null";
  $eol = "\r\n";
}

my ($urls, $title1, $title2, $desc, $link, $run, $recheck);
foreach my $k (keys (%lang)) {
    open(f,"wget -O - \"$url\&displaylang=$lang{$k}\" 2>$devnull |");
    while(<f>) {
        chomp;
        if ($k =~ /enu/i) {
            $title1 = "$1" if /\<title.*?\>(.*?)\<\/title\>/;
            defined $link
                or $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*(\d{6}))[\"\']\>[^\<]*\2/i;
            defined $link
                or $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>[^\<]*Knowledge Base Article/i;
            defined $link
                or $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>[^\<]*Security Update/i;
            $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>[^\<]*Security Bulletin [^Pp]/i;
            $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>[^\<]*[^wW] Security Bulletin/i;
            $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>Security Bulletin\</i;
#            $link = $1 if /href=[\"\']\s*(http:\/\/[^\"\']*)[\"\']\>[^\<]*ms\d{2}-\d{3}/i;
        }

        if (/\<a href=[\"\']([^\"\']*-client-[^\"\']*)[\"\']\>/i) {
            my $dl=$1;
            if ($dl =~/.*?;u=(.*)/) {
                $dl=$1;
                $dl=~s#%2f#/#g;
                $dl=~s#%3a#:#g;
            }
            my @a=split(/\//,$dl);
            if ($a[$#a] =~ /$k/i) {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } elsif ($a[$#a] =~ /$lang{$k}\.exe/i) {
                $a[$#a] =~ s/$lang{$k}\.exe/$k.exe/i;
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } else {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($k)."/".lc($a[$#a]);
                $run = lc($type)."/".lc($k)."/".$a[$#a] unless defined $run;
            }
        }

        if (/if \((?:g_IsIE|useDlWindow\(\))\) \{window.open\([\"\']([^\"\']*)[\"\']/) {
            my $dl=$1;
            my @a=split(/\//,$dl);
            if ($a[$#a] =~ /$k/i) {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } elsif ($a[$#a] =~ /$lang{$k}\.exe/i) {
                $a[$#a] =~ s/$lang{$k}\.exe/$k.exe/i;
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } else {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($k)."/".lc($a[$#a]);
                $run = lc($type)."/".lc($k)."/".$a[$#a] unless defined $run;
            }
        }

        if (/\<a id=[\"\']btnDownload[\"\'] class=[\"\']downloadButton[\"\'] href=[\"\']([^\"\']*)[\"\']\>/) {
            my $dl=$1;
            my @a=split(/\//,$dl);
            if ($a[$#a] =~ /$k/i) {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } elsif ($a[$#a] =~ /$lang{$k}\.exe/i) {
                $a[$#a] =~ s/$lang{$k}\.exe/$k.exe/i;
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } else {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($k)."/".lc($a[$#a]);
                $run = lc($type)."/".lc($k)."/".$a[$#a] unless defined $run;
            }
        }
        if (/openDownloadWindow\([\"\']([^\"\']*)[\"\']/) {
            my $dl=$1;
            my @a=split(/\//,$dl);
            if ($a[$#a] =~ /$k/i) {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } elsif ($a[$#a] =~ /$lang{$k}\.exe/i) {
                $a[$#a] =~ s/$lang{$k}\.exe/$k.exe/i;
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($a[$#a]);
                $run = lc($type)."/".$a[$#a] unless defined $run;
            } else {
                $urls->{uc($k)} = "URL|".uc($k)."|$dl|".lc($type)."/".lc($k)."/".lc($a[$#a]);
                $run = lc($type)."/".lc($k)."/".$a[$#a] unless defined $run;
            }
        }
        if (defined $run) {
            unless ($run =~ /%WINLANG%/) {
                $run =~ s/([-_\/])$k/$1%WINLANG%/i;
                $run =~ s/$k\.exe/%WINLANG%\.exe/i;
                $run =~ s/\//\\/g;
            }
        }
    }
}

if (defined $link) {
    $link =~ s/default.*(\d{6})/\?kbid=$1/i if $link =~ /scid=kb/i;
    $link =~ s/\/support\/misc\/kblookup.asp\?id=/\/\?kbid=/i if $link =~ /\/support\/misc\/kblookup.asp\?id=/i;
    $link =~ s/\/\?id=/\/\?kbid=/i if $link =~ /\/?id=/i;
    $link =~ s/(ms\d{2}-\d{3})\.asp/$1.mspx/i if $link =~ /ms\d{2}-\d{3}\.asp/i;
}

$recheck = 0;
if (defined $link) {
    open(f,"wget -O - \"$link\" 2>&1 |");
    while(<f>) {
        if ($link =~ /kbid=/i) {
            if (/href=[\"\']\s*(http:\/\/[^\"\']*ms\d{2}-\d{3}\.mspx)[\"\']\>[^\<]*ms\d{2}-\d{3}/i) {
                $link = $1;
                $recheck = 1;
            }
        } else {
            defined $title2
                or $title2 = "$1" if /\<h1.*?\>(.*?)(?:\<\/h1\>|$)/;
            defined $desc
                or $desc = "$1" if /\<h2.*?\>(.*?)(?:\<\/h2\>|$)/;
        }
        if (/(http.*?) \[following\]/i) {
            $link = "$1";
            $link =~ s/default.*(\d{6})/\?kbid=$1/i if (defined $link && $link =~ /scid=kb/i);
            $link =~ s/\/support\/misc\/kblookup.asp\?id=/\/\?kbid=/i if (defined $link && $link =~ /\/support\/misc\/kblookup.asp\?id=/i);
            $link =~ s/\/\?id=/\/\?kbid=/i if (defined $link && $link =~ /\/?id=/i);
        }
    }
    $link =~ s/technet\/treeview.*?(technet)/$1/i if ($link =~ /technet\/treeview/i);
    if ($recheck == 1 || $link =~ /ms\d{2}-\d{3}\.asp/i) {
        $link =~ s/(ms\d{2}-\d{3})\.asp/$1.mspx/i;

        undef $title2;
        undef $desc;
        open(f,"wget -O - \"$link\" 2> $devnull |");
        while(<f>) {
            defined $title2
                or $title2 = "$1" if /\<h1.*?\>(.*?)(?:\<\/h1\>|$)/;
            defined $desc
                or $desc = "$1" if /\<h2.*?\>(.*?)(?:\<\/h2\>|$)/;
        }
    }
}

if (defined $title1) {
    $title1 =~ s/^ +//g;
    $title1 =~ s/ +$//g;
    $title1 =~ s/ *\.\. *//g;
}

if (defined $title2) {
    $title2 =~ s/^ +//g;
    $title2 =~ s/ +$//g;
    $title2 =~ s/ *\.\. *//g;
}

if (defined $desc) {
    $desc =~ s/^ +//g;
    $desc =~ s/ +$//g;
    $desc =~ s/ *\.\. *//g;
}

if (defined $link) {
    $link =~ s/^ +//g;
    $link =~ s/ +$//g;
}

print "$eol";
print ":: $title1$eol" if defined $title1;
print ":: $title2$eol" if defined $title2;
print ":: \"$desc\"$eol" if defined $desc;
print ":: <$link>$eol" if defined $link;
print ":: <$url>$eol" if defined $url;
foreach (sort keys %lang) {
    if (defined $urls->{uc($_)}) {
        print ":: $urls->{uc($_)}$eol";
    } else {
        print ":: No Download found for " . uc($_) . ".$eol";
    }
}
print "todo.pl \".reboot-on 194 %Z%\\$run /?\"$eol" if defined $run;
