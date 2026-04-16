#!/bin/bash
# Script: ai.sh
# Objectiu: Instal·lar paquets rebuts com a paràmetres després d'actualitzar el sistema
# Autor: Dalmau
# Data: 2026

# Comprovació de paràmetres
if [ $# -eq 0 ]; then
    echo "Error: No s'han indicat paquets."
    echo "Ús: ./ai.sh paquet1 paquet2 ..."
    exit 1
fi

# Mostrar els paquets rebuts
echo "Paquets rebuts: $@"

# Actualització de l'índex de paquets
echo "Actualitzant índex de paquets..."
apt update

# Actualització dels paquets instal·lats
echo "Actualitzant paquets instal·lats..."
apt upgrade -y

# Instal·lació dels paquets rebuts com a paràmetres
echo "Instal·lant paquets: $@"
apt install -y $@

echo "Procés completat correctament."
