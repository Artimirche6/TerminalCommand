#!/bin/bash -x

n=$1

echo " Power of 2 raised till $n "

i=0

while [ $i -le $n ]
do
        power=$((2**i))
	echo $power

        if [ $power -eq 256 ]
        then
                exit
        fi

        ((i++))
        
done
