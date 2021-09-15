#! /bin/bash -x

read -p " Enter the folder Name : " folderName


if [ -d $folderName ]
then      
	echo $folderName folder already exists.
else      
	echo " $folderName folder doesn't exits "
        mkdir $folderName
        echo "$folderName folder created "
fi

