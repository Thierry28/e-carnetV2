# Development Guide

Guide de développement pour la documentation e-carnet V2.

## Architecture du projet

### Structure des fichiers

```
e-carnetV2/
├── docs/                      # Documentation source
│   ├── *.md                  # Pages de documentation
│   ├── img/                  # Images et captures d'écran
│   ├── css/                  # Styles CSS personnalisés
│   ├── files/                # Fichiers téléchargeables
│   └── requirements.txt      # Dépendances Python
├── scripts/                  # Scripts utilitaires
├── videos/                   # Fichiers vidéo
├── mkdocs.yml               # Configuration MkDocs
├── package.json             # Configuration Node.js
└── pyproject.toml          # Configuration Python
```

### Technologies utilisées

- **MkDocs** : Générateur de documentation statique
- **Material for MkDocs** : Thème moderne et responsive
- **Python** : Scripts de traitement
- **Node.js** : Outils de développement et linting
- **Pandoc** : Conversion de documents
- **PlantUML** : Génération de diagrammes

## Installation de l'environnement

### Prérequis

- Python 3.8+
- Node.js 16+
- Git

### Installation rapide

```bash
# Cloner le repository
git clone https://github.com/Thierry28/e-carnetV2.git
cd e-carnetV2

# Créer et activer l'environnement virtuel Python
python3 -m venv .venv
source .venv/bin/activate  # Sur macOS/Linux

# Installer les dépendances Python
pip install -r docs/requirements.txt

# Installer les dépendances Node.js (optionnel)
npm install
```

### Vérification de l'installation

```bash
# Tester MkDocs
./.venv/bin/mkdocs --version

# Tester la construction
npm run build

# Lancer le serveur de développement
npm run dev
```

## Workflow de développement

### Développement local

1. **Lancer le serveur de développement** :

   ```bash
   # Avec le script npm (recommandé)
   npm run dev
   # ou directement avec MkDocs
   ./.venv/bin/mkdocs serve
   ```

2. **Accéder à la documentation** : <http://127.0.0.1:8000>

3. **Modifier les fichiers** : Les changements sont automatiquement rechargés

### Scripts disponibles

```bash
# Scripts MkDocs
npm run build          # Construire la documentation
npm run build:clean    # Construire en supprimant le cache
npm run serve          # Serveur de développement local
npm run serve:public   # Serveur accessible publiquement
npm run deploy         # Déployer sur GitHub Pages

# Scripts de validation
npm run validate       # Construire avec validation stricte
npm run lint:md        # Vérifier la syntaxe Markdown
npm run lint:md:fix    # Corriger automatiquement le Markdown

# Scripts utilitaires
npm run clean          # Nettoyer les fichiers générés
npm run scripts:clean-comments  # Supprimer les commentaires MD
npm run scripts:clean-paths     # Corriger les chemins relatifs
```

### Bonnes pratiques

#### Organisation des fichiers

- **Nommage** : Utilisez des préfixes numériques pour l'ordre (ex: `01-Introduction.md`)
- **Images** : Placez-les dans `docs/img/` avec des noms descriptifs
- **Liens** : Utilisez des chemins relatifs pour les références internes
- **Structure** : Respectez la hiérarchie logique des sections

#### Rédaction

- **Titres** : Utilisez une hiérarchie claire (H1 > H2 > H3)
- **Longueur** : Privilégiez les phrases courtes et les paragraphes concis
- **Exemples** : Illustrez avec des captures d'écran et du code
- **Navigation** : Ajoutez des liens entre les sections connexes

#### Performance

- **Images** : Optimisez la taille (< 500KB recommandé)
- **Format** : Préférez WebP ou PNG optimisé
- **Alt text** : Ajoutez toujours un texte alternatif descriptif

## Configuration MkDocs

### Fichier principal : `mkdocs.yml`

```yaml
site_name: e-carnet V2 Documentation
theme:
  name: material
  language: fr
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - search.highlight
```

### Plugins utiles

- **search** : Recherche en texte intégral
- **minify** : Optimisation HTML/CSS/JS
- **git-revision-date** : Dates de modification automatiques
- **pdf-export** : Génération PDF

## Scripts utilitaires

### `removeCommentsInMDfiles.sh`

Supprime les commentaires HTML des fichiers Markdown :

```bash
./scripts/removeCommentsInMDfiles.sh
```

### `removeDotDotSlashInMDfiles.sh`

Corrige les chemins relatifs problématiques :

```bash
./scripts/removeDotDotSlashInMDfiles.sh
```

### `createNewFiles.sh`

Utilitaire pour créer de nouveaux fichiers de documentation :

```bash
./scripts/createNewFiles.sh "Nouveau fichier" "30-NouveauFichier.md"
```

## Tests et validation

### Tests automatisés

```bash
# Validation stricte de la construction
mkdocs build --strict

# Vérification des liens brisés
npm run validate

# Linting Markdown
npm run lint:md
```

### Tests manuels

1. **Navigation** : Vérifiez tous les liens internes
2. **Responsive** : Testez sur différentes tailles d'écran
3. **Images** : Vérifiez l'affichage et les temps de chargement
4. **Recherche** : Testez la fonctionnalité de recherche

## Déploiement

### GitHub Pages (automatique)

Le déploiement se fait automatiquement via GitHub Actions lors du push sur `master`.

### Déploiement manuel

```bash
# Construire et déployer
mkdocs gh-deploy

# Ou via npm
npm run deploy
```

### ReadTheDocs (recommandé)

Configuration automatique via le fichier `mkdocs.yml` et les hooks RTD.

## Troubleshooting

### Problèmes courants

#### Erreur de construction

```bash
# Nettoyer et reconstruire
npm run clean
mkdocs build --clean
```

#### Liens brisés

```bash
# Vérifier avec validation stricte
mkdocs build --strict
```

#### Images manquantes

- Vérifiez les chemins relatifs
- Assurez-vous que les fichiers existent dans `docs/img/`

#### Performance lente

- Optimisez les images (< 500KB)
- Utilisez le cache MkDocs
- Vérifiez les plugins actifs

### Logs et debugging

```bash
# Mode verbose
mkdocs serve --verbose

# Logs de construction
mkdocs build --verbose --clean
```

## Contribution

Voir [CONTRIBUTING.md](CONTRIBUTING.md) pour les détails sur les contributions.

## Ressources

- [Documentation MkDocs](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown Guide](https://www.markdownguide.org/)
- [PlantUML](https://plantuml.com/)