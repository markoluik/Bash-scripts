#!/bin/bash

#Script to display time

vardate=$(date +"%A, %d %B, %Y")

varmonth=$(date +"%B %Y")
vardisplay=$(cal | tail -n 7)

vartime=$(date +"%H:%M:%S")

varcal=$(cal | tail -n7)


echo "Today is $vardate"
echo "Time is $vartime"

echo -e "\n""Calender of $varmonth"
echo "$vardisplay"
