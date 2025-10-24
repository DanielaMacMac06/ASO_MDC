#!/bin/bash

# Le pedimos al usuario una ruta

read -p "Introduce una ruta: " RUTA

# Mediante un condicionador indicamos que va a aparecer por pantalla segun la ruta que pongamos

if [[ ! -e $RUTA ]]
then
echo "La ruta no existe"
elif [[ -f $RUTA ]]
then
echo "Es un archivo regular"
else
echo "Es un directorio"
fi
