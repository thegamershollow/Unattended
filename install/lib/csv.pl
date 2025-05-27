# This file implements a Perl class for dealing with
# comma-separated-value (CSV) spreadsheets, such as those saved from
# OpenOffice or Excel.
#
# The file is assumed to look something like this:
#
#   "Asset Tag","Owner","Description","Key"
#   "x1000",1348,"Microsoft Windows XP","12345-ABCDE-FGHIJ-KLMNO-PQRST"
#   "x1001",1348,"Microsoft Office XP","12345-ABCDE-FGHIJ-KLMNO-PQRST"
#   "x1002",1348,"Adobe Acrobat 5.0","KWW505R7104502-158"
#
# That is, each line consists of items separated by commas.  Items may
# be enclosed in double-quotes, and must be so enclosed if they
# include any funny characters (like commas).
#
# Conceptually, the spreadsheet is a collection of records mapping
# field names to field values.  The first line of the file contains
# the names of the fields, while each other line provides the values
# of the fields for one record.

use strict;

package CSV;
use Carp;

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

# Class method.  Read a CSV file and return an object representing it.
# Specifically, return a reference to an array of records, where each
# record is a hash mapping field names (from the first line of the
# file) to field values.
sub read_file ($$) {
    my ($class, $filename) = @_;

    my $ret = [ ];

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
        my $record = { };
        foreach my $i (0 .. $num_fields - 1) {
            my $field_name = $field_names[$i];
            $record->{$field_name} = $fields[$i];
        }
        push @$ret, $record;
    }

    close CSV_FILE
        or croak "Unable to close $filename: $^E";

    bless $ret, $class;
    return $ret;
}

# Method.  Index a CSV object by one of its fields.  Take a field name
# as argument, and return a hash mapping from a value to an array of
# records having that value for the field.  Optional argument
# "transform" is a procedure which modifies the value before placing
# it in the hash.
sub index_by ($;$) {
    my ($self, $field_name, $transform) = @_;

    my $ret = { };

    foreach my $record (@$self) {
        (exists $record->{$field_name})
            or croak "No such field $field_name; bailing";
        my $value = $record->{$field_name};
        defined $transform
            and $value = &$transform ($value);

        push @{$ret->{$value}}, $record;
    }

    return $ret;
}

1;
