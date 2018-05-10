#!/usr/bin/perl
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
#https://projecteuler.net/problem=4
use strict ;
use warnings ;
print "Hello Master!\n";
my $product1 = 0;
for (my $window1 = 100; $window1 < 1000; $window1 = $window1 + 1){
 for (my $window2 = 100; $window2 < 1000; $window2 = $window2 + 1){
   my $temp = $window1 * $window2;
   my $str1 = "$temp";
   if ($str1 eq reverse($str1)){
    if ($temp > $product1){
     $product1 = $temp;
    }
   }
 }
}
print "Done $product1 \n";
