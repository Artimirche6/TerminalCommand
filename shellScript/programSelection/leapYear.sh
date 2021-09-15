#!/bin/bash -x

read -p "Enter the Year : " y

a=$(( y % 4 ))
b=$(( y % 100 ))
c=$(( y % 400 ))


if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then
        echo "$y is a Leap Year"
else
        echo "$y is not a Leap Year"
fi

