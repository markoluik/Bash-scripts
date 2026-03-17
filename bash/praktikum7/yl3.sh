#!/bin/bash
# See skript küsib kasutajalt ridade ja tärnide arvu
# ning väljastab õõnsa tärnidest kujundi koos ridade nummerdamisega

echo -n "Sisesta ridade arv: "
read read_arv

echo -n "Sisesta tarnide arv reas: "
read tarnide_arv

for ((i=1; i<=read_arv; i++))
do
    echo -n "$i. "

    # Esimene ja viimane rida
    if [ $i -eq 1 ] || [ $i -eq $read_arv ]; then
        for ((j=1; j<=tarnide_arv; j++))
        do
            echo -n "* "
        done
    else
        # Siserida: tärn + tühikud + tärn
        echo -n "*"
        for ((j=1; j<=((tarnide_arv*2)-3); j++))
        do
            echo -n " "
        done
        echo -n "*"
    fi

    echo
done
