#!/bin/bash
# Nimi: Marko
# Skripti nimi: kujund.sh
# Ülesanne: Skript küsib kasutajalt ridade arvu ja trükib kujundi, kus iga järgmine rida on ühe tärniga lühem.

# Kasutaja sisestus
read -p "Sisesta ridade arv: " readarv

# Kujundi trükkimine
for ((i=readarv; i>=1; i--))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo ""
done
