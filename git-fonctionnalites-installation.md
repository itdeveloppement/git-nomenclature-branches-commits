
Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)

# Fonctionnalités

## Fonctionnalité "commit"

La fonctionnalité `commit` permet de créer un commit avec son message formaté. Elle appel le formatage et exécute les commandes Git :
- `git add .`
- `git commit -m "message au bon format"`
- Invite l'utilisateur à faire un `git pull`.

Elle est appelée dans le terminal par : `commit`.

## Fonctionnalité "branche"

La fonctionnalité `branch` permet de créer une branche formatée et la pousse sur le depot distant.
Elle appelle le formatage et exécute les commandes Git :
- `git checkout -b nom_de_la_branche/complement`
- `git push --set-upstream origin nom_de_la_branche/complement`

Elle est appelée dans le terminal par : `branch`.

# Installation

## Fichier de configuration des fonctionnalités


1. Créer un fichier [git_commit.sh](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-commit.sh) et un fichier [git_branch.sh](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-branch.sh) à la racine du projet ou dans un dossier git-script.

2. Copier-coller le code du dépôt dans chaque fichier.

## Fichier de configuration du terminal

Ouvrez le fichier de configuration en fonction de votre terminal pour ajouter les alias pour definir les appeles de commande `branch` et `commit`.

- Pour un environnement terminal Bash ou Git Bash: 
  - ouvrir `~/.bashrc` : `nano ~/.bashrc` À la fin de ce fichier, ajouter la ligne suivante pour créer un alias `commit` et un alias `branch`, puis enregistrez :

  - Alias : 
    - `alias commit='/c/chemin_a_preciser/git_commit.sh'`
    - `alias commit='/c/chemin_a_preciser/git_branch.sh'`

  - Alias (pour un container Docker) :
    - `alias commit='/workspaces/nom_du_projet/git_commit.sh'`
    - `alias commit='/workspaces/nom_du_projet/git_branch.sh'`

Rechargez le fichier pour que l'alias soit pris en compte :
- Pour Bash : `source ~/.bashrc`

Donner les droit en execution au fichier git-branch.sh et git-commit.sh
___

Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)

