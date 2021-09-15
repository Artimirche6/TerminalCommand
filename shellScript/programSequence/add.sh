#! /bin/bash -x

#variables
a=10
b=45

c=$(( a + b ))
d=$( expr $a + $b )
echo sum : $c 
echo sum : $d
