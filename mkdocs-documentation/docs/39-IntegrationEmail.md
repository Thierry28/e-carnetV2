# Intégration email

L'intégration email d'e-carnet V2 facilite la communication externe et automatise l'envoi d'informations vers les services support et les partenaires.

## Vue d'ensemble de l'intégration

### Objectifs de l'intégration email

L'intégration email permet de :

- **Automatiser** l'envoi de rapports techniques
- **Faciliter** la communication avec le support
- **Exporter** des données vers des systèmes tiers
- **Alerter** les administrateurs en cas de problème

### Types d'emails automatisés

#### Emails de support technique

- **Demandes d'assistance** : Problèmes utilisateur
- **Rapports d'erreur** : Incidents système automatiques
- **Diagnostics préventifs** : Alertes de maintenance
- **Confirmations d'intervention** : Accusés de réception

#### Emails informatifs

- **Rapports d'activité** : Synthèses périodiques
- **Notifications administratives** : Alertes système
- **Confirmations d'opération** : Validations d'actions importantes
- **Invitations** : Accès aux portfolios partagés

## Fonctionnalité avec listes de fichiers

### Génération automatique des listes

#### Contenu des listes jointes

Les emails d'assistance incluent automatiquement :

##### Liste des élèves

```
Format : CSV ou Excel
Colonnes :
- ID élève
- Prénom
- Nom
- Date de création
- Dernière activité
- Nombre de médias
- Statut du compte
```

##### Inventaire des médias

```
Format : Rapport détaillé
Informations :
- Type de média (photo/vidéo/document)
- Taille du fichier
- Date de création
- Élève associé
- État de synchronisation
- Chemin de stockage
```

##### Données techniques

```
Format : Log technique
Contenu :
- Version de l'application
- Configuration système
- Paramètres utilisateur
- Historique des erreurs
- Performance de l'appareil
```

### Configuration de l'intégration

#### Paramètres SMTP

L'application utilise une configuration SMTP sécurisée :

- **Serveur SMTP** : mail.e-carnet.fr (exemple)
- **Port** : 587 (STARTTLS) ou 465 (SSL)
- **Authentification** : OAuth2 ou mot de passe d'application
- **Chiffrement** : TLS 1.2 minimum

#### Modèles d'emails

##### Template de demande d'assistance

```html
Subject: [e-carnet V2] Demande d'assistance - {{USER_ID}}

Bonjour,

Une demande d'assistance a été générée automatiquement depuis e-carnet V2.

Informations utilisateur :
- Établissement : {{SCHOOL_NAME}}
- Utilisateur : {{USER_NAME}}
- Version app : {{APP_VERSION}}
- Plateforme : {{PLATFORM}}

Description du problème :
{{PROBLEM_DESCRIPTION}}

Fichiers joints :
- Liste_eleves_{{TIMESTAMP}}.csv
- Inventaire_medias_{{TIMESTAMP}}.xlsx
- Diagnostic_technique_{{TIMESTAMP}}.log

Merci de traiter cette demande dans les meilleurs délais.

Cordialement,
Système e-carnet V2
```

## Gestion des destinataires

### Routage intelligent

#### Selon le type de problème

- **Problèmes techniques** → support-technique@e-carnet.fr
- **Questions pédagogiques** → support-pedagogique@e-carnet.fr
- **Problèmes de compte** → administration@e-carnet.fr
- **Urgences** → urgence@e-carnet.fr

#### Selon l'établissement

- **Établissements pilotes** → support-premium@e-carnet.fr
- **Établissements standards** → support@e-carnet.fr
- **Académies partenaires** → {{academie}}@e-carnet.fr
- **International** → international@e-carnet.fr

### Escalade automatique

#### Niveaux de support

1. **Niveau 1** : Support utilisateur standard
2. **Niveau 2** : Support technique avancé  
3. **Niveau 3** : Développeurs et ingénieurs
4. **Niveau 4** : Direction technique

#### Critères d'escalade

- **Délai de réponse** : Absence de réponse dans les délais
- **Complexité** : Problèmes techniques avancés
- **Impact** : Nombre d'utilisateurs affectés
- **Priorité** : Classification d'urgence

## Formats et pièces jointes

### Types de fichiers joints

#### Logs techniques

- **Format** : .log, .txt
- **Taille** : Limitée à 10 MB
- **Compression** : ZIP automatique si nécessaire
- **Chiffrement** : AES-256 pour données sensibles

#### Exports de données

- **CSV** : Listes d'élèves et statistiques
- **Excel** : Rapports détaillés avec graphiques
- **PDF** : Documents formatés pour impression
- **JSON** : Données structurées pour intégrations

#### Captures d'écran

- **Format** : PNG ou JPEG
- **Résolution** : Optimisée pour email
- **Annotation** : Zones d'intérêt surlignées
- **Protection** : Masquage des données personnelles

### Optimisation des envois

