#!/usr/local/bin/perl
# test.pl
#  - Testing

@array = (1..10);
$array = @array;
$a = 6;
$b = 'Five';

print "The array is: @array\n";
print "The array is $array elements long\n";

$array[0] = 1;

for ($i=0; $i<$array; $i++) {
    print "Currently at $array[$i].\n";
}

if ($a == 5) {
	print "It's five!\n";
} elsif ($a == 6) {
    print "It's six!\n";
} else {
    print "It's something else.\n";
}

if ($b eq 'Five') {
	print "It's five!\n";
}

sub Welcome {
	$c = "Welcome to Perl!\n";
	$d = substr($c, 0, 7);     # "Welcome"
	$e = substr($c, 7);        # " to Perl!\n"

	print "$d\n";
	print "$e";
}

Welcome();

sub multiply {
# Multiplies two numbers
    	my ( @ops ) = @_;
    	return $ops[0] * $ops[1];
}

for $i (1 .. 10) {
	print "$i squared is ", multiply($i, $i), "\n";
}

sub numbercount {
# Counting numbers in a string using regex
	my( $number ) = @_;
    	while ($number =~ /(\d+)/g) {
        	print "I found the number $1.\n";
        	$number_count++;
    	}
    print "There are $number_count numbers here.\n";
}

numbercount("Look, 300 5-sided, 4-colored pentagon maps.");

sub splitjoin {

	my ( $test_string ) = @_;

	print "$test_string\n";
	print "$other_test_string\n";

	@split_string=split(/\s+/,$test_string);

	for ($i=0; $i<=$#split_string; $i++){
		print "$split_string[$i]\n";
	}

	$joined_string=join('.',@split_string);
	print "$joined_string\n";
}

$test_string = "This is a test string";
$other_test_string = "This is also a test string";
splitjoin($test_string,$other_test_string);

#$print = $test_string =~ tr/tT//;
#print "$print\n";

$sec = 9;
$sec = sprintf("%02s",$sec);
print $sec;