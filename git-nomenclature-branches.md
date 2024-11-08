Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)

# Nomenclature des branches

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

## 1. Branche principale (`main`)

- **Format** : `main`
- **Objectif** : Représente la version stable et prête pour la production du code. Seules les versions testées et validées y sont fusionnées, généralement depuis la branche `release`.
- **Exemple** :
  - `main` est la branche par défaut et contient toujours le code de la version déployée en production.

## 2. Branche de développement (`develop`)

- **Format** : `develop`
- **Objectif** : C’est la branche d’intégration principale pour le développement. Toutes les nouvelles fonctionnalités, correctifs et modifications sont fusionnées dans `develop` avant d’être prêtes pour une version de production.
- **Exemple** :
  - `develop` sert d'environnement de travail partagé pour l’équipe de développement et intègre les branches `feature`, `bugfix`, et autres.

## 3. Branches de fonctionnalités (`feature/`)

- **Format** : `feature/nom_fonctionnalité`
- **Objectif** : Développer des fonctionnalités spécifiques du projet. Chaque nouvelle fonctionnalité ou amélioration majeure a sa propre branche.
- **Exemples** :
  - `feature/authentification`
  - `feature/inscription_utilisateur`
  - `feature/profil_utilisateur`

## 4. Branches de configuration d’environnement (`config/`)

- **Format** : `config/nom_configuration`
- **Objectif** : Configurer ou modifier des aspects de l’environnement de développement, de test, ou de déploiement.
- **Exemples** :
  - `config/docker_setup` (pour la configuration de Docker)
  - `config/ci_cd_pipeline` (pour la mise en place de l'intégration/déploiement continu)
  - `config/database_setup` (pour la configuration de la base de données)
  - `config/environment_variables` (pour la gestion des variables d’environnement)

## 5. Branches de correction de bugs (`bugfix/`)

- **Format** : `bugfix/description_bug`
- **Objectif** : Résoudre des bugs identifiés lors du développement. Ces branches permettent de corriger des erreurs sans perturber les fonctionnalités principales en cours de développement dans `develop`.
- **Exemples** :
  - `bugfix/fix_login_issue`
  - `bugfix/fix_404_error`
  - `bugfix/correction_affichage_mobile`

## 6. Branches de refactorisation (`refactor/`)

- **Format** : `refactor/description_refactorisation`
- **Objectif** : Effectuer des améliorations de code sans changer le comportement fonctionnel. Ces branches sont utilisées pour optimiser, nettoyer ou restructurer le code.
- **Exemples** :
  - `refactor/optimisation_code`
  - `refactor/restructure_api`
  - `refactor/amelioration_performance`

## 7. Branches de tests (`test/`)

- **Format** : `test/nom_test`
- **Objectif** : Développer et tester des suites de tests automatisés ou manuels. Cela peut inclure des tests unitaires, des tests d’intégration, ou des tests de performance.
- **Exemples** :
  - `test/unittest_authentification`
  - `test/integration_database`
  - `test/performance_optimisation`

## 8. Branches de documentation (`docs/`)

- **Format** : `docs/description_documentation`
- **Objectif** : Mettre à jour ou ajouter de la documentation pour le projet. Ces branches sont utiles pour documenter les nouvelles fonctionnalités, les configurations ou les changements dans le projet.
- **Exemples** :
  - `docs/installation_guide`
  - `docs/api_endpoints`
  - `docs/user_manual`

## 9. Branches de pré-production ou de stabilisation (`release/`)

- **Format** : `release/numéro_version`
- **Objectif** : Préparer une version pour la mise en production. La branche `release` sert à stabiliser la version, corriger des bugs mineurs et finaliser les ajustements avant de fusionner dans `main`.
- **Exemples** :
  - `release/1.0.0`
  - `release/2.1.5`

## 10. Branches d’expérimentation (`experiment/`)

- **Format** : `experiment/nom_experimentation`
- **Objectif** : Tester des idées ou des solutions sans les intégrer directement dans `develop`. Ces branches sont souvent temporaires et peuvent être supprimées après l’expérimentation.
- **Exemples** :
  - `experiment/alternative_auth`
  - `experiment/new_ui_layout`
  - `experiment/ai_integration`

___

Menu general : [Nomenclature branches](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-branches.md) - [Nomenclature commits](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-nomenclature-commits.md) - [Fonctionnalité branche](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Fonctionnalité commit](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md) - [Installation](https://github.com/itdeveloppement/git-nomenclature-branches-commits/blob/develop/git-fonctionnalites-installation.md#installation)