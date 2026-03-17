#!/bin/bash

# Here we test simple if then else
echo -n "Insert number 1 or number 2: "
read var

if [ $var -eq 1 ]; then
	echo -e "\nYou entered: $var"

elif [ $var -eq 2 ]; then
	echo -e "\nYou entered: $var"

else
	echo -e "\nWrong number! Please insert number 1 or number 2, while you entered $var"

fi

# Here we test combinations
if [ $var == 1 ] || [ $var == 2 ]; then
	echo -e "\nYou inserted the correct numbers\n"

else
	echo -e "\nPlease insert the correct numbers (1 or 2). You inserted $var\n"
fi
