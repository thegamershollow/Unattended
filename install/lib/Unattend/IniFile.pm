# Object to represent a .ini file.  Includes methods for parsing and
# generating.

package Unattend::IniFile;

use warnings;
use strict;
use Carp;
use Tie::RefHash;

# We cannot "use fields" here because we want to overload the hash
# dereference operator.  So, we use an array as our representation,
# and constants to refer to the slots in the array.
use constant SECTIONS => 0;
use constant COMMENTS => 1;
use constant SECTION_COMMENTS => 2;
use constant SORT_INDEX => 3;
use constant SECTION_SORT_INDEX => 4;

# Overload hash dereference.  Return "sections" hash, which is the
# interesting part.
use overload
    '%{}' => sub { my ($self) = @_;
                   return $self->[SECTIONS];
               };

use constant NO_VAL_REF => [ 'Magic no_val string' ];

# Constructor.  Arguments, if provided, will be passed to "read".
sub new ($;@) {
    my ($proto, @read_args) = @_;
    my $class = ref $proto || $proto;

    my $self = [ ];

    # Initialize all of our slots with hashes.
    tie %{$self->[SECTIONS]}, 'Unattend::IniFile::_Hash';
    tie %{$self->[COMMENTS]}, 'Unattend::IniFile::_Hash';
    tie %{$self->[SECTION_COMMENTS]}, 'Unattend::IniFile::_Hash';
    tie %{$self->[SORT_INDEX]}, 'Unattend::IniFile::_Hash';
    tie %{$self->[SECTION_SORT_INDEX]}, 'Unattend::IniFile::_Hash';

    bless $self, $class;

    scalar @read_args > 0
        and $self->read (@read_args);
    return $self;
}

# Return the "unforced" value for a section or section+key.  This will
# either be the actual value, or a Promise which can be "forced" to
# deliver the value.
sub noforce ($$;$) {
    my ($self, $section, $key) = @_;

    if (defined $key) {
        my $sec_hash = $self->{$section};
        return (tied %$sec_hash)->fetch_noforce ($key);
    }
    else {
        return (tied %$self)->fetch_noforce ($section);
    }
}

# Return true if argument (returned by noforce) is a promise.
sub is_promise ($) {
    my ($arg) = @_;
    return ref $arg eq 'Unattend::Promise';
}

# Helper hash to detect recursive forcing of promises.
my %recursion_detect;
tie %recursion_detect, 'Tie::RefHash';

# Force a value returned by noforce.  Also detect recursive loops, to
# return undef when they happen.
sub force ($) {
    my ($value) = @_;

    if (is_promise ($value)) {
        if ($recursion_detect{$value}) {
            # We are in the process of evaluating this promise, so cause
            # the recursion to "bottom out" by returning undef.
            $value = undef;

        }
        else {
            # Remember we were here so that we can detect loops.
            local $recursion_detect{$value} = 1;
            $value = $value->force ();
        }
    }

    return $value;
}

# This is garbage.  Clean it up!  (FIXME)
sub push_value ($$$$) {
    my ($self, $section, $key, $value) = @_;

    my $orig_value = $self->noforce ($section, $key);

    # Convert value into a Promise
    $self->{$section}->{$key} = $value;
    $value = $self->noforce ($section, $key);

    # Install a new Promise which does the "right thing".
    $self->{$section}->{$key} =
         sub {
             my $forced = force ($value);
             return (defined $forced ? $forced : force ($orig_value));
         };

    return 1;
}

# Return the magic scalar representing "no value".
sub no_value ($) {
    my ($self) = @_;
    return NO_VAL_REF;
}

# Get the (modifiable) comments field for a section or section+key.
sub comments : lvalue {
    my ($self, $section, $key) = @_;

    my $ref = (defined $key
               ? \$self->[COMMENTS]->{$section}->{$key}
               : \$self->[SECTION_COMMENTS]->{$section});

    defined $$ref
        or $$ref = [ ];

    $$ref;
}

# Convert comments for a section or section+key into canonical form
# (array of lines).
sub _canonicalize_comments ($) {
    my ($comments) = @_;

    defined $comments
        or $comments = [ ];

    ref $comments
        and return $comments;

    return [ split /\n/, $comments ];
}

# Get the (modifiable) sort index for a section or section+key.
sub sort_index : lvalue {
    my ($self, $section, $key) = @_;

    my $ref = (defined $key
               ? \$self->[SORT_INDEX]->{$section}->{$key}
               : \$self->[SECTION_SORT_INDEX]->{$section});
    defined $$ref
        or $$ref = -1;
    $$ref;
}

