#!/bin/bash -x

declare -A diceNum

diceNum["1"]=0
diceNum["2"]=0
diceNum["3"]=0
diceNum["4"]=0
diceNum["5"]=0
diceNum["6"]=0

count=1

while [ $count -gt 0 ]
do
	roll=$(((RANDOM%6)+1))
	((diceNum[$roll]++))
	
	echo " Dice Count of $roll : " ${diceNum[$roll]}

	if [ "${diceNum[$roll]}" -eq 10 ]
	then
		max=$roll
		echo " Dice Number maximum times : " $max
		break
	fi
	
	count=$(($count+1))
done

echo Dice: ${diceNum[*]}
echo Dice: ${!diceNum[*]} 

for key in "${!diceNum[*]}"  
do
	echo "$key : ${diceNum[$key]}"; 
done

min=1;

a="${diceNum[$max]}";

for key in "${!diceNum[@]}" 
do
	if [ "${diceNum[$key]}" -lt $a ] 
	then
		min=$key  
		a=${diceNum[$key]}
	fi
done

echo "The number with highest number is $max occured ${diceNum[$max]} times";
echo "The number with lowest number is $min with ${diceNum[$min]} times ";

