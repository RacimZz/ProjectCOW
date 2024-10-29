#!/bin/bash

# Générer un nombre aléatoire entre 1 et 100
number=$(( (RANDOM % 100) + 1 ))

# Afficher un message de bienvenue
cowsay "Bienvenue dans le jeu de devinette!"

# Initialiser le nombre de tentatives et les bornes d'intervalle
attempts=0
borne_inf=0
borne_sup=100

# Début du jeu
while true; do
	
    # Demander à l'utilisateur de deviner le nombre
    read -p "Devinez le nombre (entre $borne_inf et $borne_sup) : " guess
    (( attempts++ ))

    # Vérifier si la devinette est correcte
    if [ $guess -eq $number ]; then
        cowsay "Bravo! Vous avez deviné le nombre en $attempts tentatives."
        break
    elif [ $guess -lt $number ]; then
        cowsay "Le nombre est plus grand!"
        borne_inf=$(expr $guess + 1) 
    else
        cowsay "Le nombre est plus petit!"
        borne_sup=$(expr $guess - 1) 
    fi
    
done
