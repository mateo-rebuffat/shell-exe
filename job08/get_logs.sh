#!/bin/bash

# Définir l'utilisateur dont vous souhaitez extraire les connexions
utilisateur="votre_utilisateur"

# Extraire le nombre de connexions de l'utilisateur
nombre_connexions=$(who | grep -c "$utilisateur")

# Créer un fichier avec le nombre de connexions et la date
date_format=$(date +"%d-%m-%Y-%H:%M")
nom_fichier="number_connection-$date_format"
echo $nombre_connexions > $nom_fichier

# Archiver le fichier
tar -cvf "$nom_fichier.tar" "$nom_fichier"

# Créer le dossier Backup s'il n'existe pas
dossier_backup="$HOME/Job8/Backup"
mkdir -p "$dossier_backup"

# Déplacer le fichier archivé dans le dossier Backup
mv "$nom_fichier.tar" "$dossier_backup/"
