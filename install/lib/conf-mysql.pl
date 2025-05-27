# The following section (uncommented) will create a database, 
# user, and table for use in this script.
#
# echo "create database unattended;" | mysql
# echo "grant all on unattended.* to username@'%' identified by 'password';" | mysql
# echo "CREATE TABLE unattended (
#   Lookup varchar(128) NOT NULL default '',
#   Property varchar(128) NOT NULL default '',
#   Value varchar(255) NOT NULL default '',
#   PRIMARY KEY  (Lookup,Property)
# ) TYPE=MyISAM;" | mysql unattended
#
# The lookup_value function will query the above table when
# passed a Lookup, Property pair and return Value.  If Value
# is 'Empty' then '' is returned.  All errors return undef.

use strict;
use warnings;
use DBI;
use DBD::mysql;

# Must be named CONFIG
package CONFIG;
use Carp;

my $dbh;

# Setup connection to database
sub setup ($$$) {
    my $self = shift;
    my $dbconn = shift;
    my $dbuser = shift;
    my $dbpass = shift;

    $dbh = DBI->connect($dbconn, $dbuser, $dbpass)
        or undef $dbh;
}

# Query database looking up value for Lookup, Property pair
sub lookup_value ($$) {
    my $self = shift;
    my $lookup = shift;
    my $property = shift;

    defined $dbh
        or return undef;
    return undef
        unless defined $lookup && defined $property;
    # To avoid issues with different drivers return the field names in different cases, force to lower case
    $dbh->{FetchHashKeyName} = 'NAME_lc';
    my $sth = $dbh->prepare("SELECT Value FROM unattended WHERE Lookup = '$lookup' and Property = '$property';")
        or return undef;
    $sth->execute
        or return undef;
    my $ref = $sth->fetchrow_hashref()
        or return undef;
    my $value = $ref->{'value'}
        or return undef;
    $value =~ /\S/
        or return undef;
    print "Found $property for $lookup: $value\n";
    $value =~ /Empty/i
        and return '';
    return $value;
}

# Make this file evaluate to "true".
1;