# Return the largest sort index of any section or section+key pair,
# but without "forcing" any sections.
sub max_index ($) {
    my ($self) = @_;
    my $ret = 0;

    foreach my $section (keys %{$self}) {
        my $index = $self->sort_index ($section);
        $ret < $index
            and $ret = $index;
        my $sec_hash = $self->noforce ($section);

        defined $sec_hash && !is_promise ($sec_hash)
            or next;

        foreach my $key (keys %{$sec_hash}) {
            $index = $self->sort_index ($section, $key);
            $ret < $index
                and $ret = $index;
        }
    }

    return $ret;
}

# Helper function for merging comments.
sub _merge_comments ($$) {
    my ($c1, $c2) = @_;

    $c1 = _canonicalize_comments ($c1);
    $c2 = _canonicalize_comments ($c2);

    # If the new comments are non-trivial or the old comments are
    # trivial, return the new.
    return ((0 < scalar grep { /[^\s;]/ } @$c2
             || 0 == scalar grep { /[^\s;]/ } @$c1)
            ? $c2
            : $c1);
}

# Merge another IniFile into ourselves.
sub merge ($$) {
    my ($self, $other) = @_;

    my $other_max_index = $other->max_index ();

    # Offset our sort indices so that we will sort after other
    foreach my $section (keys %{$self}) {
        $self->sort_index ($section) += $other_max_index;
        # Too much duplicated code!  FIXME
        my $sec_hash = $self->noforce ($section);
        defined $sec_hash && !is_promise ($sec_hash)
            or next;
        foreach my $key (keys %{$sec_hash}) {
            $self->sort_index ($section, $key) += $other_max_index;
        }
    }

    foreach my $section (keys %{$other}) {
        # BIG HACK FIXME FIXME FIXME
        is_promise ($self->noforce ($section))
            and $self->{$section} = { };
        # Merge the section comments.
        $self->comments ($section) =
            _merge_comments ($self->comments ($section),
                             $other->comments ($section));
        # Overwrite the section sort index.
        $self->sort_index ($section) = $other->sort_index ($section);
        foreach my $key (keys %{$other->{$section}}) {
            # Copy the value.
            $self->{$section}->{$key} = $other->{$section}->{$key};
            # Merge the comments.
            $self->comments ($section, $key) =
                _merge_comments ($self->comments ($section, $key),
                                 $other->comments ($section, $key));
            # Overwrite the sort index.
            $self->sort_index ($section, $key) =
                $other->sort_index ($section, $key);
        }
    }

    return 1;
}

# Characters needing no quotes on output
my $nq_out_chars = qr{[a-zA-Z0-9_.,<>:/~%*\-\\\$]};
# Characters needing no quotes on input
my $nq_in_chars = qr{(?:$nq_out_chars|[() \x80-\xFF])};

