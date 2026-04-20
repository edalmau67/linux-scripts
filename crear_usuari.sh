#!/bin/bash
# Script interactiu per crear un usuari i el seu grup
# Utilitza read per capturar dades des del teclat
# Autor: Eric Dalmau

clear   # Neteja la pantalla per millorar la visibilitat

# --- Demanar nom d'usuari ---
read -p "Introdueix el nom d'usuari: " usuari
if [ -z "$usuari" ]; then
    echo "Error: el nom d'usuari no pot estar buit."
    exit 1
fi

# --- Demanar comentari o nom complet ---
read -p "Introdueix el nom complet o comentari: " comentari
if [ -z "$comentari" ]; then
    echo "Error: el comentari no pot estar buit."
    exit 1
fi

# --- Demanar nom del grup ---
read -p "Introdueix el nom del grup: " grup
if [ -z "$grup" ]; then
    echo "Error: el grup no pot estar buit."
    exit 1
fi

# --- Crear el grup si no existeix ---
if getent group "$grup" > /dev/null; then
    echo "El grup '$grup' ja existeix."
else
    echo "Creant el grup '$grup'..."
    groupadd "$grup"
fi

# --- Crear l'usuari ---
echo "Creant l'usuari '$usuari'..."
useradd -c "$comentari" -g "$grup" "$usuari"

# --- Confirmació final ---
echo "L'usuari $usuari s'ha creat correctament dins del grup $grup."
