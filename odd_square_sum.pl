#!/usr/local/bin/perl
# odd_square_sum.pl
#  - Odd Square Sum

$x = 1;
$y = 5;
odd_square_sum($x,$y);

sub odd_square_sum {
    my ($x, $y) = @_;

    @diff = ($x..$y);

	$j=0;
	# This loop is simplified using 0..$#array and $_
    for ( 0..$#diff ) {
    	if ($diff[$_] % 2) {
    		$sum[$j] = $diff[$_];
    		$square[$j] = $sum[$j] * $sum[$j];
    		$j++;
    	}
    }

    # This is a shorcut for getting the sum of an array
    $odd_square_sum += $_ for @square;

    print "$odd_square_sum\n";
}
