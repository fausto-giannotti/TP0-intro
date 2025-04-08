#!/bin/bash

function posicion_en_secuencia_fibonacci() {

    if [ -z "$1" ]; then   
        echo "hay que ingresar 1 número"
        exit 1 
    fi

    # chequea que input no sea nada distinto a un número entero positivo
    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "input no es un número entero positivo"
        exit 1
    fi

    inp=$1
    n_menor=0
    n_mayor=1
    indice=2 # dado que las posiciones son (1, 2, ..., n) y dado que la menor pos. posible es 2 (para $1 = 0) 

    # while se ejecuta mientras que el input sea mayor o igual que el ultimo núm de la secuencia
    while [ "$n_mayor" -le "$inp" ]; do
        
        if [ "$n_menor" -eq 0 ]; then
            n_menor=1
            (( indice++ ))
        fi

        suma=$(( n_menor + n_mayor ))

        # se avanza una posicion en la secuencia
        # n_menor pasa a ser n_mayor
        # n_mayor pasa a ser la suma de los 2 últimos números de la secuencia
        
        n_menor=$n_mayor
        n_mayor=$suma 

        (( indice++ ))

    done

    echo "$indice"
}

posicion_en_secuencia_fibonacci $1