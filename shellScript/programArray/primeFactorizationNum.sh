#!/bin/bash -x

read -p " Enter the number : " num

isPrime=1
count=0

for (( i=2; i<=$num; i++ ))
do
	rem=$(($num%$i))
	
	if [ $rem -eq 0 ]
	then
		
		for (( j=2; j<=i/2; j++ ))
   		do
      			res=$(($i%$j))

      			if [ $res -eq 0 ]
      			then
         			isPrime=0
         			break
      			else
				isPrime=1
			fi
		done
	
		if [ $isPrime -eq 1 ]
   		then
    			array[((count++))]=$i
		fi

	fi

done

echo " Prime Factorization of $num is : " ${array[*]}
