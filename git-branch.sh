#!/bin/bash

# create branch
createBranch() {

    # Afficher la liste des branches
    echo -e "--- Branches :"
    echo -e " -> 1. fonctionalité"
    echo -e " -> 2. configuration"
    echo -e " -> 3. correction de bug"
    echo -e " -> 4. test"
    echo -e " -> 5. refactor"
    echo -e " -> 6. documentation"
    echo -e " -> 7. experimentation"

    # Demander à l'utilisateur de choisir la branche
    read -p "Choir un numéro : " branch_choice

    # Associer les numéros aux types d'action
    case $branch_choice in
      1) 
      read -p "Indiquer le nom de la fonctionnalité : " nom
      branch="feature/$nom"
      ;;
      2) 
      read -p "Indiquer le nom de la configuration : " nom
      branch="config/$nom"
      ;;
      3) 
      read -p "Indiquer le nom ou la référence du bug : " nom
      branch="bugfix/$nom"
      ;;
      4) 
      read -p "Indiquer le nom du test : " nom
      branch="tests/$nom"
      ;;
      5) 
      read -p "Indiquer le nom de la refactorisation : " nom
      branch="refactor/$nom"
      ;;
      6) 
      read -p "Indiquer le nom de la documentation : " nom
      branch="docs/$nom"
      ;;
      7) 
      read -p "Indiquer le nom de l'expérimentation' : " nom
      branch="expérimentation/$nom"
      ;;
      *) echo "Choix non valide"; exit 1 ;;
    esac

    # créer la branche
    git checkout -b "$branch"
    echo ""
    echo "--- Nouvelle branche : $branch"
    echo "La branche est poussée sur le depot distant"
    git push --set-upstream origin develop
}

# Appeler la fonction
createBranch