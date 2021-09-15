#! /bin/bash -x

# explicit declaration of an array
declare -a fruits

counter=0

fruits[((counter++))]="apple" 
fruits[((counter++))]="banana"
fruits[((counter++))]="pears"
fruits[((counter++))]="kiwi"

echo counter:$counter

# print all elements of array
echo values:${fruits[*]}

# print all element index
echo index:${!fruits[*]}

# print specific index
index=2
echo $index:${fruits[$index]} 
echo index 3:${fruits[3]}

# update the index value
fruits[2]="coconut"
echo values:${fruits[*]}

# direct declaration
user[0]="normal"
user[1]="advanced"

# compund assignment
servers=("prod" "dev" "stage" "pre-prd" "beta" )
