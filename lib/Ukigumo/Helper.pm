use strict;
use warnings;
use utf8;

package Ukigumo::Helper;
use parent qw(Exporter);
use Ukigumo::Constants;

our @EXPORT = qw(status_str status_color);

sub status_str {
	my $status = shift;
    +{
        STATUS_SUCCESS() => 'SUCCESS',
        STATUS_FAIL()    => 'FAIL',
        STATUS_NA()      => 'NA',
	}->{$status} || "Unknown: $status";
}

sub status_color {
	my $status = shift;
	+{
		STATUS_SUCCESS() => 'green',
		STATUS_FAIL()    => 'red',
		STATUS_NA()      => 'yellow',
	}->{$status} || "cyan";
}

1;

