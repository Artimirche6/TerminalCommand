#!/bin/bash -x

read -p "1. Feet to Inch 2. Feet to Meter 3. Inch to Feet 4. Meter to Feet : " choice 

case $choice in

        1)
        	read -p " Enter the value to convert Feet into Inches : " feet
		inch=$(($feet*12))
		echo " Feet to Inch :: $feet ft = $inch in"
        ;;
        2)
        	read -p "Enter the value to convert Feet into Meter : " feet1
		meter=$(awk 'BEGIN {printf "%.3f\n", '$feet1' / 3.281}')
		echo " Feet to Meter :: $feet ft = $meter m"

        ;;
        3)
        	read -p "Enter the value to convert inch into feet : " inch
		feet2=$(awk 'BEGIN {printf "%.3f\n", '$inch' / 12}')
		echo " Inch to Feet :: $inch in = $feet2 ft"
        ;;
        4)
        	read -p "Enter the value to convert meter into feet : " meter1
		feet3=$(awk 'BEGIN {printf "%.3f\n", '$meter1' * 3.281}')
		echo " Meter to Feet :: $meter1 m = $feet3 ft"

        ;;
        *)
        	echo " INVALID CHOICE "
        ;;

esac
