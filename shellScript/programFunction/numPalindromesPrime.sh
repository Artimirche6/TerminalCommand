#!/bin/bash -x

function primeNum()
{
        num=$1
        for (( i=2; i<=$num/2; i++ ))
        do
                res=$(($num%$i))

                if [ $res -eq 0 ]
                then
                        echo " $num is not a Prime Number "
                        exit
                fi
        done

        echo " $num is a Prime Number "
}

function palindromeNum()
{
        rev=0
        num=$1

        while [ $num -gt 0 ]
        do
                dig=$(($num%10))
                rev=$(($rev*10+$dig))
                num=$(($num/10))
        done

        echo $rev
}

read -p "Enter the number to Check Prime Number : " num1
echo $num1 : "$( primeNum $num1 )"

read -p "Enter the number to check Palindrome Number : " num2
resulta="$( palindromeNum $num2 )"

if [ $resulta -eq $num2 ]
then
        echo " $num2 is Palindrome "
        echo $num2 : "$( primeNum $num2 )"
else
        echo " $num2 is not Palindrome "
fi


