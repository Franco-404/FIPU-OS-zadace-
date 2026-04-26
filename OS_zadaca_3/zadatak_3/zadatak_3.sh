 #!/bin/bash

dir="/mnt/c/Users/franc/Documents/Github/FIPU-OS-zadace-/OS_zadaca_3/zadatak_3/screenshots"
N=1
for datoteka in "$dir"/*; do
	novoime="screenshot_${N}_$(basename "$datoteka")"
	mv "${datoteka}" screenshots/"${novoime}"  
	((N++))
done

ls screenshots
