#! /bin/bash -x
x=120
function add()
{
	local x=100
	#local a=5
	#local b=6
	local a=$1
	local b=$2
	result=$(( a + b ))
	echo $result
}

a=15
b=20

result=$( add $a $b )

e=4
f=10

result=$( add $e $f )

echo x:$x
