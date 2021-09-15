#! /bin/bash -x

head=0
tail=0

while [ $head -le 11 ] && [ $tail -le 11 ]
do 
	flip=$((RANDOM%2))
	
	if [ $flip -eq 1 ]
	then
		head=$((head+1))
	else
		tail=$((tail+1))
	fi
done

echo " HEAD : " $head
echo " TAIL : " $tail 
