#!/bin/bash -x

digit1=$(((RANDOM%6)+1))
digit2=$(((RANDOM%6)+1))

echo Result : $(($digit1+$digit2))
