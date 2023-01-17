#!/bin/bash 

read -p "Nombre de usuario: " user 

logNombre=`cat usuarios.txt | grep $nom | wc -l` 
max=0 
mesMax="" 

for j in `seq 1 $logNombre`  
do  
    mes=`cat usuarios.txt | grep $user | head -n$j | tail -1| awk '{print $3}'` 
    contador=0  

    for i in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 
    do 
        count=$((count + 1)) 

        if [ $i = $mes ] 
        then 
            if [ $max -lt $count ] 
            then  

                    max=$count 
                    mesMax=$i 
            fi 
        fi 
    done    
done 

dia=`cat usuarios.txt | grep $user | grep $mesMax | awk '{print $2}'`

echo "$user se coonectó por última vez el día $dia de $mesMax." 