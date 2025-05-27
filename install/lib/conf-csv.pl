# unattend.csv
# ============
# "Lookup","Property","Value"
# "0003473ECA3C","ComputerName","Test Computer"
#
# The lookup_value function will query the above file when
# passed a Lookup, Property pair and return Value.  If Value
# is 'Empty' then '' is returned.  All errors return undef.

use strict;
use warnings;

# Must be named CONFIG
package CONFIG;
use Carp;

my $config_hash;

# Parse a single line from a CSV file and return an array of its
# items.  Unlikely to be called externally.
sub parse_line ($) {
    my ($line) = @_;
                                                                                                                           
    my @ret;
                                                                                                                           
    # Clobber line ending, if any.
    chomp $line;
    $line =~ s/\r\z//;
                                                                                                                           
    # Hack to make every field start with comma delimiter
    $line = ",$line";
                                                                                                                           
    while ($line ne '') {
        if ($line =~ /^,\"((?:\"\"|[^\"])*)\"((?:,|\z).*)/) {
            my ($val, $rest) = ($1, $2);
            # Replace double-quote with single-quote
            $val =~ s/\"\"/\"/g;
            push @ret, $val;
            $line = $rest;
        }
        elsif ($line =~ /^,([^,]*)((?:,|\z).*)/) {
            push @ret, $1;
            $line = $2;
        }
        else {
            die "Unparsable line:\n$line";
        }
    }
                                                                                                                           
    return @ret;
}

# Setup connection to database
sub setup ($$$) {
    my $self = shift;
    my $filename = shift;
    my $dummy1 = shift;
    my $dummy2 = shift;

    open CSV_FILE, $filename
        or croak "Unable to open $filename for reading: $^E";

    # Read first line to get field names.
    my $first_line = <CSV_FILE>;
    my @field_names = parse_line ($first_line);

    # Check for duplicate field names.
    my %names;
    foreach my $name (@field_names) {
        (exists $names{$name})
            and die "Duplicate field name \"$name\" in $filename";
        $names{$name} = undef;
    }
                                                                                                                           
    my $num_fields = scalar @field_names;
    while (my $line = <CSV_FILE>) {
        next if $line =~ /^\s*$/;
        my @fields = parse_line ($line);
        $num_fields == scalar @fields
            or die "Wrong number of items (expected $num_fields):\n$line\n ";
        (exists $config_hash->{$fields[0]}->{$fields[1]})
            and die "Duplicate key found: $fields[0]/$fields[1] in $filename";
        $config_hash->{$fields[0]}->{$fields[1]} = $fields[2];
    }

    close CSV_FILE
        or croak "Unable to close $filename: $^E";
}

# Query database looking up value for Lookup, Property pair
sub lookup_value ($$) {
    my $self = shift;
    my $lookup = shift;
    my $property = shift;

    return undef
        unless defined $lookup && defined $property;
    (exists $config_hash->{$lookup}->{$property})
        or return undef;
    my $value = $config_hash->{$lookup}->{$property}
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
