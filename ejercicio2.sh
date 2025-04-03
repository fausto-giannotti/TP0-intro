#!/bin/bash

function num_archivos_y_dirs_en_path {

    num_archivos_o_dir=0
    
    # usamos ! -d (= distinto a un path válido)
    # para chequear que path ingresado sea valido, si no lo es salta error
    if [ ! -d "$1" ]; then
        echo "path no válido"
        exit 1
    fi

    # búcle para sumar 1 por cada archivo/dir en path dado
    for archivo_o_dir in $(ls $1); do 
        (( num_archivos_o_dir++ ))
    done

    echo "$num_archivos_o_dir"

}

num_archivos_y_dirs_en_path $1