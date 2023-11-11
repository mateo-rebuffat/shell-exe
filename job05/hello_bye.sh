#!/bin/bash

# Vérifier s'il y a exactement 1 argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Récupérer l'argument
argument=$1

# Vérifier la valeur de l'argument
if [ "$argument" == "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$argument" == "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument invalide. Utilisez 'Hello' ou 'Bye'."
fi
