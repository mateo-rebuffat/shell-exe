#!/bin/bash

# Vérifier s'il y a exactement 2 arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

# Récupérer les arguments
nombre1=$1
nombre2=$2

# Vérifier si les arguments sont des nombres
if ! [[ "$nombre1" =~ ^[0-9]+$ ]] || ! [[ "$nombre2" =~ ^[0-9]+$ ]]; then
    echo "Les arguments doivent être des nombres entiers."
    exit 1
fi

# Additionner les deux nombres
resultat=$((nombre1 + nombre2))

# Afficher le résultat
echo "La somme de $nombre1 et $nombre2 est égale à $resultat."

