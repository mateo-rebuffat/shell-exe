#!/bin/bash

# Vérifier s'il y a exactement 2 arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nouveauFichier> <contenu>"
    exit 1
fi

# Récupérer les arguments
nouveauFichier=$1
contenu=$2

# Vérifier si le fichier source existe
if [ ! -f "$contenu" ]; then
    echo "Le fichier '$contenu' n'existe pas."
    exit 1
fi

# Copier le contenu du fichier source vers le nouveau fichier
cat "$contenu" > "$nouveauFichier"

# Vérifier si la copie a réussi
if [ $? -eq 0 ]; then
    echo "Le contenu du fichier '$contenu' a été copié avec succès dans '$nouveauFichier'."
else
    echo "Une erreur s'est produite lors de la copie."
fi
