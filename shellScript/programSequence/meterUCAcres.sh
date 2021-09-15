#!/bin/bash -x

feet1=60
feet2=40

feet=$(($feet1*$feet2))
echo Result in Feet:: $feet ft

meter=$(echo $feet | awk '{printf "%.3f\n", '$feet' / 3.281}')
echo Rectangular plot of 60 feet x 40 feet in meter :: $meter m

plots=25

meter1=$(awk 'BEGIN {printf "%.3f\n", '$meter' * '$plots'}')

echo " Area of 25 such plots in meter :: " $meter1

acres=$(awk 'BEGIN {printf "%.3f\n", '$meter1' * 0.000247}')

echo " Area of 25 such plots in acres :: " $acres acre
