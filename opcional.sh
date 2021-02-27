#!/bin/bash
if [[ $@ ]]; then
        touch copy2Http.txt
        sudo curl -o copy2Http.txt https://www.w3schools.com/
        echo "EL PATRON DE BUSQUEDA SE ENCUENTRA EN LAS LINEAS"
        sudo grep -n "$@" copy2Http.txt
        

else
      echo "no se ha metido parametro de busqueda, se debe meter un patron"
    
fi