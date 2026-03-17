#!/bin/bash

# Math Calculations

var1=$((5 + 5))
echo "Testing if \$var1 is 5 + 5 = 10! Answer: $var1"
sleep 1

var2=$(("$var1 * 2"))
echo "Testing if \$var2 is $var1 * 2= 20! Answer: $var2"
sleep 1

var3=$(("$var2 - 7"))
echo "Testing if \$var3 is $var2 - 7 = 13! Answer: $var3"
sleep 1

var4=$(("$var3 % 5"))
echo "Testing if \$var4 is $var3 % 5 = 3! Answer: $var4"
