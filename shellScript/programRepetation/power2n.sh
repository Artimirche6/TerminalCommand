#!/bin/bash -x

n=$1

echo " Power of 2 raised till $n "

for (( i=0; i<=n; i++ ))
do
        echo $((2**i))
done
