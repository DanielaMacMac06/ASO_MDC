#!/bin/bash

# Declaramos la variable FECHA que contiene la fecha actual

FECHA=$(date +%Y%m%d)

# Le preguntamos al usuario por un archivo

read -p "Introduce un archivo: " ARCH

# Mediante el uso de varios if, conseguimos saber si el archivo existe, si existe una copia... 

if [[ -f $ARCH && -e $ARCH ]]
then
# Verificamos que existe
echo "El archivo existe"
    if [[ -e $ARCH-$FECHA.bak ]]
    then
    # Si el archivo existe verificamos que no haya una copia ya realizada
    echo "Ya existe una copia"
    else
    # Si no hay copia, la hacemos
    cp $ARCH $ARCH-$FECHA.bak
                    if [[ $? -eq 0 ]]
                    then
                    echo "Exito en la ejecucion"
                    else
                    echo "Error en la ejecucion"
                    fi
    echo "Realizada la copia"
    fi

# Si no existe el archivo, mandamos el siguiente mensaje
else
echo "No existe el archivo"
exit 2
fi


