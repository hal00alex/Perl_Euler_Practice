!/usr/bin/perl

#https://projecteuler.net/problem=22
#Strict and warnings are recommended.
use strict;
use warnings;

# Print a message to know that it started
print "Hello, Master!\n";
#read and sort file
open(IN, "<", 'names.txt');
my @names = sort map { (my $name = $_) =~ s/\W//g; $name } split(/,/, <IN>);
close(IN);
#get length of the list
my $length = @names;
my $total = 0;
#starting at 1 because 0*i is 0
for (my $i = 1; $i < 3; $i = $i + 1) {
  my $score1 = 0;
  my $name1 = $names[$i];
  foreach my $letter (split //xms, $name1){
    #ASCII MATH
    my $temp1 =  ord($letter) - 64;
    $score1 += $temp1;
  }
  $total = $total + $i*$score1;
  }
print "\nDone $total\n";

################################################
sub score{
my $name1 = @_;
print $name1;
my $score1 = 0;
foreach my $letter (split //xms, $name1){
  #ASCII MATH
  my $temp1 =  ord($letter) - 64;
  $score1 += $temp1;
}
print $score1;
return $score1;
}
