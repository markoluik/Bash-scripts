#!/bin/bash

#Arranging a bus event, increase int by 1 if not enough seats
echo -n -e "\nInsert number of passangers: "
read passangers

echo -n -e "\nInsert number of seats on a bus: "
read seats

bus=$((passangers / seats))

# People who do not have seats
leftovers=$((passangers % seats))

if [ $leftovers -gt 0 ]; then
	echo -e "\n$leftovers passangers have no seats on a bus"
        bus=$(($bus + 1))
fi

# Pluralization
if [ $bus == 1 ]; then
	echo -e "\nYou need $bus bus\n"
else
	echo -e "\nYou need $bus busses\n"
fi
