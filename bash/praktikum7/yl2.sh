#!/bin/bash
# See skript väljastab 5x5 tärnidest koosneva kujundi

# Täiend
# See skript küsib kasutajalt ridade arvu ja tärnide arvu reas
# ning väljastab vastava tärnidest kujundi koos ridade nummerdamisega

echo -n "Sisesta ridade arv: "
read read_arv

echo -n "Sisesta tarnide arv reas: "
read tarnide_arv

for ((i=1; i<=read_arv; i++))
do
    echo -n "$i.  "
    for ((j=1; j<=tarnide_arv; j++))
    do
        echo -n "* "
    done
    echo
done
