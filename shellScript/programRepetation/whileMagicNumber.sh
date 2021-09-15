#! /bin/bash -x

numStart=1
numEnd=100

while [ $numStart -lt $numEnd ]
do 
	total=$(($numStart+$numEnd))
	mid=$(($total/2))

	echo " Gussed number is between $numStart and $numEnd "
	echo " Enter  1 for Yes and 2 for No "

	read choice

	if [ $choice -eq 1 ]
	then 
		echo " Gussed number is less than $mid or greater than $mid "
		echo "Enter 1 for Lesser and 2 for Greater "

		read choice
	
		if [ $choice -eq 1 ]
		then
			numEnd=$((mid))
			continue
		elif [ $choice -eq 2 ]
		then
			numStart=$(($mid+1))
			continue
		fi

	elif [ $choice -eq 2 ]
	then
		echo " Gussed Number is : " $mid
		break
	fi
done
