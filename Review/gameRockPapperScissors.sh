#! /bin/bash/ -x

compChoice=$(( ($RANDOM%3)+1 ))

userChoice=$(( ($RANDOM%3)+1 ))

choice1="rock"
choice2="scissors"
choice3="paper"

if [ $compChoice -eq $userChoice ]
then
	echo "Its a Tie"
elif [ $compChoice -eq 1 -a $userChoice -eq 2 ]
then
	echo "Computer Wins"
elif [ $compChoice -eq 2 -a $userChoice -eq 1 ]
then
	echo "User Wins"
elif [ $compChoice -eq 2 -a $userChoice -eq 3 ]
then
        echo "Computer Wins"
elif [ $compChoice -eq 3 -a $userChoice -eq 2 ]
then
        echo "User Wins"
elif [ $compChoice -eq 3 -a $userChoice -eq 1 ]
then
        echo "Computer Wins"
elif [ $compChoice -eq 1 -a $userChoice -eq 3 ]
then
        echo "User Wins"
else
    	echo "There was an error please try again"
fi
