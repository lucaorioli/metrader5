#!/bin/bash

# Ottieni il nome della directory corrente e rimuovi il percorso
FOLDER_NAME=$(basename "$(pwd)")
echo "La varibile numero progetto è " $FOLDER_NAME
# Imposta il nome della directory come variabile d'ambiente
export FOLDER_NAME

# Esegui docker-compose up
docker-compose up -d
