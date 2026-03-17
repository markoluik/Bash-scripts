#!/bin/bash

#Script to check if the number inserted in previous script is even/odd

number=$1 #first argument passed to this script

if [ $number -ne 1 ]; then

	echo -e "\nActivated script EVEN number"
	echo -e "Value of the variable: $number\n"

fi
