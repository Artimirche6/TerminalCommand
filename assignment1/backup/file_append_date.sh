#! /bin/bash -x

for file in $( ls *.log.1 )
do 
	baseName=$( echo $file | awk -F. '{print $1}' )
	extension=$( echo $file | awk -F. '{print $2}' )
	date=$(date +%d%m%Y)
	newName=${baseName}-${date}.${extension}
	mv $file $newName
done
