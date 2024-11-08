# Environnement Git - Branches et Commits

Solution pour répondre à la problématique de cohérence dans le nommage des branches et des messages des commits.

Définition d'une nomenclature et proposition de fonctionnalités pour créer et nommer les branches ainsi que les messages de commits selon un format standardisé.

## Sommaire

- [Nomenclature dee nommage des branches](#branches)
- [Nomenclature de nommage des messages des commits](#commit)
- [Fonctionnalité pour formater le message du commit](#fonctionnalité-commit)
- [Fonctionnalité pour et formater le nom de la branche](#fonctionnalité-branche)
- [Installation](#installation)

## Branches

Pour faciliter l'organisation des projets une branche `main` de production et une branche `develop` sont definies comme première.

Pour faciliter le développement, la correction et la mise en production, des sous-branches sont créées à partir de la branche `develop`. Chacune de ces sous-branches répond à un besoin spécifique.

| Type de branche         | Format                          | Sous-branche           | Objectif                                                 |
|-------------------------|---------------------------------|------------------------|----------------------------------------------------------|
| **Principale**          | `main`                          | `fixbug`               | Version stable et déployée en production                 |
| **Développement**       | `develop`                       | `Sauf main`            | Intégration des nouvelles fonctionnalités et correctifs  |
| **Pré-production**      | `release/<version>`             | `Non`                  | Stabiliser la version avant mise en production           |
| **Fonctionnalité**      | `feature/<nom-feature>`         | `Non`                  | Développer de nouvelles fonctionnalités                  |
| **Configuration**       | `config/<nom-configuration>`    | `Non`                  | Configurer l’environnement                               |
| **Correction de bug**   | `bugfix/<nom-bug>`              | `Non`                  | Corriger des bugs                                        |
| **Refactorisation**     | `refactor/<nom-refactor>`       | `Non`                  | Améliorer le code sans changer la fonctionnalité         |
| **Tests**               | `tests/<nom-test>`              | `Non`                  | Développer et tester des suites de tests                 |
| **Documentation**       | `docs/<nom-doc>`                | `Non`                  | Ajouter ou modifier la documentation                     |
| **Expérimentation**     | `experiment/<nom-experiment>`   | `Non`                  | Tester des idées ou solutions temporaires                |

### 1. Branche principale (`main`)

- **Format** : `main`
- **Objectif** : Représente la version stable et prête pour la production du code. Seules les versions testées et validées y sont fusionnées, généralement depuis la branche `release`.
- **Exemple** :
  - `main` est la branche par défaut et contient toujours le code de la version déployée en production.

### 2. Branche de développement (`develop`)

- **Format** : `develop`
- **Objectif** : C’est la branche d’intégration principale pour le développement. Toutes les nouvelles fonctionnalités, correctifs et modifications sont fusionnées dans `develop` avant d’être prêtes pour une version de production.
- **Exemple** :
  - `develop` sert d'environnement de travail partagé pour l’équipe de développement et intègre les branches `feature`, `bugfix`, et autres.

### 3. Branches de fonctionnalités (`feature/`)

- **Format** : `feature/nom_fonctionnalité`
- **Objectif** : Développer des fonctionnalités spécifiques du projet. Chaque nouvelle fonctionnalité ou amélioration majeure a sa propre branche.
- **Exemples** :
  - `feature/authentification`
  - `feature/inscription_utilisateur`
  - `feature/profil_utilisateur`

### 4. Branches de configuration d’environnement (`config/`)

- **Format** : `config/nom_configuration`
- **Objectif** : Configurer ou modifier des aspects de l’environnement de développement, de test, ou de déploiement.
- **Exemples** :
  - `config/docker_setup` (pour la configuration de Docker)
  - `config/ci_cd_pipeline` (pour la mise en place de l'intégration/déploiement continu)
  - `config/database_setup` (pour la configuration de la base de données)
  - `config/environment_variables` (pour la gestion des variables d’environnement)

### 5. Branches de correction de bugs (`bugfix/`)

- **Format** : `bugfix/description_bug`
- **Objectif** : Résoudre des bugs identifiés lors du développement. Ces branches permettent de corriger des erreurs sans perturber les fonctionnalités principales en cours de développement dans `develop`.
- **Exemples** :
  - `bugfix/fix_login_issue`
  - `bugfix/fix_404_error`
  - `bugfix/correction_affichage_mobile`

### 6. Branches de refactorisation (`refactor/`)

- **Format** : `refactor/description_refactorisation`
- **Objectif** : Effectuer des améliorations de code sans changer le comportement fonctionnel. Ces branches sont utilisées pour optimiser, nettoyer ou restructurer le code.
- **Exemples** :
  - `refactor/optimisation_code`
  - `refactor/restructure_api`
  - `refactor/amelioration_performance`

### 7. Branches de tests (`test/`)

- **Format** : `test/nom_test`
- **Objectif** : Développer et tester des suites de tests automatisés ou manuels. Cela peut inclure des tests unitaires, des tests d’intégration, ou des tests de performance.
- **Exemples** :
  - `test/unittest_authentification`
  - `test/integration_database`
  - `test/performance_optimisation`

### 8. Branches de documentation (`docs/`)

- **Format** : `docs/description_documentation`
- **Objectif** : Mettre à jour ou ajouter de la documentation pour le projet. Ces branches sont utiles pour documenter les nouvelles fonctionnalités, les configurations ou les changements dans le projet.
- **Exemples** :
  - `docs/installation_guide`
  - `docs/api_endpoints`
  - `docs/user_manual`

### 9. Branches de pré-production ou de stabilisation (`release/`)

- **Format** : `release/numéro_version`
- **Objectif** : Préparer une version pour la mise en production. La branche `release` sert à stabiliser la version, corriger des bugs mineurs et finaliser les ajustements avant de fusionner dans `main`.
- **Exemples** :
  - `release/1.0.0`
  - `release/2.1.5`

### 10. Branches d’expérimentation (`experiment/`)

- **Format** : `experiment/nom_experimentation`
- **Objectif** : Tester des idées ou des solutions sans les intégrer directement dans `develop`. Ces branches sont souvent temporaires et peuvent être supprimées après l’expérimentation.
- **Exemples** :
  - `experiment/alternative_auth`
  - `experiment/new_ui_layout`
  - `experiment/ai_integration`

## Commit

Pour faciliter la lecture des messages des commits et le suivi dans l'historique, le **format du message** est défini comme suit : `domaine(scope) - action : message (numéro issue)`

### Domaine

Le domaine reprend les thématiques des branches.

### Tableau des Commits : Nommage et Objectif

| En lien avec la branche | Nommage         | Objectif                                                 |
|-------------------------|-----------------|----------------------------------------------------------|
| **Correctif urgent**    | `hotfix`        | Appliquer des correctifs critiques en production         |
| **Pré-production**      | `release`       | Stabiliser la version avant mise en production           |
| **Fonctionnalité**      | `feature`       | Ajouter, modifier, supprimer des fonctionnalités         |
| **Configuration**       | `config`        | Ajouter, modifier, supprimer une configuration           |
| **Correction de bug**   | `fixbug`        | Corriger des bugs                                        |
| **Refactorisation**     | `refacto`       | Améliorer le code sans changer la fonctionnalité         |
| **Tests**               | `test`          | Développer et tester des suites de tests                 |
| **Documentation**       | `doc`           | Ajouter ou modifier la documentation                     |
| **Expérimentation**     | `essais`        | Tester des idées ou solutions temporaires                |

### Scope

`scope` : Le scope décrit l'environnement du projet directement impacté (par exemple, `controleur name`, `view name`, `connexionAPI` ...). Il précise le lieu, le domaine, etc. Il est de l'ordre de 20 caractères.

### Détails des actions

Il existe quatre actions possibles :

| Type de commit       | Nommage | Objectif                                            |
|----------------------|---------|------------------------------------------------------|
| Ajouter              | `-add`  | Ajoute une fonctionnalité, un élément, un environnement, etc. |
| Modifier             | `-upd`  | Modifie une fonctionnalité, un élément, un environnement, etc. |
| Supprimer            | `-del`  | Supprime une fonctionnalité, un élément, un environnement, etc. |
| Corriger             | `-fix`  | Corrige une fonctionnalité, un élément, un environnement, etc. |

### Message

Le message doit être **descriptif** (non générique) et expliquer concrètement la raison de l'action menée dans ce commit.

### Numéro d'issue ou de tâche

Le numéro de la tâche ou de l'issue correspondant au commit.

> **Information facultative** : dans le format du message du commit ce champ est optionnel.

## Fonctionnalité "commit"

La fonctionnalité `commit` permet de créer un commit avec son message formaté. Elle exécute les commandes Git suivantes :
- `git add .`
- `git commit -m "message au bon format"`
- Invite l'utilisateur à faire un `git pull`.

Elle est appelée dans le terminal par : `commit`.

# Fonctionnalité "branche"

La fonctionnalité `branch` permet de créer une branche formatée et la pousse sur le depot distant.
Elle exécute les commandes Git suivantes :
- `git checkout -b nom_de_la_branche/complement`
- `git push --set-upstream origin nom_de_la_branche/complement`

Elle est appelée dans le terminal par : `branch`.

# Installation

## Fichier de configuration des fonctionnalités

1. Créer un fichier `git_commit.sh` et un fichier `git_branch.sh` à la racine du projet.
2. Copier-coller le code du dépôt.

## Fichier de configuration du terminal

Ouvrez le fichier de configuration en fonction de votre terminal pour ajouter l'alias.

- Pour Bash : ouvrez `~/.bashrc` : `nano ~/.bashrc`
À la fin de ce fichier, ajoutez la ligne suivante pour créer un alias `commit`, puis enregistrez :

- Pour Windows : 
  - `alias commit='/c/chemin_a_preciser/git_commit.sh'`
  - `alias commit='/c/chemin_a_preciser/git_branch.sh'`

- Pour un container Docker :
  - `alias commit='/workspaces/nom_du_projet/git_commit.sh'`
  - `alias commit='/workspaces/nom_du_projet/git_branch.sh'`

Rechargez le fichier pour que l'alias soit pris en compte :
- Pour Bash : `source ~/.bashrc`



