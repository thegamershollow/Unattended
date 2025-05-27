# Package to implement hash with case-insensitive keys.

package Unattend::FoldHash;

use warnings;
use strict;
use Carp;

require Tie::Hash;

# For some reason, "use fields" causes Perl 5.8.3 to warn about the
# deprecated use of pseudo-hashes.  Work around this bug by using
# constants and array accesses.

use constant HASH => 0;
use constant DNAMES => 1;
use constant FOLD => 2;

sub TIEHASH {
    my ($class, $fold) = @_;
    # Default folding scheme is to convert to lower-case
    defined $fold
        or $fold = sub { lc $_[0] };
    my $self = [ ];
    my %hash;
    tie %hash, 'Tie::StdHash';
    $self->[HASH] = tied %hash;
    $self->[DNAMES] = { };
    $self->[FOLD] = $fold;
    return bless $self, $class;
}

# Return display name for a key.
sub _dname ($$) {
    my ($self, $canon_key) = @_;
    
    return (defined $canon_key
            ? $self->[DNAMES]->{$canon_key}
            : undef);
}

sub FETCH {
    my ($self, $key) = @_;
    my $canon_key = $self->[FOLD] ($key);

    return $self->[HASH]->FETCH ($canon_key);
}

sub STORE {
    my ($self, $key, $value) = @_;
    my $canon_key = $self->[FOLD] ($key);

    # Since this is a store, record the display name.
    $self->[DNAMES]->{$canon_key} = $key;
    return $self->[HASH]->STORE ($canon_key, $value);
}

sub DELETE {
    my ($self, $key) = @_;
    my $canon_key = $self->[FOLD] ($key);
    return $self->[HASH]->DELETE ($canon_key);
}

sub CLEAR {
    my ($self) = @_;
    $self->[DNAMES] = { };
    return $self->[HASH]->CLEAR ();
}

sub EXISTS {
    my ($self, $key) = @_;
    my $canon_key = $self->[FOLD] ($key);
    return $self->[HASH]->EXISTS ($canon_key);
}

sub FIRSTKEY {
    my ($self) = @_;
    my $canon_key = $self->[HASH]->FIRSTKEY ();

    # Return the key's display name.
    return $self->_dname ($canon_key);
}

sub NEXTKEY {
    my ($self, $lastkey) = @_;
    my $canon_lastkey = $self->[FOLD] ($lastkey);

    my $canon_key = $self->[HASH]->NEXTKEY ($canon_lastkey);

    # Return the key's display name.
    return $self->_dname ($canon_key);
}

# These do not appear to be necessary.
#sub UNTIE { }
#sub DESTROY { }


## "Nested" variant, which handles autovification.  Code shamelessly
## stolen from Tie::RefHash::Nestable.
package Unattend::FoldHash::Nestable;
use base qw(Unattend::FoldHash);

sub STORE {
    my ($self, $key, $value) = @_;

    if (ref($value) eq 'HASH' and not tied %$value) {
        my @elems = %$value;
        tie %$value, ref $self;
        %$value = @elems;
    }

    return $self->SUPER::STORE ($key, $value);
}

1;
