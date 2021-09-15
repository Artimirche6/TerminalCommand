#!/bin/bash -x

function Fah_To_Cel()
{
        celsious=$(awk 'BEGIN {printf "%.2f\n", ('$temp' - 32) * 5 / 9}')
        echo $celsious
}

function Cel_To_Fah()
{
        fahrenheit=$(awk 'BEGIN {printf "%.2f\n", ('$temp' * 9 / 5) + 32}')
        echo $fahrenheit
}


echo "Converting between different Temperature Scales"
echo "Feezing Point (0 C / 32 F) and Boiling Point of Water (100 C / 212 F)"

echo "Choice 1: Fahrenheit to Celsius"
echo "Choice 2: Celsius to Fahrenheit"

read -p " Enter the Choice " choice

case $choice in

        1)
                read -p " Enter the temperature ( F ) : " temp
                result="$( Fah_To_Cel $temp )"
                echo " $temp F is $result C "
        ;;

        2)
                read -p " Enter the temperature ( c ) : " temp
      result="$( Cel_To_Fah $temp )"
                echo " $temp C is $result F "
        ;;

        *)
                INVALID CHOICE
        ;;

esac

