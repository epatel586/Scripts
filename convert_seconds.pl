#!/usr/local/bin/perl
# convert_seconds.pl
#  - Convert Seconds

print "Enter a time in seconds: ";
$seconds = <STDIN>;
convert_seconds($seconds);

sub convert_seconds {
    my ($seconds) = @_;
    
    $hour  = $seconds/3600;
    $hour = int $hour;
    $hour = sprintf("%02s",$hour);
    $hour_rem = $seconds-($hour*3600);
    
    $min = $hour_rem/60;
    $min = int $min;
    $min = sprintf("%02s",$min);
    $min_rem = ($min*60);


    $sec = $hour_rem - $min_rem;
    $sec = sprintf("%02s",$sec);
    
    print "$hour:$min:$sec\n";
}