#!/bin/bash
#comment

echo -e "Insert time: \c"
read time

if [ $time -ge 6 -a $time -lt 12 ]; then
	echo "Good morning!"

elif [ $time -ge 12 -a $time -lt 18 ]; then
	echo "Good afternoon!"

elif [ $time -ge 18 -a $time -lt 22 ]; then
	echo "Good evening!"

elif [ $time -ge 22 -a $time -lt 24 ] || [ $time -ge 0 -a $time -lt 6 ]; then
	echo "Good night!"

else
	echo "Wrong input"
fi
