#! /bin/bash -x

for file in $( ls *.txt )
do 
	# extract basename from file abc.txt -> abc
	folder=$( echo $file | awk -F. '{print $1}' )
	# printing file and folder
	echo file:$file
	echo folder:$folder
	# we are checking for folder present
	# suppose if abc -d is present
	if [ -d $folder ]  # selection statement
	then
		rm -r $folder
	fi
	# creating an folder with basename
	mkdir $folder	
	# copying file to folder
	cp $file $folder
done

