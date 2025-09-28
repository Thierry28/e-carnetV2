# Journal des modifications - e-carnet (eCarnet V2)

Tous les changements notables de ce projet seront documentés dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/),
et ce projet adhère au [Versioning Sémantique](https://semver.org/lang/fr/spec/v2.0.0.html).

## [Non publié] - 20 septembre 2025

### Ajouté

- Script de test aider local pour le développement
- Gestion d'erreur à la fonction greet pour améliorer la robustesse

### Modifié

- Mise à jour de la terminologie de 'Sous-domaine' vers 'Thématique' dans divers fichiers de listes média pour la cohérence

## [2.3.4] - 15 septembre 2025

### Ajouté

- Nouveau catalogue 2025 avec structure de compétences mise à jour
- Support pour les nouvelles catégories de compétences

### Modifié

- Mise à jour des références catalogue vers la version 2.3.4
- Amélioration de la gestion du catalogue pour l'année académique 2025

## [2.3.3] - 1er septembre 2025

### Ajouté

- Fichiers de données de compétences initiaux pour 2025 (competences.json, competencesMap.json, selectionsObservables.json)
- Support pour l'année académique 2025

### Modifié

- Mise à jour de la terminologie d' 'observable' vers 'objectif' dans les fichiers de listes média
- Changement des 'Observables' vers 'Objectifs' dans divers fichiers de l'application
- Mise à jour des références du catalogue de compétences pour la cohérence

### Corrigé

- Amélioration de la logique de rafraîchissement des listes média dans la fonction saveItemInput
- Amélioration de la logique de sauvegarde base de données avec gestion asynchrone
- Correction des problèmes de mise à jour du champ competencesLastchange depuis la page élève

## [2.3.2] - 24 mai 2025

### Notes

- Version de production refusée, corrections supplémentaires requises

## [2.3.1] - 19 mai 2025

### Ajouté

- Version de production Android
- Écran de démarrage mis à jour
- Icônes d'application améliorées

### Modifié

- Affichage du portfolio d'apprentissage amélioré
- Gestion des versions mise à jour

### Corrigé

- Problèmes d'affichage des icônes
- Problèmes de rendu de l'écran de démarrage

## [2.3.0] - 17 mai 2025

### Ajouté

- Fonctionnalité d'import vidéo
- Capacités d'import par code QR
- Intégration EPUB pour e-carnet et e-journal
- Support des liens plein écran dans les pages élèves

### Modifié

- Amélioration de la gestion EPUB avec conversion `<br>` vers `<br/>`
- Système de gestion vidéo amélioré

### Corrigé

- Problèmes d'ajout de vidéo résolus
- Fonctionnalité d'import EPUB améliorée
- Navigation des liens dans les pages élèves

## [2.2.6] - 27 avril 2025

### Ajouté

- Système de messagerie amélioré
- Copie du journal vers les médias avant envoi
- Capacités d'ajout de messages multiples

### Corrigé

- Problèmes de plantage de la version parents résolus
- Gestion d'erreur améliorée

## [2.2.5] - 6 avril 2025

### Ajouté

- Fonctionnalité d'assistance avec listage des élèves et médias
- Intégration email avec listes de fichiers
- Système de gestion des statuts
- Bouton d'envoi pour les demandes d'assistance

### Modifié

- Messages d'erreur mis à jour de "error" vers "ERREUR" pour la localisation française
- Capacités de visualisation d'assistance améliorées

### Corrigé

- Appels de fonctions d'environnement améliorés
- Gestion de résolution des promesses

## [2.2.4] - 8 septembre 2024

### Ajouté

- Gestion des statuts et accusés de réception dans les listes
- Suivi des statistiques amélioré

### Corrigé

- Bug de page blanche résolu
- Optimisations multiples pour les performances

## [2.2.3] - 7 septembre 2024

### Ajouté

- Nouveau système de statistiques
- Gestion des statuts et accusés de réception

### Modifié

- Gestion des listes améliorée avec indicateurs de statut

## [2.2.2] - 25 août 2024

### Ajouté

- Intégration d'analytique de plantage Firebase
- Rapport d'erreur amélioré

### Modifié

- Rapport de plantage et analytique améliorés

## [2.2.1] - 14 juillet 2024

### Ajouté

- Gestion des médias améliorée
- Gestion de fichiers améliorée

### Corrigé

- Diverses améliorations de stabilité

## [2.1.1] - 15 juin 2024

### Ajouté

- Fonctionnalité de partage par code QR
- Fonctionnalités de communication parent-enseignant

### Modifié

- Mécanismes de partage améliorés

## [2.1.0] - 2 juin 2024

### Ajouté

- Fonctionnalité de partage par code QR
- Gestion de téléchargement et suppression depuis l'interface enseignant
- Fonctionnalité d'import améliorée avec retour visuel

### Modifié

- Gestion des fichiers enseignant-vers-élève améliorée
- Intégration de code QR améliorée dans e-carnet

### Corrigé

- Conflits d'ID d'élève résolus
- Gestion d'entrée de répertoire média améliorée
- Initialisation Firebase optimisée

## [2.0.29] - 2 juin 2024

### Ajouté

- Fonctionnalité de suppression améliorée depuis l'interface enseignant
- Système d'import amélioré avec indicateurs de progression

### Corrigé

- Système de confirmation de suppression
- Gestion d'erreur d'import

## [2.0.28] - 18 mai 2024

### Ajouté

- Gestion de création et téléchargement
- Système de confirmation de suppression

### Modifié

- Capacités de gestion de fichiers améliorées

## [2.0.27] - 16 mars 2024

### Ajouté

- Améliorations du support vidéo
- Fonctionnalité de filtrage de documents
- Suppression de médias avec retour utilisateur

### Modifié

- Sélection de médias améliorée pour les environnements de production
- Gestion vidéo améliorée

### Corrigé

- Système de messagerie de suppression de médias

## [2.0.26] - 10 mars 2024

### Ajouté

- Fonctionnalité de capture photo pour iOS
- Gestion d'avatar via canvas
- Support FTP EPUB

### Modifié

- Gestion photo améliorée dans e-carnet
- Intégration caméra améliorée après mises à jour config.xml

### Corrigé

- Problèmes d'affichage photo sur iOS résolus
- Améliorations de fonctionnalité caméra

---

## Résumé de l'historique des versions

- **v2.3.x** : Focus sur le support de l'année académique 2025, mises à jour terminologiques et améliorations du catalogue
- **v2.2.x** : Messagerie améliorée, fonctionnalités d'assistance et intégration analytique
- **v2.1.x** : Partage par code QR et communication parent-enseignant
- **v2.0.x** : Fonctionnalités de base avec gestion des médias, capture photo et support vidéo

## Notes techniques

- Construit avec Apache Cordova pour le développement mobile multi-plateforme
- Utilise Framework7 pour les composants UI
- SQLite pour le stockage de données local
- Firebase pour l'analytique et les services cloud
- Support des plateformes Android et iOS

## Contributeurs

Développé par TR e-solutions en collaboration avec des conseillers pédagogiques et des enseignants de maternelles expérimentés de l'Éducation Nationale française.