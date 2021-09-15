#! /bin/bash -x

a=6
b=6

# if [ condition ] ; then action ; fi

# if [ condition ] ; then action ; else action2 ; fi

# if [ condition1 ] ; then action1 ; elif [ condition2 ] ; then action2 ; else action3 ; fi

# > -gt -greater , < -lt -less than , == -eq , <= -le , >= -ge , != -ne

if [ $a -gt $b ]
then 
	echo " a is big "
elif [ $a -eq $b ]
then 
	echo " a and b are equal "
else
	echo " b is big "
fi
