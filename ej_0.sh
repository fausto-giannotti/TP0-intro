#!/bin/bash

sumar_energias() {
    
    #chequea que no estén vacíos
    if [ -z "$1" ] || [ -z "$2" ]; then   
        echo "hay que ingresar 2 energías"
        exit 1 
    fi

    # usamos regexs para asegurarnos que sean numeros
    #chequea que ambos sean números

    if ! [[ "$1" =~ ^[0-9]+$  ]] || ! [[ "$2" =~ ^[0-9]+$  ]]; then
        echo "las energías no son números válidos"
        exit 1
    fi
    
    suma=$(( $1 + $2 ))
    echo $suma
}

sumar_energias $1 $2