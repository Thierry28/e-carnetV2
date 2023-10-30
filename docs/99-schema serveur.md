
```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#BB2528',
      'primaryTextColor': '#fff',
      'primaryBorderColor': '#7C0000',
      'lineColor': '#F8B229',
      'secondaryColor': '#006100',
      'tertiaryColor': '#fff'
    }
  }
}%%
sequenceDiagram

  participant Enseignant
  participant Application (mode enseignant)
  participant Navigateur
  participant Internet (coté école)
  participant Serveur
  participant Internet (coté parents)
  participant Application (mode parent)
  participant Parents

  alt Première fois
    Enseignant->>Application (mode enseignant): Accéder à 'Réglages, serveur'
    Enseignant->>Application (mode enseignant): Activer le bouton ON
    Application (mode enseignant)->>Serveur: Demande d'acces
    Serveur ->> Navigateur: affichage page authentification dans navigateur
    Enseignant->>Navigateur: Saisir login/mot de passe
    Navigateur->>Serveur: Demande d'autorisation
    Serveur->>+Navigateur: Demande la confirmationn à l'enseignant
    Enseignant->> Navigateur: Accorder l'autorisation
    Enseignant->>Navigateur: Fermer la fenêtre
    Navigateur->>Application (mode enseignant): Connfirmation connection

  else Déjà configuré
    Enseignant->>Application (mode enseignant): Activer le bouton ON
    Application (mode enseignant)->>Enseignant: Confirmation connection
  end
  loop À chaque création de e-journal
    Application (mode enseignant)->>Application (mode enseignant): Vérifier si médias déjà copiés
    Application (mode enseignant)->>Serveur: Copier médias associés pas encore sur le serveur
    Application (mode enseignant)->>Serveur: Copier document e-journal
    Serveur->>Serveur: Attribuer URLs privées
    Serveur->>Application (mode enseignant): Donne les URLs disponibles
    Application (mode enseignant)->>Enseignant: Met à disposition les urls et QR code
  end
  Enseignant->>Parents: Envoyer URLs via email ou QR code
  Parents ->> Application (mode parent): active url ou scan QR code
  Application (mode parent)->>Internet (coté parents): accède au serveur via url
  Serveur->>Internet (coté parents): envoie les documents
  Internet (coté parents)->>Application (mode enseignant): Chargement documennt et medias

  alt Serveur OFF
    Application (mode enseignant)->>Serveur: Aucun échange
  end
  ```

/-------------------------------/

  ```mermaid
  sequenceDiagram

  participant Enseignant
  participant Application (mode enseignant)
  participant Navigateur
  participant Internet (coté école)
  participant Serveur
  participant Internet (coté parents)
  participant Application (mode parent)
  participant Parents

```
