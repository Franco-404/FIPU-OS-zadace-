#!/bin/bash

putanjaGit=$1

if [ $# -ne 1 ]; then
	echo "Potrebno je prosljediti tocno jedan argument"
	exit
fi

if [ ! -d "$putanjaGit" ]; then
	echo "Putanja ne sadrzi direktorij"
	exit
fi

if [ ! -d "$putanjaGit/.git" ]; then
	echo "Putanja nije Git repozitorij"
	exit
fi

cd "$putanjaGit"

touch repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Dodao sam repozitorij_info.txt"
git log
