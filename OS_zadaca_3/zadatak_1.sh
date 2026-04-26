#!/bin/bash

aps_putanja=$1
dat_nastavak=$2
postoji=false

if [ "$#" -ne 2 ]; then
	echo "Potrebno je prosljediti tocno 2 argumenta"
	exit 
fi
for datoteka in "$aps_putanja"/*."$dat_nastavak"; do
	if [ -f "$datoteka" ]; then
		echo "$(basename "$datoteka")"
		postoji=true
	fi
done

if [ "$postoji" = false ]; then
	echo "Ne postoje datoteke sa nastavkom $dat_nastavak"
fi

