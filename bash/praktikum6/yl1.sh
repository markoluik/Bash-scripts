#!/bin/bash
#Sum of first 10 numbers, add only even numbers

sum=0

for (( num=1; num<11; num++ ))
do
	leftover=$(($num % 2))
	if [ $leftover -eq 0 ]; then
		sum=$(($sum + $num))
		echo "$sum"
	fi
done
echo "From numbers 1-10 (included) even number sum: $sum"
