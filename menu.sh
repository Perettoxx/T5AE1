#!/bin/bash
opcion=0

while [ $opcion -ne "5" ]
do
    echo "1: Buscar conexión por nombre de usuario"
    echo "2: Buscar conexión por mes"
    echo "3: Buscar conexión por fecha concreta"
    echo "4: Buscar última conexión"
    echo "5: Finalizar programa"
    read -p "Presiona una opción (1-5): " opcion

    case $opcion in 
    "1")
    ./sh1.sh
    ;;
    "2")
    ./sh2.sh
    ;;
    "3")
    ./sh3.sh
    ;;
    "4")
    ./sh4.sh
    ;;
    "5")
    echo "Fin de programa"
    break
    ;;
    *)
    echo "La opción no es válida"
    ;;
    esac

done