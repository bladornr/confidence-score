#!/usr/bin/env perl

use strict;
use warnings;

print generate_confidence_score( { max => 101, strfmt => '%.2f' } );


sub generate_confidence_score {
    my $args = shift;
    my $score = rand( $args->{max} // 101 );
    $score = sprintf( $args->{strfmt}, $score ) if $args->{strfmt};
    return $score;
}
