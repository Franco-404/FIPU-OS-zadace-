#!/bin/bash

broj=$1

if [ "$#" -ne 1 ]; then
	echo "Potrebno je prosljediti tocno 1 argument"
	exit
fi

if [[ "$broj" -gt 10 || "$broj" -lt 1 ]]; then
	echo "Broj je izvan raspona"
	exit
fi

niz=()

for (( i=1; i<="$broj"; i++)); do
	niz+=("$i")
done

echo "${niz[@]}" >> brojevi.txt
