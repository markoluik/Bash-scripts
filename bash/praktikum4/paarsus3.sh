#!/bin/bash

#Script to check if the number inserted in previous script is even/odd


number=$1 #First argument passed to this script

if [ $number -ne 0 ]; then

        echo -e "\nActivated script ODD number"
	echo -e "Value of the variable: $number\n"
fi
