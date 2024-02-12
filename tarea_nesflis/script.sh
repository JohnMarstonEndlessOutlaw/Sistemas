#!/bin/bash

select_random_movies(){
	local new_maxfilas=$1
    	numrdn=$(( RANDOM % $new_maxfilas ))
		echo $numrdn
		sort -R netflix2.csv | head -n 1 | tail -1
}
    
select_movies_by_year(){
	echo "¿Por cuál año quieres buscar una película? --POBRE--"
	read ano
	grep $ano netflix2.csv

}

maxfilas="$(wc -l < netflix2.csv)"

new_maxfilas="$(wc -l < netflix2.csv)"
		
echo "haber, elige, buscar película por año (1), o seleccionar una peli random (2) pobre"

read uR
		
case $uR in
    	1) select_movies_by_year ;;
    	2) select_random_movies $new_maxfilas ;;
    	*) echo "Opción no válida. Saliendo del programa." ;;
esac
