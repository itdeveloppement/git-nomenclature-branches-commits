#!/bin/bash

# Définir la fonction de création de commit
createMessageCommit() {
    # Afficher le titre et l'instruction du commit
    echo -e "\n--- Commit ---"
    echo " -> Domaine : 1. Fonctionnalité - 2. Bug - 3. Configuration - 4. Documentation"
    echo " -> Domaine : 5. Test - 6. Refacto - 7. Essais - 8. Release - 9. Autre"

    # Demander à l'utilisateur de choisir le domaine
    read -p " -> Choisir un numéro : " domaine_choice

    # Associer les numéros aux types d'action
    case $domaine_choice in
      1) domaine="feature" ;;
      2) domaine="fixbug" ;;
      3) domaine="config" ;;
      4) domaine="doc" ;;
      5) domaine="test" ;;
      6) domaine="refacto" ;;
      7) domaine="essais" ;;
      8) domaine="release" ;;
      9) domaine="autre" ;;
      *) echo "Choix non valide"; exit 1 ;;
    esac

    # Demander à l'utilisateur de spécifier le lieu (scope) du changement
    read -p " -> Indiquer l'environnement de l'operation  (ex: name controleur, name view, connexion ...) : " scope

    # Demander à l'utilisateur de choisir le type d'action
    echo " -> Action : 1. Ajouter - 2. Modifier - 3. Supprimer - 4. Corriger - 5. Autre"
    read -p " -> Choisir un numero : " action_choice

    # Associer les numéros aux types d'action
    case $action_choice in
      1) action="-add" ;;
      2) action="-upd" ;;
      3) action="-del" ;;
      4) action="-fix" ;;
      5) action="-autre" ;;
      *) echo "Choix non valide"; exit 1 ;;
    esac

    # Demander le message du commit
    read -p " -> Indiquer un message descriptif : " message

    # Demander le numéro de tâche ou d'issue (facultatif)
    read -p " -> Indiquer le numéro de la tâche ou de l'issue (facultatif) : " task

    # Construire le message de commit
    if [ -n "$task" ]; then
      commit_message="$domaine ($scope) $action : $message ($task)"
    else
      commit_message="$domaine ($scope) $action : $message"
    fi

    # Ajouter les fichiers au commit
    git add .

    # Valider le commit avec le message formaté
    git commit -m "$commit_message"

    # Afficher un message de confirmation
    echo -e "\n--- Commit : $commit_message\n"

    # Demander si l'utilisateur veut faire un git pull
    echo -e "--- Nous vous conseillons de mettre à jour la branche local\n en intégrant les modifications ditantes si y en à\n et de résoudre les conflits si nécessaire.\n"
    read -p " -> Voulez-vous mettre à jour la branche locale ? (y/n) : " pull
    if [[ "$pull" =~ ^(y|Y|yes|Yes|oui|Oui|OUI)$ ]]; then
        echo "--- Résultat de la mise à jour"
        git pull
    else
        echo -e "Vous n'avez pas fait de mise à jour\n"
    fi

    # Demander si l'utilisateur veut faire un git push
    echo ""
    read -p " -> Voulez-vous pousser la branche locale vers de depôt distant ? (y/n) : " push
    if [[ "$push" =~ ^(y|Y|yes|Yes|oui|Oui|OUI)$ ]]; then
        echo "--- Résultat de la mise à jour"
        git push
    else
        echo -e "Vous n'avez pas fait de mise à jour\n"
    fi
}

# Appeler la fonction
createMessageCommit

