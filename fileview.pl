#!/usr/local/bin/perl
# fileview.pl
#  - Displays the contents of a file

print "Enter name of file to view: ";
my $filename = <STDIN>; 
chomp($filename);

open (LOGFILE, $filename) or die "I couldn't get at $filename";

$title = <LOGFILE>;
substr($title, -2) = "";
print "Title: $title.txt\n";
for $line (<LOGFILE>) {
    print $line;
}
close LOGFILE;