# Utiliser la version MacOS

L'application e-carnet est disponible pour Mac (processeurs Apple Silicon type M1/M2/M3).

## Téléchargement

[🚀 Télécharger la version 2.3.8 pour MacOS (arm64)](https://tja-solutions.com/RELEASES/MACOS/e-carnet-2.3.8-arm64.dmg)

## Installation

1. Téléchargez le fichier `.dmg` ci-dessus.
2. Ouvrez l'image disque.
3. Glissez l'icône **e-carnet** dans votre dossier **Applications**.
4. Lors du premier lancement, si macOS affiche un message indiquant que **"e-carnet est endommagé"** ou provient d'un **"développeur non identifié"** :
   - **Méthode 1** : Faites un clic droit (ou Ctrl+clic) sur l'application dans votre dossier Applications et choisissez **Ouvrir**.
   - **Méthode 2 (Recommandée si le message "endommagé" persiste)** : Ouvrez un **Terminal** (via Spotlight) et collez la commande suivante, puis appuyez sur Entrée :
     ```bash
     xattr -cr /Applications/e-carnet.app
     ```
   - Relancez ensuite l'application normalement.
5. Vous devrez créer un nouveau dossier, par exemple "e-carnet" puis le sélectionner.

## Premier lancement

Lors du premier lancement, l'application est vide. Vous pouvez :

- Créer manuellement vos élèves.
- Importer un fichier Excel de vos élèves.
- Restaurer une sauvegarde provenant d'une tablette ou d'une autre installation.

## Avantages de la version Mac

- Confort de saisie avec le clavier.
- Gestion facilitée des gros volumes de médias.
- Génération plus rapide des e-carnets en PDF.
- Sauvegarde locale simplifiée.

## Repasser sur tablette : importer sauvegarde

Pour transférer vos données vers une tablette :

1. Effectuez une sauvegarde complète depuis les réglages.
2. Transférez le fichier `SAUVEGARDE_ECM.zip` sur votre tablette.
3. Utilisez la fonction "Restaurer une sauvegarde" sur la tablette.
