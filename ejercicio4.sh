#!/bin/bash

function contador_cold {
    
    # chequeamos si el archivo es existe y es válido
    if ! [ -f $1 ] || [ -z "$1" ] ; then
        echo "ingresar un archivo válido"
        exit 1
    fi
    
    # -i ignora case 
    # -o separa cada coincidencia en una nueva linea (cada línea resultante es "cold")
    # la pipeline | reedirige las lineas a wc -l (wc = word count, l = lines)
    # que cuenta el número de estas = núm de apariciones de "cold"

    apariciones_cold=$(grep -i -o "cold" "$1" | wc -l)
    
    echo "$apariciones_cold"
}

contador_cold $1