package HTML::FormFu::Constraint::RequestToken;

use strict;

# VERSION

use Moose;

extends 'HTML::FormFu::Constraint';

sub BUILD {
    my ( $self ) = @_;

    $self->message($self->parent->message);

    return;
}

sub constrain_value {
    my ( $self, $value ) = @_;

    return $self->parent->verify_token( $value );
}

1;
