#!/bin/bash

#Script for chefs, calculating number of cookies needed for cake

echo -n "Insert baking tray length and width in cm (e.g. 55 40) : "
read tray_len tray_wid

echo -n "Insert cookie length and width in cm (e.g. 5 5) : "
read cookie_len cookie_wid

echo -n "Insert how many layers of cake (e.g. 5) : "
read cake_layers

echo -n "Insert how many cookies are there in a package(e.g. 6) : "
read cookies_per_pack

tray_size=$(( $tray_len * $tray_wid ))
cookie_size=$(( $cookie_len * $cookie_wid ))
cookies_per_layer=$(( $tray_size / $cookie_size ))
total_cookie_amount=$(( $cookies_per_layer * $cake_layers ))
cookie_packs_needed=$(( $total_cookie_amount / $cookies_per_layer ))
cookie_leftovers=$(( $total_cookie_amount % $cookies_per_pack ))

# Debugging
#echo "TEST: tray_size = $tray_size"
#echo "TEST: cookie_size = $cookie_size"
#echo "TEST: cookies_per_layer = $cookies_per_layer"
#echo "TEST: total_cookie_amount = $total_cookie_amount"
#echo "TEST: cookie_packs_needed = $cookie_packs_needed"
#echo "TEST: cookie_leftovers = $cookie_leftovers"

# Final result
echo -e "\nYou need $cookie_packs_needed cookie packages and an extra $cookie_leftovers cookies"

# If extra cookie packs needed
if [ $cookie_leftovers != 0 ]; then
        echo -e "\nYou must buy $(( $cookie_packs_needed + 1 )) cookie packages."
else
        echo -e "\nYou have the exact amount of cookies needed."
fi
