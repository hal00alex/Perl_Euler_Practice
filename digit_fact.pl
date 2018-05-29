#!/usr/bin/perl

#https://projecteuler.net/problem=34
#Strict and warnings are recommended.
use strict;
use warnings;
use POSIX;

# Print a message to know that it started
print "Hello, Master!\n";
my $sum1 = 0;
my $total = 0;
my $x1 = 0;
my $x2 = 0;
my $x3 = 0;

for ($sum1 = 100; $sum1 < 1000; $sum1 = $sum1 + 1) {
  my $temp = $sum1;
  $x1 = floor($temp/100);
  $temp = $temp/10;
  $x2 = $temp%10;
  $x3 = $sum1%10;
  #print "Digits";
  #print $x1, $x2, $x3;
  #print "\n";
  my $fact1 = Factorial($x1);
  my $fact2 = Factorial($x2);
  my $fact3 = Factorial($x3);
  $total = $fact3 + $fact2 +$fact1;
  if ($total == $sum1){
    print ($sum1);
  }
}
print "\nDone \n";

############################################
sub Factorial{
my ($p) = @_;
if ($p == 1){
   return (1);
}
my $fact = 1;
for (my $j = 1; $j <= $p; $j++){
   $fact = $fact * $j;
   }
return ($fact)
}
