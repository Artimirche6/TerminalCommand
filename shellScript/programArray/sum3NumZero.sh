#! /bin/bash -x

count=0
num=3

echo " Enter 3 input : "
read num1
read num2
read num3

array[((count++))]=$num1
array[((count++))]=$num2
array[((count++))]=$num3

echo ${array[*]}

for (( i=0; i<$num-2; i++ ))
do
	for (( j=i+1; j<$num-1; j++ ))
	do
		for (( k=j+1; k<$num; k++ ))
		do
			total=$((${array[i]} + ${array[j]} + ${array[k]}))
			if [ $total -eq 0 ]
			then 
				echo " Sum of three integer add to Zero : " ${array[i]}, ${array[j]}, ${array[k]}
			fi
		done
	done
done


