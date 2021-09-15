#! /bin/bash -x

#constant variable
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20

#variable
empCheck=$((RANDOM%3)) # 1, 2, 0

case $empCheck in
	$IS_PRESENT_FULL_TIME)
		empHr=8
	;;
	$IS_PRESENT_PART_TIME)
		empHr=4
	;;
	*)
		salary=0
	;;

esac

salary=$(( empHr * EMP_RATE_PER_HR ))
