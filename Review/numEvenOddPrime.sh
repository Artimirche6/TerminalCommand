#!/bin/bash -x

function primeNum()
{
num=$1
        for (( i=2; i<=$num/2; i++ ))
        do
                rem=$(($num%$i))

                if [ $rem -eq 0 ]
                then
                        exit
                fi
        done

        echo $num 
}

function evenNum()
{
	num=$1
	rem=$(($num%2))
	if [ $rem -eq 0 ]
	then
		echo $num
	fi
}

function oddNum()
{
        num=$1
        rem=$(($num%2))
        if [ $rem -eq 1 ]
        then
                echo $num
        fi
}

echo " Enter the range value num1 and num2 " 
read num1
read num2

n=0

for ((i=$num1;i<$num2;i++))
do
	prime[((n++))]=$( primeNum $i )
	even[((n++))]=$( evenNum $i )
	odd[((n++))]=$( oddNum $i )
done

echo " Prime Numbers : " ${prime[*]}
echo " Even Number : " ${even[*]}
echo " Odd Number : " ${odd[*]}
