#!/usr/local/bin/perl
# classroom_analysis.pl
#  - Classroom Analysis

@grades = (7, 2, 10, 9, 3);
$min_grade = 9;

max_grade(@grades);

sub max_grade {
    my ($grades) = @_;

    @grades=sort { $a <=> $b } @grades;

    print "Highest grade: $grades[-1]\n";
}


count_successful_students(\@grades,$min_grade);

sub count_successful_students {
    my ($grades,$min_grade) = @_;
    
    $count=0;
    foreach (@grades) {
         if ($_ >= $min_grade) {
            $count++;
         }
    }
    print "Number of passing students: $count\n";    
}

average_grade(@grades);

sub average_grade {
	my ($grades) = @_;

	$sum=0;
	$grades=@grades;
	$sum += $_ for @grades;
	$average = $sum/$grades;

	print "Average grade: $average\n";
}