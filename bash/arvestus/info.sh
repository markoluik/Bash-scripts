#!/bin/bash
# Nimi: Marko
# Skripti nimi: info.sh
# Skripti ülesanne: Skript tervitab sisselogitud kasutajat ning väljastab jooksva kuupäeva ja kellaaja

# Tervitus sisselogitud kasutajale
echo "Tere, $USER!"

# Kuupäev ja kellaaeg
kuupaev=$(date +"%d.%m.%Y")
kellaaeg=$(date +"%H:%M")

echo "Täna on $kuupaev kell $kellaaeg"
