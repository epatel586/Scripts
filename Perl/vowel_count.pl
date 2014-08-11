#!/usr/local/bin/perl
# vowel_count.pl
#  - Vowel Count

$s = "Thisisastring. Helloooo!";
count_vowels($s);

sub count_vowels {
    my ( $s ) = @_;
        
	my @letters = ( a,e,i,o,u,A,E,I,O,U );
	my @counts;

	for ( 0..$#letters ) {
    	$counts[$_] = () = $s =~ /$letters[$_]/g;
	}

	for ( @counts ) {
    	$count += $_;
	}

print "There are $count vowels in the string\n";
}
