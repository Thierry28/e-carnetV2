# Import par code QR

L'application e-carnet V2 propose une fonctionnalité d'import par code QR pour faciliter le partage et l'échange de contenus pédagogiques.

## Principe de fonctionnement

### Génération de codes QR

L'application peut générer des codes QR pour :

- **Partage d'élève** : Informations de profil et portfolio
- **Partage de document** : Fichiers et médias spécifiques
- **Partage de compétences** : Objectifs et évaluations
- **Partage de classe** : Liste d'élèves et activités

### Lecture de codes QR

#### Depuis l'application

1. **Accéder au scanner QR** :
   - Menu principal → "Import QR"
   - Ou icône QR dans la barre d'outils
   - Autoriser l'accès à la caméra

2. **Scanner le code** :
   - Pointer la caméra vers le code QR
   - Attendre la reconnaissance automatique
   - Confirmer l'import des données

#### Types de contenus importables

- Profils d'élèves avec leurs médias
- Documents pédagogiques
- Paramètres de configuration
- Données de compétences

## Cas d'usage pratiques

### Partage entre enseignants

#### Transfert d'élève
Lors du passage d'une classe à l'autre :

1. Enseignant émetteur génère un QR pour l'élève
2. Enseignant récepteur scanne le code
3. Import automatique du portfolio complet

#### Partage de ressources
- Documents types (grilles d'observation)
- Activités pédagogiques
- Modèles d'évaluation

### Communication avec les parents

#### Portfolio partagé
- Code QR généré pour chaque élève
- Parents scannent pour voir le portfolio
- Accès sécurisé et temporaire

#### Événements scolaires
- Partage rapide lors des réunions
- Consultation en temps réel
- Pas besoin de connexion internet

## Configuration et sécurité

### Paramètres de partage

#### Durée de validité
- Codes temporaires (24h, 1 semaine)
- Codes permanents pour usage interne
- Expiration automatique

#### Niveaux d'accès
- **Lecture seule** : Consultation du portfolio
- **Import complet** : Transfert de toutes les données
- **Sélectif** : Choix des éléments à importer

### Sécurité des données

#### Chiffrement
- Données encodées dans le QR chiffrées
- Clés de déchiffrement temporaires
- Protection contre la copie non autorisée

#### Traçabilité
- Historique des partages effectués
- Journal des imports reçus
- Contrôle des accès

## Interface utilisateur

### Génération de QR

1. **Sélectionner le contenu** à partager
2. **Choisir les options** de partage
3. **Générer le code QR**
4. **Afficher ou exporter** le code

### Import par QR

1. **Ouvrir le scanner QR**
2. **Scanner le code** avec la caméra
3. **Prévisualiser** le contenu détecté
4. **Confirmer l'import** après vérification

## Résolution de problèmes

### Scanner ne fonctionne pas

- Vérifier les autorisations caméra
- Nettoyer l'objectif de la caméra
- Améliorer l'éclairage de la zone
- Tenir l'appareil stable

### Code QR illisible

- Vérifier la qualité d'impression
- Éviter les reflets sur l'écran
- Ajuster la distance de lecture
- Régénérer le code si nécessaire

### Échec d'import

- Vérifier la validité du code (expiration)
- Contrôler la connexion réseau si requise
- Vérifier l'espace disponible
- Redémarrer l'application

!!! note "Évolution des fonctionnalités"
    - Import par QR : introduit en version 2.3.0 (17 mai 2025)
    - Partage par QR : ajouté en version 2.1.1 (15 juin 2024)
    - Améliorations continues : version 2.1.0 (2 juin 2024)

## Voir aussi

- [Partage par code QR](33-PartageCodeQR.md)
- [Communication avec les parents](36-CommunicationParents.md)
- [Gestion des médias](40-GestionMediasAvancee.md)