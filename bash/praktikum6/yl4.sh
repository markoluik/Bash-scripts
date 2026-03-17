#!/bin/bash
# algarvu tuvastamine

echo -e "Sisesta suvaline arv: \c"
read arv

# kontrollime 0 ja 1
if [ $arv -eq 0 -o $arv -eq 1 ]; then
    echo "$arv - ei ole algarv"
else
    jagaja=2
    jaak=$(($arv % $jagaja))

    while [ $jaak -ne 0 ]
    do
        jagaja=$(($jagaja + 1))
        jaak=$(($arv % $jagaja))
    done

    if [ $arv -eq $jagaja ]; then
        echo "$arv - on algarv"
    else
        echo "$arv - ei ole algarv"
    fi
fi

# ---- Täiendus: esimese 20 täisarvu kontroll ----

echo -e "\nEsimesed 20 täisarvu:"

for arv in {1..20}
do
    if [ $arv -eq 0 -o $arv -eq 1 ]; then
        echo "$arv - ei ole algarv"
    else
        jagaja=2
        jaak=$(($arv % $jagaja))

        while [ $jaak -ne 0 ]
        do
            jagaja=$(($jagaja + 1))
            jaak=$(($arv % $jagaja))
        done

        if [ $arv -eq $jagaja ]; then
            echo "$arv - on algarv"
        else
            echo "$arv - ei ole algarv"
        fi
    fi
done
