#!/bin/bash

# Vérifier s'il y a exactement 3 arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

# Récupérer les arguments
nombre1=$1
operateur=$2
nombre2=$3

# Vérifier si les arguments sont des nombres
if ! [[ "$nombre1" =~ ^[0-9]+$ ]] || ! [[ "$nombre2" =~ ^[0-9]+$ ]]; then
    echo "Les arguments doivent être des nombres entiers."
    exit 1
fi

# Effectuer l'opération en fonction de l'opérateur
case $operateur in
    +)
        resultat=$((nombre1 + nombre2))
        ;;
    -)
        resultat=$((nombre1 - nombre2))
        ;;
    x)
        resultat=$((nombre1 * nombre2))
        ;;
    ÷)
        # Vérifier si la division par zéro
        if [ "$nombre2" -eq 0 ]; then
            echo "Division par zéro impossible."
            exit 1
        fi
        resultat=$((nombre1 / nombre2))
        ;;
    *)
        echo "Opérateur invalide. Utilisez '+', '-', 'x' (pour la multiplication) ou '÷' (pour la division)."
        exit 1
        ;;
esac

# Afficher le résultat
echo "Le résultat de l'opération $nombre1 $operateur $nombre2 est égal à $resultat."
