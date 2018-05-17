#!/usr/bin/perl
use strict ;
use warnings ;
#https://projecteuler.net/problem=10
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.
print "Hello Master!\n";
use Math::BigInt lib => 'FastCalc';

my $sum = 2;
for(my $i = 3; $i < 100; $i++) {
 my $flag1 = (isPrime($i));
 if ($flag1){
  $sum = $sum + $i;
  }
}
print "Done ";
print $sum,"\n";
############################################################
sub isPrime {
 my ($p) = @_;
 my $primeFlag = 1;
 #is prime test
 for(my $j = 2; $j < sqrt($p)+1; $j++) {
  if($p % $j == 0){
   $primeFlag = 0;
   #break;
   }
 }
return $primeFlag;
}
