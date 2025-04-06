#!/bin/bash

function contador_lineas_con_num {
    
    # chequeamos si el archivo es existe y es válido
    if ! [ -f $1 ] || [ -z "$1" ]; then
        echo "ingresar un archivo válido"
        exit 1
    fi

    # busca cada linea que contiene al menos un número
    lineas_con_num=$(grep -c '[0-9]'  "$1")
    echo "$lineas_con_num"

}

contador_lineas_con_num $1