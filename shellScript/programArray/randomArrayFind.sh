#!/bin/bash -x

maxCount=10
count=0

while [ $count -lt $maxCount ]
do
	number[$count]=$(((RANDOM%899)+100))
	((count++))
done

# find smallest and second smallest number

echo ${number[*]}
small=${number[0]}

for (( i=0; i<maxCount; i++ ))
do
	if [ "${number[i]}" -lt $small ]
	then
		small=${number[i]}	
	fi
done

echo ${number[*]}
secondSmall=${number[0]}

for (( i=0; i<maxCount; i++ ))
do
        if [ "${number[i]}" -lt $secondSmall -a "${number[i]}" -ne $small ]
        then
                secondSmall=${number[i]}
        fi
done

echo ${number[*]}
echo " 2nd smallest number is " $secondSmall

# find largest and second largest number

echo ${number[*]}
large=${number[0]}

for (( i=0; i<maxCount; i++ ))
do
        if [ "${number[i]}" -gt $large ]
        then
                large=${number[i]}
        fi
done

echo ${number[*]}
secondLarge=${number[0]}

for (( i=0; i<maxCount; i++ ))
do
        if [ "${number[i]}" -gt $secondLarge -a "${number[i]}" -ne $large ]
        then
                secondLarge=${number[i]}
        fi
done

echo ${number[*]}
echo " 2nd largest number is " $secondLarge
