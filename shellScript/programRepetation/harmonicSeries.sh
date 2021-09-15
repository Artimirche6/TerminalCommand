#!/bin/bash -x

n=$1

echo Harmonic Series till $n

for (( i=1; i<=n; i++ ))
do
        series=1/$i
        echo $series
done
