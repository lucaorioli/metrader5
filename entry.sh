#!/bin/bash

# Stampa un messaggio
echo "Esecuzione dello script di controllo e estrazione..."

# Controlla se la cartella Metatrader non esiste e il file Metatrader.zip esiste
if [ ! -d "./Metatrader" ] && [ -f "./Metatrader.zip" ]; then
    # Stampa un messaggio
    echo "La cartella Metatrader non esiste e il file Metatrader.zip è presente. Eseguendo l'estrazione..."

    # Estrai il contenuto del file Metatrader.zip nella cartella corrente
    unzip -q Metatrader.zip -d .
fi

# Stampa un messaggio
echo "Esecuzione del comando principale..."

# Esegui il comando principale
exec "$@"
