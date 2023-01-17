#!/bin/bash
read -p "Nombre de usuario: " user

apariciones=`cat usuarios.txt | grep $user | wc -l`

if [ $apariciones -eq 0 ]
    then
    echo "$user no se ha logueado nunca."
    else
    echo "$apariciones veces se ha logueado $user."
fi