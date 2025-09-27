# Contributing to e-carnet V2 Documentation

Merci de votre intérêt pour contribuer à la documentation de l'application e-carnet maternelle !

## Comment contribuer

### Signaler un problème dans la documentation

1. Vérifiez d'abord si le problème n'a pas déjà été signalé dans les [issues existantes](https://github.com/Thierry28/e-carnetV2/issues)
2. Créez une nouvelle issue en utilisant le template approprié
3. Décrivez clairement le problème avec :
   - La page concernée
   - Le problème observé
   - La correction suggérée
   - Des captures d'écran si nécessaire

### Proposer des améliorations

Les contributions sont les bienvenues pour :

- Corriger des erreurs de frappe
- Améliorer la clarté des explications
- Ajouter des exemples
- Mettre à jour les captures d'écran
- Traduire du contenu

### Processus de contribution

1. **Fork** le repository
2. **Clone** votre fork localement
3. **Créez une branche** pour votre contribution :

   ```bash
   git checkout -b feature/amelioration-documentation
   ```
4. **Faites vos modifications** en suivant les standards du projet
5. **Testez** vos modifications localement
6. **Committez** vos changements avec un message clair
7. **Poussez** votre branche vers votre fork
8. **Créez une Pull Request** vers la branche principale

## Standards de documentation

### Structure des fichiers

- Utilisez des noms de fichiers descriptifs
- Respectez la numérotation existante pour l'ordre des pages
- Placez les images dans le dossier `docs/img/`
- Utilisez des liens relatifs pour les références internes

### Style de rédaction

- Utilisez un langage clair et accessible
- Privilégiez les phrases courtes
- Utilisez des titres descriptifs
- Ajoutez des exemples concrets
- Utilisez des listes à puces pour améliorer la lisibilité

### Format Markdown

```markdown
# Titre principal (H1)

## Section principale (H2)

### Sous-section (H3)

- Liste à puces
- Autre élément

1. Liste numérotée
2. Autre élément

**Texte en gras** et *texte en italique*

[Lien vers une page](../autre-page.md)

![Alt text](../img/capture.png)
```

### Images et captures d'écran

- Utilisez des formats web optimisés (PNG, JPG, WebP)
- Nommez les fichiers de manière descriptive
- Ajoutez toujours un texte alternatif
- Optimisez la taille des images

## Configuration de l'environnement de développement

### Prérequis

- Python 3.8 ou supérieur
- Node.js 16 ou supérieur (optionnel, pour les outils de linting)
- Git

### Installation

1. Clonez le repository :
   ```bash
   git clone https://github.com/Thierry28/e-carnetV2.git
   cd e-carnetV2
   ```

2. Installez les dépendances Python :
   ```bash
   pip install -r docs/requirements.txt
   ```

3. (Optionnel) Installez les dépendances Node.js :
   ```bash
   npm install
   ```

### Développement local

1. Lancez le serveur de développement :
   ```bash
   mkdocs serve
   # ou
   npm run dev
   ```

2. Ouvrez votre navigateur à l'adresse `http://127.0.0.1:8000`

3. Les modifications sont automatiquement rechargées

### Tests et validation

Avant de soumettre vos modifications :

1. Vérifiez que la documentation se construit sans erreur :
   ```bash
   mkdocs build --strict
   # ou
   npm run validate
   ```

2. (Optionnel) Vérifiez la syntaxe Markdown :
   ```bash
   npm run lint:md
   ```

## Scripts utiles

Le projet contient plusieurs scripts dans le dossier `scripts/` :

- `removeCommentsInMDfiles.sh` : Supprime les commentaires des fichiers Markdown
- `removeDotDotSlashInMDfiles.sh` : Corrige les chemins relatifs
- `createNewFiles.sh` : Utilitaire pour créer de nouveaux fichiers

## Questions ?

Pour toute question concernant la contribution :

- Consultez la [FAQ](docs/70-FAQ.md)
- Créez une issue avec le label "question"
- Contactez-nous à support(at)tr-esolutions.com

## Code de conduite

En contribuant à ce projet, vous acceptez de respecter notre code de conduite :

- Soyez respectueux et bienveillant
- Acceptez les critiques constructives
- Concentrez-vous sur ce qui est le mieux pour la communauté
- Montrez de l'empathie envers les autres membres

Merci pour votre contribution ! 🙏