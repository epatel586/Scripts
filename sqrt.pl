#!/usr/local/bin/perl
# sqrt.pl
#  - Compute Square Root

$n=100;
compute_sqrt($n);

sub compute_sqrt {
    my ($n) = @_;

	sqroot(1, $n); # PASS INITIAL GUESS OF '1' AND RADICAND TO SQROOT SUB
		sub sqroot {
    	my ($guess, $x) = @_;
    	while ( get_accuracy($guess, new_guess($guess, $x))  > .000000000000000001) { # CHECK DIFFERENCE BETWEEN OLD GUESS AND NEW GUESS
        	$guess = new_guess($guess, $x); # MAKE OLD GUESS THE NEW GUESS AND RUN WHILE LOOP AGAIN
    	}
    	$guess = int $guess;
    	print "$guess\n"; # PRINT GUESS IF (OLD GUESS - NEW GUESS) IS VERY CLOSE

		}

		sub new_guess { # REFINE THE OLD GUESS TO MAKE MORE ACCURATE
    		my ($guess, $x) = @_;
    		my $x_div_guess = $x / $guess; # DIVIDE RADICAND BY OLD GUESS
    		return ($guess + $x_div_guess) / 2; # RETURN, AS NEW GUESS, THE AVERAGE OF OLD GUESS AND RADICAND DIVIDED BY OLD GUESS
		}

		sub get_accuracy { 
    		my ($guess, $newguess) = @_;
	    return (abs ($guess - $newguess)); # COMPARES HOW CLOSE OLD GUESS AND NEW GUESS ARE
		}
}