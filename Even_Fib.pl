#!/usr/bin/perl
#https://projecteuler.net/problem=2
#Strict and warnings are recommended.
use strict;
use warnings;

# Print a message to know that it started
print "Hello, Master!\n";
my $sum1 = 0;
my $first = 1;
my $second = 2;
my $temp = 0;
for (my $x = 0; $x < 10; $x = $x + 1) {
  $temp = $first + $second;
  $second  = $temp;
  $first = $second;
  if ($temp % 2 == 0) {
    $sum1 = $sum1 + $temp;
  }
}
print "Done $sum1 \n";
