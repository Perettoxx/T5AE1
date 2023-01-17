#!/bin/bash
read -p "Mes: " mes
read -p "Dia: " dia

fecha=$dia" "$mes
lim=`cat usuarios.txt | grep "$fecha" | wc -l`
user=""

if [ $lim -eq 0 ]
    then
    echo "El $fecha no han habido logueos"
    else
    for i in `seq 1 $lim`
        do
        us=`cat usuarios.txt| grep "$fecha"| head -n$i|tail -n1| awk '{print $1}' `
        user=$user" "$us
    done
    echo "El $fecha se conectaron $user"
fi