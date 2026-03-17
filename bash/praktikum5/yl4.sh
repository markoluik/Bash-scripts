#!/bin/bash
#Script to auto get username, time and to greet user
#Copied variables from previous assigments
#Variable to get name and capitalize it
cap_current_user=$(whoami | cut -c1 | tr [:lower:] [:upper:])
rest_current_user=$(whoami | cut -c2-99)

#Time variable to get only hours
vartime=$(date +"%H")

#echo -e "Current time $vartime \c"

if [ $vartime -ge 6 -a $vartime -lt 12 ]; then
        echo "Good morning $cap_current_user$rest_current_user!"

elif [ $vartime -ge 12 -a $vartime -lt 18 ]; then
        echo "Good afternoon $cap_current_user$rest_current_user!"

elif [ $vartime -ge 18 -a $vartime -lt 22 ]; then
        echo "Good evening $cap_current_user$rest_current_user!"

elif [ $vartime -ge 22 -a $vartime -lt 24 ] || [ $vartime -ge 0 -a $vartime -lt 6 ]; then
        echo "Good night $cap_current_user$rest_current_user!"

else
        echo "Wrong input"
fi