# Regexp matching a single token (key or value)
my $token = qr{(?:\".*?\"|$nq_in_chars+?)};

# Read a .ini file and merge its contents into ourselves.  Second
# argument, if present, is a regexp; sections whose names do not match
# will be skipped (useful optimization when only examining part of a
# large file).
sub read ($$;$) {
    my ($self, $file, $sect_pattern) = @_;
    my $section;
    my $comments = [ ];

    my $sect_re = (defined $sect_pattern
                   ? qr{^(?:$sect_pattern)\z}i
                   : qr{.?});

    my $acc = new ref $self;

    open FILE, $file
        or die "Unable to open $file: $^E";

    while (my $line = <FILE>) {
        chomp $line;
        # Clobber CR (for testing on Unix).
        $line =~ s/\r//;
        # Remove leading and trailing whitespace.
        $line =~ s/^\s+//;
        $line =~ s/\s+\z//;

        # Skip blank lines
        $line =~ /^\z/
            and next;

        if ($line =~ /^\[\s*(.+?)\s*\]\z/) {
            # New section header
            $section = $1;
            $section =~ $sect_re
                or next;
            my $old_index = $acc->sort_index ($section);
#            $old_index >= 0
#                and (die "Duplicate [$section] sections in $file, ",
#                     "lines $old_index and $.\n");
            $old_index < 0
                and $acc->sort_index ($section) = $.;
            $acc->comments ($section) = $comments;
            $comments = [ ];
            # Make sure section exists, even it it contains no values
            (exists $acc->{$section})
                or $acc->{$section} = undef;
            next;
        }
        elsif ($line =~ /^([;\#])/) {
            # Comment
            my $comment = $1;
            chomp $comment;
            push @$comments, $comment;
            next;
        }
        elsif (defined $section && $section !~ $sect_re) {
            # Skip sections which do not match regexp, but accumulate
            # comments for sections which do match.
            $comments = [ ];
            next;
        }
        elsif ($line =~
               /^($token)\s*(?:=\s*($token\s*(?:,\s*$token\s*)*))?\z/) {
            # key=value setting
            my ($key, $rest) = ($1, $2);
            defined $section
                or die "$key outside any section at $file line $.";

            # Strip quotation marks around key.
            $key =~ /^\"(.*)\"$/
                and $key = $1;

            my $val;

            if (defined $rest) {
                my @elts;
                while ($rest =~ /\S/) {
                    my $elt;
                    ($elt, $rest) = $rest =~ /^($token)\s*(?:,|\z)\s*(.*)/;
                    defined $elt
                        or die 'Internal error';
                    # Strip quotation marks around element.
                    $elt =~ /^\"(.*)\"\z/
                        and $elt = $1;
                    push @elts, $elt;
                }
                scalar @elts > 0
                    or die "Internal error";
                $val = (scalar @elts > 1
                        ? \@elts :
                        $elts[0]);
            }
            else {
                # No value provided.
                $val = $acc->no_value;
            }

            my $old_index = $acc->sort_index ($section, $key);
#            $old_index >= 0
#                and (die "Duplicate $key settings in $file, ",
#                     "lines $old_index and $.\n");
            $acc->sort_index ($section, $key) = $.;
            $acc->{$section}->{$key} = $val;
            $acc->comments ($section, $key) = $comments;
            $comments = [ ];
            next;
        }
        
        die "Unrecognized line:\n  $line\n...in $file, ";
    }

    close FILE
        or die "Unable to close $file: $^E";

    return $self->merge ($acc);
}

# Handy string for indentation.
my $global_indent = '    ';

# Dump comments for a section or for a section+key pair.
sub _dump_comments ($$;$) {
    my ($self, @sect_key) = @_;
    my @ret;

    my $indent = $global_indent;
    my $comments = _canonicalize_comments ($self->comments (@sect_key));

    if (!exists $sect_key[1]) {
        # Section data.
        # Do not indent.
        $indent = '';
        # Precede with a blank line unless one is already present.
        exists $comments->[0] && $comments->[0] =~ /^\s*\z/
            or unshift @$comments, '';
    }

    # Format the comments.  Make sure they are preceeded by the
    # comment character.
    foreach my $comment (@$comments) {
        $comment =~ /^\s*(?:;|\z)/
            or $comment = "; $comment";
        push @ret, "$indent$comment";
    }

    return @ret;
}

# Put quotes around a string if needed.
sub _maybe_quote ($) {
    my ($arg) = @_;

    $arg =~ /^$nq_out_chars+\z/
        and return $arg;
    return "\"$arg\"";
}

sub generate ($) {
    my ($self) = @_;
    my @ret;

    foreach my $section (sort { $self->sort_index ($a)
                                    <=> $self->sort_index ($b) }
                         keys %{$self}) {
        (defined $self->{$section})
            or next;
        push @ret, $self->_dump_comments ($section);
        push @ret, "[$section]";
        foreach my $key (sort { $self->sort_index ($section, $a)
                                    <=> $self->sort_index ($section, $b) }
                         keys %{$self->{$section}}) {
            my $value = $self->{$section}->{$key};
            defined $value
                or next;
            push @ret, $self->_dump_comments ($section, $key);
            $key = _maybe_quote ($key);
            if (ref $value && $value == $self->no_value) {
                push @ret, "$global_indent$key";
            }
            else {
                # Convert value to a string.
                my @elts = (ref $value eq 'ARRAY'
                            ? @$value
                            : ($value));
                my $string = join ',', map { _maybe_quote ($_) } @elts;
                push @ret, "$global_indent$key = $string";
            }
        }
    }

    # Strip leading blank lines
    while (0 < scalar @ret && $ret[0] =~ /^\s*\z/) {
        shift @ret;
    }

    return @ret;
}

# Special magical hash.  When a proc is stored, we convert it into a
# Promise and store that instead.  When fetched, the Promise is
# forced.

package Unattend::IniFile::_Hash;
use Unattend::FoldHash;
use base qw(Unattend::FoldHash::Nestable);
use Unattend::Promise;

sub STORE ($$$) {
    my ($self, $key, $value) = @_;

    my $new_value = (ref $value eq 'CODE'
                     ? Unattend::Promise->new ($value)
                     : $value);

    return $self->SUPER::STORE ($key, $new_value);
}

sub FETCH ($$) {
    my ($self, $key) = @_;

    my $value = $self->SUPER::FETCH ($key);

    if (Unattend::IniFile::is_promise ($value)) {
        # Store it back to automatically convert hashes to FoldHashes.
        $self->SUPER::STORE ($key, Unattend::IniFile::force ($value));
    }

    return $self->SUPER::FETCH ($key);
}

sub fetch_noforce ($$) {
    my ($self, $key) = @_;

    return $self->SUPER::FETCH ($key);
}

1;
