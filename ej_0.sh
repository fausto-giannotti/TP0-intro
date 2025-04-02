#!/bin/bash

sumar_energias() {
    suma=$(( $1 + $2 ))
    echo $suma
}

sumar_energias $1 $2