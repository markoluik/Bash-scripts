#!/bin/bash

#Using While to calculate stuff

echo -n "Insert a random integer: "
read num

sum=0
while [ $num -ne 0 ]
do
	leftover=$(($num % 10))
	sum=$(($sum + $leftover))
	num=$(($num / 10))
done
echo "The sum of your inserted number is $sum"
