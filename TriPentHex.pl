#!/usr/bin/perl -w

#https://projecteuler.net/problem=45
use strict;
use POSIX;

print "Hello, Master!\n";
my $guess = 0;
#we know we can start at 50 because of Euler shows the first tri-pent-hex number
for(my $i=50; $i < 100000;$i++)
{
    $guess = floor(sqrt($i*(3*$i-1)));
    if($guess%2==1)
    {
        if(($i*(3*$i-1))==($guess*($guess+1)))
        {
           print $i, $guess, $i*(3*$i-1);
        }
    }
}
print "\nDone! \n";
