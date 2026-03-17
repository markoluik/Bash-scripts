#!/bin/bash

#Testing even and odd numbers
echo -n "Insert an number: "
read number

leftovers=$(( $number % 2 ))

#if [ $leftovers == 0 ]; then
#	echo -e "\nNumber is even"
#else
#	echo -e "\nNumber is odd\n"
#fi


#Run scripts to check for even/odd numbers

if [ $leftovers -eq 0 ]; then
	./paarsus.sh "$number" #run even numbers
else
	./paarsus3.sh "$number" #run odd numbers
fi
