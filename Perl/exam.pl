
@A = qw(-7 1 5 2 -4 3 0 );
solution(@A);

sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    for ( 0 .. $#A ){
        if ( $A[$_] > $A[$_+1]) {
        	print "yess\n";
        	            
        }
        
    }
}