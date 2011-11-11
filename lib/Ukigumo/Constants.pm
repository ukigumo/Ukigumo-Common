use strict;
use warnings;
use utf8;

package Ukigumo::Constants;
use parent qw(Exporter);

our @EXPORT = qw(STATUS_SUCCESS STATUS_FAIL STATUS_NA STATUS_SKIP);

use constant {
    STATUS_SUCCESS => 1,
    STATUS_FAIL    => 2,
    STATUS_NA      => 3,
    STATUS_SKIP    => 4,
};

1;
__END__

=head1 NAME

Ukigumo::Constants - constants for Ukigumo

=head1 DESCRIPTION

A module provides constants for L<Ukigumo>.

=head1 CONSTANTS

=over 4

=item STATUS_SUCCESS

=item STATUS_FAIL

=item STATUS_NA

=item STATUS_SKIP

There is no reason to run the test cases.
(e.g. There is no new commits)

=back

