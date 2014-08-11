#!/usr/local/bin/perl
# magnitude_pole.pl
#  - Magnitude Pole

@A = ( 3,1,4,5,9,7,6,11 );
solution(@A);

sub solution {
        my (@A) = @_;            

        my ($max, $min) = ($A[0], $A[-1]);
        my %candidates;

        for my $i (0..$#A) {
                if ($A[$i] >= $max) {
                        $max = $A[$i];
                        $candidates{$i}++;
                }
        }
        for my $i (reverse 0..$#A) {
                if ($A[$i] <= $min) {
                        $min = $A[$i];
                        print "$i\n" if $candidates{$i};
                }
        }
        return -1;
}