#!/bin/bash

#Script to welcome users

cap_current_user=$(whoami | cut -c1 | tr [:lower:] [:upper:])
rest_current_user=$(whoami | cut -c2-99)

echo -n "Tere, "

echo -n "$cap_current_user$rest_current_user"

echo "!"
