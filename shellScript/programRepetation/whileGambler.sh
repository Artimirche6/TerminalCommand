#! /bin/bash -x

amount=100
won=0
loss=0
betTimes=0

while [ $amount -ne 200 ] && [ $amount -ne 0 ]
do
	bet=$((RANDOM%2))
	betTimes=$((betTimes+1))

	if [ $bet -eq 1 ]
	then
		amount=$(($amount+1))
		won=$((won+1))		
	else
		amount=$(($amount-1))
                loss=$((won+1))
	fi
done

echo " Bet Times : " $betTimes
echo " WON : " $won
echo " LOSS : " $loss
echo " Amount : " $amount
