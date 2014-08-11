#!/usr/local/bin/perl
# count_digits.pl
#  - Count Digits

$s = "ZE123abc3D";
count_digits($s);

sub count_digits {
    my ( $s ) = @_;

	$digitcount = $s =~ tr/0-9//;
	$lettercount = $s =~ tr/a-zA-z//;

	print "The string contains $digitcount digits.\n";
	print "The string contrains $lettercount letters.\n";	
}1