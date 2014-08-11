#!/usr/local/bin/perl
# select_subtring.pl
#  - Selects a block of characters

select_substring(abcdefghi,2,4);

sub select_substring {
	my ($s, $p1, $p2) = @_;

    $p1 = $p1 - 1;
    $p2 = $p2 - $p1; 

    $s = substr($s, $p1, $p2);

    print "$s\n";

}
