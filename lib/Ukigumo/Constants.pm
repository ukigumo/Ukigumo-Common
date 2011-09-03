use strict;
use warnings;
use utf8;

package Ukigumo::Constants;
use parent qw(Exporter);

our @EXPORT = qw(STATUS_SUCCESS STATUS_FAIL STATUS_NA);

use constant {
	STATUS_SUCCESS => 1,
	STATUS_FAIL    => 2,
	STATUS_NA      => 3,
};

1;

