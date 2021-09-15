#!/bin/bash -x

echo " Enter the Range to display Prime Number between num and num1"
read num num1

for (( i=$num; i<=$num1; i++ ))
do
        flag=0

        for (( j=2; j<=$i/2; j++ ))
        do
                res=$(($i%$j))

                if [ $res -eq 0 ]
                then
                        flag=1
                        break
                fi
        done

                if [ $flag -eq 0 ]
                then
                        echo $i
                fi

done
