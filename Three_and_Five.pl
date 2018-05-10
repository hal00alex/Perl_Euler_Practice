#!/usr/bin/perl

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
#https://projecteuler.net/problem=1

#Strict and warnings are recommended.
use strict;
use warnings;

# Print a message to know that it started
print "Hello, Master!\n";
my $sum1 = 0;
for (my $x = 0; $x < 1000; $x = $x + 1) {
  if (($x % 3 == 0) || ($x % 5 == 0)){
    $sum1 = $sum1 + $x;
  }
}
print "Done $sum1 \n";
