#!/bin/bash

function posicion_en_secuencia_fibonacci {
    
    # chequea que input no sea vacío 
    if [ -z "$1" ]; then   
        echo "hay que ingresar 1 número"
        exit 1 
    fi

    # chequea que input no sea nada distinto a un número entero positivo
    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "input no es un número entero positivo"
        exit 1
    fi
    
    # almacenamos los valores de la secuencia de fibonacci en una lista
    # si $1 es mayor o igual que el ultimo valor de la secuencia, devolvemos dicho valor y su indice 
    # si $1 es menor, sumamos los dos ultimos valores de la secuencia y los agregamos a la esta
    # tambíen sumamos 1 al índice
    

    lista_secuencia_fibonacci=(0 1) # 0 y 1 son los 2 primeros valores de la secuencia
    indice=1 # corresponde al índice del último valor de la secuencia (este caso el 1) 
    nuevo_valor=0
    
    # si input es 0, devolver 1 (n° 0); debido a que 0 < ultimo valor de la secuencia
    if [ "$1" -eq 0 ]; then
        echo "Respuesta: 2 (n° 1)"
        exit 0 # porgrama termina sin errores
    fi


    while [ "${lista_secuencia_fibonacci[$(( indice ))]}" -le "$1" ]; do 

        # nuevo_valor = suma de los 2 anteriores (i) y (i-1)
        nuevo_valor=$(( lista_secuencia_fibonacci[indice] + lista_secuencia_fibonacci[indice-1] ))
        lista_secuencia_fibonacci+=("$nuevo_valor")

        # si nuevo valor agregado a la secuencia es mayor/igual al input, devolver posición y valor 
        if [ "$nuevo_valor" -gt "$1" ]; then      
            echo "Respuesta: $((indice+2)) (n° $nuevo_valor)"
            break
        fi

        (( indice++ ))

    done

}

posicion_en_secuencia_fibonacci $1
