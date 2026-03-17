#!/bin/bash
# See skript küsib kasutajalt ridade arvu
# ja väljastab kombineeritud kujundi,
# kus iga järgneva rea kohta väheneb 'o' märkide arv
# ja suureneb '*' märkide arv

echo -n "Sisesta ridade arv: "
read read_arv

for ((i=1; i<=read_arv; i++))
do
    echo -n "$i. "

    # 'o' märkide osa
    for ((j=i; j<read_arv; j++))
    do
        echo -n "o "
    done

    # '*' märkide osa
    for ((k=1; k<=i; k++))
    do
        echo -n "* "
    done

    echo
done
