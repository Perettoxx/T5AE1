#!/bin/bash
read -p "Mes: " mes

li=`cat usuarios.txt | grep $mes | wc -l`
dia=""

if [ $li -eq 0 ]
    then
    echo "En $mes no han habido logueos"
    else
    for i in `seq 1 $li`
        do
        num=`cat usuarios.txt| grep $mes| head -n$i|tail -n1| awk '{print $2}' `
        dia=$dia" "$num
    done
    echo "En $mes hubieron logueos los dias $dia"
fi