#!/bin/bash
#Script to ask about age and then insert into right age group


echo -n "Please insert your age: "
read age

if [ $age -gt 0 -a $age -lt 11 ]; then
	echo "You are a child at $age years old"

elif [ $age -ge 11 -a $age -lt 18 ]; then
	echo "You are a teenager at $age years old"

elif [ $age -ge 18 -a $age -lt 63 ]; then
	echo "You are an adult at $age years old"

elif [ $age -ge 63 ]; then
	echo "You are a senior at $age years old"

else
	echo "Wrong input"
fi
