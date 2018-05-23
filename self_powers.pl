#!/usr/bin/perl

#https://projecteuler.net/problem=48
#Strict and warnings are recommended.
use strict;
use warnings;

# Print a message to know that it started
print "Hello, Master!\n";
my $sum1 = 0;
for (my $x = 0; $x < 11; $x = $x + 1) {
  $sum1 = $sum1 + ($x**$x);
}
print "Done $sum1 \n";
