Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)

# Nomenclature des messages des commits

Pour faciliter la lecture des messages des commits et le suivi dans l'historique, le format du message est définit :

> **`domaine(scope) - action : message (numéro issue)`**

## Domaine

Le domaine reprend le rôle des branches.

> **Information obligatoire** : le renseignement du domaine est obligatoire.

| Rôle de la branche      | Domaine commit  | Objectif                                                 |
|-------------------------|-----------------|----------------------------------------------------------|
| **Pré-production**      | `release`       | Stabiliser la version avant mise en production           |
| **Fonctionnalité**      | `feature`       | Ajouter, modifier, supprimer des fonctionnalités         |
| **Configuration**       | `config`        | Ajouter, modifier, supprimer une configuration           |
| **Correction de bug**   | `fixbug`        | Corriger des bugs                                        |
| **Refactorisation**     | `refacto`       | Améliorer le code sans changer la fonctionnalité         |
| **Tests**               | `test`          | Développer et tester des suites de tests                 |
| **Documentation**       | `doc`           | Ajouter ou modifier la documentation                     |
| **Expérimentation**     | `essais`        | Tester des idées ou solutions temporaires                |

## Scope

`scope` : le scope décrit l'environnement du projet directement impacté (par exemple, `controleur name`, `view name`, `connexionAPI` ...). Il précise le lieu, le domaine, etc. Il est de l'ordre de 20 caractères.

> **Information obligatoire** : le renseignement du scope est obligatoire.
> 
## Détails des actions

Il existe quatre actions possibles :

| Type de commit       | Nommage | Objectif                                            |
|----------------------|---------|------------------------------------------------------|
| Ajouter              | `-add`  | Ajoute une fonctionnalité, un élément, un environnement, etc. |
| Modifier             | `-upd`  | Modifie une fonctionnalité, un élément, un environnement, etc. |
| Supprimer            | `-del`  | Supprime une fonctionnalité, un élément, un environnement, etc. |
| Corriger             | `-fix`  | Corrige une fonctionnalité, un élément, un environnement, etc. |

> **Information obligatoire** : le renseignement du detail d'une action est obligatoire.
> 
## Message

Le message doit être **descriptif** (non générique) et expliquer concrètement la raison de l'action menée dans ce commit.

> **Information obligatoire** : le renseignement du message est obligatoire.

## Numéro d'issue ou de tâche

Le numéro de la tâche ou de l'issue correspondant au commit.

> **Information facultative** : le renseignement de réfrenece de l'issue ou tâche est facultative.

## Les bonnes pratiques de l'utilisation des commits

- Des commits independants les un des autres.
- Des messages descriptifs (non generique)
- Fair un commit à chaque changement important : (par exemple)
  - Creation, supression ou modification d'une fonctionnalité.
  - Modification la structure du projet.
  - Corrigection d'un bug ou une fonctionnalité.
  - Ajout d'une documentation ou documentation d'une fichier, d'une fonction
  - ... 
___

Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)