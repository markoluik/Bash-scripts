#!/bin/bash
# See skript küsib kasutajalt ridade arvu
# ja väljastab kasvava tärnidest kolmnurga,
# kus tärnide arv vastab rea numbrile

echo -n "Sisesta ridade arv: "
read read_arv

for ((i=1; i<=read_arv; i++))
	do
		echo -n "$i. "
	for ((j=1; j<=i; j++))
	do
		echo -n "* "
	done
done
