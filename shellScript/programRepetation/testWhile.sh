#! /bin/bash -x

# while [ condition ]; do acts ; done

counter=1;

while [ $counter -lt 11 ]
do 
	echo $counter
	#((counter++))
	counter=$(( counter + RANDOM%6 ))
done
