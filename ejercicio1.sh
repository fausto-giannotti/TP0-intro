#!/bin/bash

function suma_semillas() {

    #si no se ingresa ningun argumento, salta mensaje error
    if [ $# -eq 0 ]; then
        echo "No ingresaste ninguna semilla"
        exit 1
    fi

    semillas_sumadas=0

   # $@ representa un número n de inputs (sirve para recibir cualquier cantidad de ellos)
   # usando bucles con $@ podemos acceder a cada uno de esos inputs

    for semilla in "$@"; do  #accede a cada input ($1, $2, ..., $n)
    
        if [ -z "$semilla" ]; then # si alguna semilla está vacía salta mensaje error
            echo "hay que ingresar semillas"
            exit 1
        fi  

        if ! [[ "$semilla" =~ ^[0-9]+$ ]]; then # si alguna semilla != núm. salta mensaje error
        echo "al menos una de las semillas no es un número válido"
        exit 1
        fi

        (( semillas_sumadas += semilla  )) # suma el valor de una semilla particular al total

    done
    
    echo "$semillas_sumadas"
}

suma_semillas $@ # permite ingresar un numero n de inputs 