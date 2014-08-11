#!/usr/local/bin/perl
# remove_subtring.pl
#  - Removes a block of characters

remove_substring(abcdefghi,2,4);

sub remove_substring {
    my ($s, $p, $n) = @_;

    $p = $p - 1;
   
    substr($s, $p, $n) = "";
 
    print "$s\n";
}
