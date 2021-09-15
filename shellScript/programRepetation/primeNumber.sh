#!/bin/bash -x

read -p "Enter the number : " num

for (( i=2; i<=$num/2; i++ ))
do
        res=$(($num%$i))

        if [ $res -eq 0 ]
        then
                echo " $num is not a Prime Number "
                exit 0
        fi
done

echo " $num is a Prime Number "
