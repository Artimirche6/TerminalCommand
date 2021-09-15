#! /bin/bash/ -x

for ((i=1;i<100;i++))
do
	fizz=$(($i%3))
	buzz=$(($i%5))
	fizzBuzz=$(($i%15))

	if [ $fizzBuzz -eq 0 ]
	then
		echo FIZZBUZZ
	elif [ $fizz -eq 0 ]
	then 	
		echo FIZZ
	elif [ $buzz -eq 0 ]
	then 
		echo BUZZ
	else
		echo $i
	fi
done
