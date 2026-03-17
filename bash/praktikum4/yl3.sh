#!/bin/bash
#
osch=0
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "
read osch
if [ $osch -eq 1 ] ; then
     echo "You Pick up Unix (Sun Os)"
else #### nested if i.e. if within if ######
       if [ $osch -eq 2 ] ; then
             echo "You Pick up Linux (Red Hat)"
       else
             echo "What you don't like Unix/Linux OS."
       fi
fi


#Echo nr1 töötab siis, kui sisestatakse nr 1 osch muutujasse ja see muutuja võrdub number 1ga

#Echo nr2 töötab siis, kui sissetatakse nr 2 osch muutujasse ja see muutuja võrdub number 2ga

#Kui sisestatakse väljaspool 1-2 numbrit osch muutujasse, siis echo tagastab kolmanda lause
