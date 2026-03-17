#!/bin/bash

#Getting time of year from number

echo -e "Insert month number \c"
read month

if [ $month -eq 1 -o $month -eq 2 -o $month -eq 12 ]; then
	echo "It is currently winter"

elif [ $month -ge 3 -a $month -le 5 ]; then
	echo "It is currently spring"

elif [ $month -ge 6 -a $month -le 8 ]; then
	echo "It is currently summer"

elif [ $month -ge 9 -a $month -le 11 ]; then
	echo "It is currently autumn"

else
	echo "Number not available"

fi