#### Compression automatique

- **Algorithme** : ZIP avec compression optimale
- **Seuil** : Déclenchement si taille > 5 MB
- **Ratio** : Réduction moyenne de 60-80%
- **Intégrité** : Vérification CRC32

#### Limitations de taille

- **Email total** : 25 MB maximum
- **Fichier individuel** : 10 MB maximum
- **Nombre de fichiers** : 20 pièces jointes maximum
- **Alternative** : Lien de téléchargement si dépassement

## Sécurité et confidentialité

### Protection des données

#### Chiffrement des emails

- **Transport** : TLS 1.2+ obligatoire
- **Contenu** : Chiffrement S/MIME optionnel
- **Pièces jointes** : Chiffrement AES-256
- **Métadonnées** : Minimisation des informations

#### Anonymisation

##### Données élèves

- **Prénoms** : Remplacés par Élève_001, Élève_002...
- **Noms** : Supprimés des exports automatiques
- **Photos** : Exclusion systématique
- **IDs** : Pseudonymisation avec hash

##### Données établissement

- **Nom complet** : Remplacé par code anonyme
- **Adresse** : Supprimée des rapports
- **Personnel** : Identifiants anonymisés
- **Localisation** : Région uniquement

### Conformité réglementaire

#### RGPD

- **Base légale** : Intérêt légitime pour le support technique
- **Consentement** : Information préalable des utilisateurs
- **Durée** : Conservation limitée à 30 jours
- **Droits** : Accès, rectification, suppression

#### Obligations éducatives

- **Secret professionnel** : Respect du cadre enseignement
- **Autorité parentale** : Information des représentants légaux
- **Hiérarchie** : Respect des circuits institutionnels
- **Archives** : Gestion selon réglementation éducative

## Interface utilisateur

### Configuration des emails

#### Paramètres utilisateur

- **Adresse de réponse** : Email personnel pour retours
- **Fréquence** : Quotidienne, hebdomadaire, à la demande
- **Types d'emails** : Sélection des notifications souhaitées
- **Format** : HTML riche ou texte simple

#### Options avancées

- **Signature** : Personnalisation de la signature
- **Priorité** : Niveau d'importance des messages
- **Accusés** : Demande de réception et lecture
- **Expiration** : Durée de validité des liens

### Historique des envois

#### Journal d'activité

- **Date/heure** : Horodatage précis des envois
- **Destinataire** : Adresse email de destination
- **Statut** : Envoyé, reçu, lu, erreur
- **Contenu** : Résumé du message envoyé

#### Statistiques

- **Taux de livraison** : Pourcentage d'emails reçus
- **Temps de réponse** : Délai moyen des retours
- **Efficacité** : Résolution suite à email
- **Satisfaction** : Évaluation du support reçu

## Troubleshooting

### Problèmes d'envoi

#### Échecs de livraison

**Causes fréquentes :**

- **Adresse invalide** : Destinataire inexistant
- **Serveur indisponible** : Problème SMTP temporaire
- **Taille excessive** : Dépassement des limites
- **Contenu bloqué** : Filtres anti-spam

**Solutions :**

- **Vérification** : Contrôle des adresses email
- **Réessai automatique** : Tentatives espacées
- **Compression** : Réduction de la taille
- **Alternative** : Envoi par lien de téléchargement

#### Réception incomplète

**Causes possibles :**

- **Filtrage** : Classification en spam
- **Quota** : Boîte email pleine
- **Règles** : Filtres automatiques
- **Client** : Problème logiciel de messagerie

**Solutions :**

- **Liste blanche** : Ajout de l'expéditeur
- **Notification** : Alerte par SMS si échec
- **Format alternatif** : Texte simple si HTML bloqué
- **Contact direct** : Téléphone en dernier recours

### Maintenance

#### Surveillance

- **Logs serveur** : Monitoring des envois SMTP
- **Bounces** : Gestion des emails rejetés
- **Réputation** : Surveillance de la délivrabilité 
- **Performance** : Temps de traitement des emails

#### Optimisation

- **Clean-up** : Suppression des adresses invalides
- **Segmentation** : Adaptation selon les destinataires
- **A/B Testing** : Optimisation des templates
- **Feedback** : Amélioration basée sur les retours

!!! note "Nouveauté version 2.2.5"
    L'intégration email avec listes de fichiers a été introduite dans la version 2.2.5 (6 avril 2025), révolutionnant le support technique avec des rapports automatisés complets.

!!! warning "Confidentialité"
    Tous les emails contenant des données d'élèves sont automatiquement anonymisés et chiffrés pour respecter la confidentialité et la réglementation RGPD.

## Voir aussi

- [Fonctionnalité d'assistance](38-FonctionnaliteAssistance.md)
- [Système de messagerie](35-SystemeMessagerie.md)
- [Statuts et accusés de réception](37-StatutsAccusesReception.md)