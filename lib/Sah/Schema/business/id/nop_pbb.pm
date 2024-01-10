package Sah::Schema::business::id::nop_pbb;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Indonesian property tax number (NOP PBB)',
    prefilters => ['Str::remove_nondigit', 'Business::ID::NOPPBB::check_nop_pbb'],
    description => <<'MARKDOWN',

MARKDOWN
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'123', valid=>0, summary=>'Too short'},
        {value=>'327311000109900990', valid=>1},
        {value=>'32.73.110.001.099-0099.0', valid=>1, summary=>'Non-digits removed', validated_value=>'327311000109900990'},
    ],
}];

1;

# ABSTRACT:
