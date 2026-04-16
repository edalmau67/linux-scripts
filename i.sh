#!/bin/bash
# Script: i.sh
# Objectiu: Actualitzar el sistema i instal·lar paquets utilitzant variables
# Autor: Alumne ASIX
# Data: 2026

# Definició de variables
PAQUETS="vim git curl"

# Actualització de l'índex de paquets
echo "Actualitzant índex de paquets..."
apt update

# Actualització dels paquets instal·lats
echo "Actualitzant paquets instal·lats..."
apt upgrade -y

# Instal·lació dels paquets definits
echo "Instal·lant paquets: $PAQUETS"
apt install -y $PAQUETS

echo "Procés finalitzat correctament."
