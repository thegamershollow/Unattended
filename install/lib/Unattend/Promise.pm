package Unattend::Promise;

use warnings;
use strict;
use Carp;

use overload
    'fallback' => 1;

my $magic_str = "Unattend::Promise magic string";
my $magic_ref = \$magic_str;

# Create a sub which behaves exactly like our argument, but different
# in one subtle way.
sub _wrap ($) {
    my ($proc) = @_;

    return sub (@) {
        my @args = @_;
        if (exists $args[0] && ref $args[0] && $args[0] == $magic_ref) {
            # Special magic to let us retrieve or modify the proc.
            my $old_proc = $proc;
            exists $args[1]
                and $proc = $args[1];
            return $old_proc;
        }

        # The usual case; do what the original proc does.
        return &$proc (@args);
    };
}

sub new {
    my ($proto, $proc) = @_;
    my $class = ref $proto || $proto;

    defined $proc && ref $proc eq 'CODE'
        or croak "Argument to Unattend::Promise->new not a sub... bailing";

    my $self = _wrap ($proc);

    return bless $self, $class;
}

sub force {
    my ($self) = @_;

    my $value = &$self ();
    &$self ($magic_ref, sub { return $value });

    return $value;
}

1;
