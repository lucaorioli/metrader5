#!/bin/bash

# Controlla se la cartella Metatrader non esiste e il file Metatrader.zip esiste
if [ ! -d "./Metatrader" ] && [ -f "./Metatrader.zip" ]; then
    # Stampa un messaggio
    echo "La cartella Metatrader non esiste e il file Metatrader.zip è presente. Eseguendo l'estrazione..."

    # Estrai il contenuto del file Metatrader.zip nella cartella corrente
    unzip -q Metatrader.zip -d .
fi

# Ottieni il nome della directory corrente e rimuovi il percorso
FOLDER_NAME=$(basename "$(pwd)")
echo "La varibile numero progetto è " $FOLDER_NAME
# Imposta il nome della directory come variabile d'ambiente
export FOLDER_NAME

# Esegui docker-compose up
docker-compose up -d
