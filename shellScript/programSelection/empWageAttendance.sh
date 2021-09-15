#! /bin/bash -x

#constant variable
IS_PRESENT=1

#variable
empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT ]
then 
	echo " Employee is Present "
else 
	echo " Employee is Absent "
fi
