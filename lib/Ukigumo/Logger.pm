package Ukigumo::Logger;
use strict;
use warnings;
use Log::Minimal;

use Mouse;

has _infof => (
    is      => 'ro',
    default => sub {
        *Log::Minimal::infof{CODE};
    },
);

has _warnf => (
    is      => 'ro',
    default => sub {
        *Log::Minimal::warnf{CODE};
    },
);

no Mouse;

no warnings qw/redefine/;

sub infof {
    my ($self, @info) = @_;
    local $Log::Minimal::TRACE_LEVEL = 1;
    $self->_infof->(@info);
}

sub warnf {
    my ($self, @warn) = @_;
    local $Log::Minimal::TRACE_LEVEL = 1;
    $self->_warnf->(@warn);
}

use warnings;

1;

