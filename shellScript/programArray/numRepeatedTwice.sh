#! /bin/bash -x

echo " Enter the range value"
read numStart
read numEnd
count=0

for num in `seq $numStart $numEnd`
do
	number[$count]=$num
	count=$(($count+1))
done

echo ${number[*]}

for (( i=0; i<$numEnd; i++ ))
do
	rem=$((${number[i]}%11))

	if [ $rem -eq 0 ]
	then
		echo "${number[i]} is repeated twice "
		array[i]=${number[i]}
		continue
	fi
done

echo " Digits that are repeated twice : " ${array[*]}
