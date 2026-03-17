#!/bin/bash
# Nimi: Marko
# Skripti nimi: menu.sh
# Ülesanne: Skript kuvab kasutajale menüü ja väljastab sõnumi vastavalt kasutaja tehtud valikule.

# Menüü kuvamine
echo "1) liha ja kartulid"
echo "2) kala ja krõpsud"
echo "3) supp ja salat"

# Kasutaja valiku küsimine
read -p "Tee oma valik (1 või 2 või 3): " valik

# Valiku kontrollimine ja sõnumi väljastamine
case $valik in
    1)
        echo "Väga maitsev, aga jälgi oma tervist!"
        echo "Head isu!"
        ;;
    2)
        echo "Brititoit on maitsev!"
        echo "Head isu!"
        ;;
    3)
        echo "Nii tervislik ja igav..."
        echo "Head isu!"
        ;;
    *)
# Väikene failsafe, kui valitakse suurem number kui 1-3
        echo "Vale valik! Palun vali 1, 2 või 3."
        ;;
esac
