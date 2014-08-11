#!/usr/local/bin/perl
# copypaste_subtring.pl
#  - Copies and Pastes a block of characters

copypaste_substring(abcdefghi,zoo,4);

sub copypaste_substring {
    my ($s1, $s2, $p) = @_;

    $s_start = substr($s1,0,$p);
    $s1 =~ s/[a-zA-z]{$p}/$s2/;
   
    $s = $s_start . $s1;
 
    print "$s\n";
}
