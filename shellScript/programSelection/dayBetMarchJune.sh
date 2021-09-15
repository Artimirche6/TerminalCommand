#!/bin/bash -x

date=$1
month=$2

echo Date: $date / $month

if [ $month -le 3 ]
        then
                if [ $date -ge 1 ] && [ $date -lt 20 ]
                        then
                                echo $date $month "False"
                else
                        if [ $date -ge 20 ] && [ $date -le 31 ]
                                then
                                        echo $date $month "True"
                        fi
                fi
fi
