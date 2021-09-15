#!/bin/bash -x

n1=$(((RANDOM%899)+100))

n2=$(((RANDOM%899)+100))

n3=$(((RANDOM%899)+100))

n4=$(((RANDOM%899)+100))

n5=$(((RANDOM%899)+100))

#Maximum

if [ $n1 -gt $n2 -a $n1 -gt $n3 -a $n1 -gt $n4 -a $n1 -gt $n5 ]
then
      echo "$n1 is a Greatest Number"
elif [ $n2 -gt $n3 -a $n2 -gt $n4 -a $n2 -gt $n5 ] 
then
     echo "$n2 is a Greatest Number"
elif [ $n3 -gt $n4 -a $n3 -gt $n5 ] 
then  
     echo "$n3 is a Greatest Number"
elif [ $n4 -gt $n5 ] 
then  
     echo "$n4 is a Greatest Number"
else
     echo "$n5 is a Greatest Number"
fi


#Minimum

if [ $n1 -lt $n2 -a $n1 -lt $n3 -a $n1 -lt $n4 -a $n1 -lt $n5 ]
then
      echo "$n1 is a Smallest Number"
elif [ $n2 -lt $n3 -a $n2 -lt $n4 -a $n2 -lt $n5 ]
then
     echo "$n2 is a Smallest Number"
elif [ $n3 -lt $n4 -a $n3 -lt $n5 ]
then
     echo "$n3 is a Smallest Number"
elif [ $n4 -lt $n5 ]
then
     echo "$n4 is a Smallest Number"
else
     echo "$n5 is a Smallest Number"
fi
