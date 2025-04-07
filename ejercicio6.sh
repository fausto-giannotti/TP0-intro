#!/bin/bash

function contador_archivos_con_karin {
    
    # usamos ! -d (= distinto a un path válido)
    # para chequear que path ingresado sea valido, si no lo es salta error
    if [ ! -d "$1" ]; then
        echo "path no válido"
        exit 1
    fi

    # -R busca recursivamente en el path ingresado 
    # (dado un path, busca en cada dir, en cada archivo y linea por linea)
    # -i ignora case, -l muestra nombre de archivos que contienen patrón
    # (así solo se cuenta el archivo y no el numero de apariciones de "karin")
    # | reedirige el resultado de grep y wc cuenta numero de lineas (1 x archivo listado)


    contador_karins=$(grep -Ril 'karin' "$1" | wc -l)
    echo "$contador_karins"

}

contador_archivos_con_karin "$1"

