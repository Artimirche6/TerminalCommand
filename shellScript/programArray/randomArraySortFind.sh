#!/bin/bash -x

maxCount=10
count=0

while [ $count -lt $maxCount ]
do
	number[$count]=$(((RANDOM%899)+100))
	((count++))
done

echo ${number[*]}

for (( i=0; i<maxCount; i++ ))
do
	for (( j=i+1; j<maxCount; j++ ))
	do
		if [ "${number[i]}" -gt "${number[j]}" ]
		then
			temp=${number[i]}
			number[i]=${number[j]}
			number[j]=$temp;
		fi
	done
	
	echo ${number[*]}
done

echo " 2nd largest number is " ${number[8]}
echo " 2nd smallest number is " ${number[1]}
