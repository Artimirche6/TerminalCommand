#! /bin/bash -x

#constant variable
IS_PRESENT=1
EMP_RATE_PER_HR=20

#variable
empCheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT ]
then 
	empHr=8
	salary=$(( empHr * EMP_RATE_PER_HR ))
else 
	salary=0
fi

