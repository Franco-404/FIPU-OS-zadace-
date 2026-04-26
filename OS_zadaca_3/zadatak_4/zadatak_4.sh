#!/bin/bash

naziv_direktorija=$1


if [ "$#" -ne 1 ]; then
	echo "Potrebno je prosljediti samo jedan argument"
	exit 
fi

if [[ -d "$naziv_direktorija" && -f "zadatak_4.sh" ]]; then
	zip -r svi_zapisi.zip "."

else 
	echo "Direktorij ne postoji"
fi	
