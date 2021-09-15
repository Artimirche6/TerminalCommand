#! /bin/bash -x

#constant variable
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20

totalWorkHr=0

for ((day=1;day<=$MAX_WORKING_DAYS;day++))
do
	#variable
	empCheck=$((RANDOM%3))

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
	
	totalWorkHr=$(( totalWorkHr + empHr ))
	salary=$(( empHr * EMP_RATE_PER_HR ))

done

totalSalary=$(( totalWorkHr * EMP_RATE_PER_HR ))
