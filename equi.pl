#!/usr/local/bin/perl
# equi.pl
#  - Equilibrium Index

@A = qw(-7 1 5 2 -4 3 0 );
equi(@A);

sub equi {
    my (@A)=@_;
    my $total_sum = 0;
	$total_sum += $_ for @A;
	my $left_sum = 0;
	for( 0..$#A ){
		my $right_sum = $total_sum - $left_sum - $A[$_];
		return $_ if $left_sum == $right_sum;
		$left_sum += $A[$_];
	}
	return -1;
}
