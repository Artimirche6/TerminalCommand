#!/bin/bash -x


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

echo " Enter the two number : "
read num1
read num2

resultnum1="$( palindromeNum $num1 )"
resultnum2="$( palindromeNum $num2 )"

if [ $resultnum1 -eq $resultnum2 ]
then
        echo " $num1 $num2 is Palindrome "
else
        echo " $num1 $num2 is not Palindrome "
fi

