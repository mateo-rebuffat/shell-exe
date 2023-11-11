#!/bin/bash

# Chemin vers le fichier CSV
fichier_csv="chemin/vers/votre/fichier.csv"

# Lire le fichier CSV et créer les utilisateurs
while IFS=',' read -r nom_utilisateur mot_de_passe statut
do
    # Créer l'utilisateur
    useradd -m -p $(openssl passwd -1 "$mot_de_passe") "$nom_utilisateur"

    # Si l'utilisateur est un admin, lui donner les permissions de super utilisateur
    if [ "$statut" == "admin" ]; then
        usermod -aG sudo "$nom_utilisateur"
    fi

done < "$fichier_csv"
