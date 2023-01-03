# Questions/Réponses fréquentes (FAQ)

## Mes e-carnets sont vides !

Vous avez déjà pris des photos, des vidéos, des enregistrements sonores, mais ... vous rencontrez des difficultés pour voir apparaître vos documents dans le e-carnet.

Voici les 3 points à vérifier pour qu'une trace (photo, notes, ) apparaisse dans le e-carnet : 

- la trace doit être associée à un observable pour être restituée dans les e-carnets ou e-journaux produits. A partir de la trace, vérifier que vous avez bien affecté un observable du référentiel.
  
- si une période de sélection a été définie dans les réglages, la date de la trace doit être comprise dans cette période. Cf Réglages/Paramètre ecarnet/Dates de début et fin de période.

- Vous avez changé de référentiel entre le moment où vous avez pris les traces et le moment où vous voulez produire les e-carnets. En effet, chaque trace capturée l'est sur la base du référentiel courant au moment de la capture. Lors de la génération d'un e-carnet, le catalogue courant est parcouru, pour chaque observable le logiciel recherche l'existence d'une trace figurant dans la période courante, et si elle existe, la restitue. Si vous avez changé de référentiel, ce parcours ne va trouver aucune trace associée à ce nouveau référentiel. 

Solution : produire un e-journal. Dans ce cas, la mécanique est différente. Le logiciel recherche tous les médias capturés dans la période courante et les restitue dans l'ordre chronologique en les attachant à l'observable du référentiel qui était en vigueur au moment de la capture. Donc, peu importe le référentiel d'observable en vigueur, le e-journal contiendra toutes les traces affectées à un observable au moins et pour laquelle la date de capture est comprise entre les 2 dates figurant dans réglages/e-carnet.

Si le problème subsiste : 

- mettre à jour votre application avec la dernière version,
- changer les dates dans Réglages/Parametres e-carnet pour provoquer une mise à jour des valeurs dans la base de données
- faire afficher la fenêtre de journal si vous l’aviez fermée (Réglages/Journal)
- générer à nouveau vos e-carnets : surveiller dans la fenêtre journal ce qui pourra s’afficher. Depuis la version 1.8.2v95, des messages indiquent la période de sélection utilisée, le nombre de documents filtrés, et un message d’alerte apparaîtra si celui ci est à 0.
- générer une sauvegarde et transmettre le fichier par transfert de fichiers ou sur via un lien sur un cloud à [support@tr-esolutions.com](mailto://support@tr-esolutions.com)
- envoyer toute copie d'écran qui illustreraient le problème à [support@tr-esolutions.com](mailto://support@tr-esolutions.com)
  
## Comment supprimer une activité ?

- Aller sur le document
- Passer « en édition » avec le bouton en haut à droite
- Aller en bas de la page
- bouton supprimer document
- bouton supprimer observables sur chaque observable associé au document

Cf [Parametrage des utilisateurs de la tablette](../23-MesDocuments/index.html)

## Est-il possible de conserver l'historique dans les commentaires/appréciations de la fiche élève ?

Oui, pour cela il suffit d'utiliser le séparateur --- (3 signes moins).

Tout ce qui se retrouvera au dessus du dernier séparateur --- ne sera pas restitué dans le carnet de réussite.

[!embed](https://www.youtube.com/watch?v=5X26eP7_k7U)

## Comment faire apparaitre le nom de 2 enseignant(e)s 

Pour changer le/les noms qui apparaissent dans le e-carnet, 

Changer le texte qui apparait dans la case enseignant 1 

En y mettant par Exemple : Mme A. Dupond, Mme B. Durand

cf : [parametrage des utilisateurs de la tablette](../25-Reglages/index.html#parametrage_des_utilisateurs_de_la_tablette)

Puis activer le changement en allant dans « qui suis je » et choisir la nouvelle valeur 
[multi-utilisateur qui suis je](../25-Reglages/index.html#multi-utilisateur_qui_suis-je)

Pour avoir une double signature voici le process : 2 possibilités : 

- numérique : signer à 2 dans l’espace prévu à cet effet
- scan depuis papier : 
  - signer un document papier, les 2 signatures cote à cote devant tenir dans un rectangle, 
  - scanner, 
  - rogner un rectangle avec un logiciel de retouche d'iamge
  - et mettre le fichier sur la tablette.
  - Importer ensuite le fichier avec la commande "choisir fichier signature"

C’est décrit ici : 
[parametrage des utilisateurs de la tablette](../25-Reglages/index.html#parametrage_des_utilisateurs_de_la_tablette)

## Modifier un mot, une phrase, autre chose ... dans tous les e-carnets

Par exemple, 

Vous êtes plusieurs enseignant(e)s à figurer en tête du e-carnet.

Vous voulez modifier le texte standard "Enseignant :" en "Enseignants :" ou "Enseignantes :".

2 façon de procéder : 

- En utilisant la fonctionnalité prévue à cet effet : "Remplacements". Cf : [Activation de la fonction de personnalisation](../25-Reglages/index.html#activation_de_la_fonction_de_personnalisation)

- En utilisant un éditeur de texte et effectuer un chercher/remplacer "de masse" c'est à dire sur tous les fichiers du répertoire qui contient tous vos fichiers HTML des e-carnets.
Cf : [Modifier les documents en masse](../85-20-tutoExperts/index.html#modifier_les_documents_en_masse)


## Dans les fichiers en version pdf, les sauts de page coupent certaines images

Le réglages de la mise en page en version pdf n'est pas simple ...

2 solutions en attendant mieux : 
- Il faut "bricoler" le fichier html : le truc consiste à insérer des retours à la ligne pour décaler la coupure de page. Pour cela :
  - Ouvrir le fichier html dans un éditeur de texte de type note pad
  - Insérer des lignes contenant <br> qui signifie saut de ligne dans le format html

- Envoyer le fichier au support@tr-esolutions.com qui fera la manip.
  

## Faire apparaître le cadre pour le "Mot de la Direction"

Dans les fichiers html des e-carnets, 

Il faut remplacer : 

>eportfolio-evalDirection{display:none!important;}

par

>eportfolio-evalDirection{}

Cette manipulation est gérée en automatique dans le e-carnet par : 

(extrait fichier remplacements.json)

 {
    "actif":"oui",
    "commentaire":"affichage cadre Evaluation Direction",
    "actuel": "eportfolio-evalDirection{display:none!important;}", 
    "nouveau": "eportfolio-evalDirection{}"
  },

Cf : [Activation de la fonction de personnalisation](../25-Reglages/index.html#activation_de_la_fonction_de_personnalisation)

## Supprimer les icônes (i) isolées

Remplacer :

>
```
<p class=""><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAA30lEQVQ4jZ3S0UpCQRAG4O8ZlAN2nfkASr5BEITgXSg+QGhJ1E3QIV9AiUDwdb0YT5xstw7nv1h295/9Z2fm5zcGWOMTX9if9k+4SsT/wALvGKFTu+9iiBLz3OM17v7LgAlWqcxNHtdFZtVhIL6dwiueM9wH+sTXR5mgC/Qy3BiPRIc7maBb3GS4AjtiVDmUePuD338vLQUORAndFgIFtoTDhi0ErrEk7Flmgl7ElFLY4LI6zIU5mmKK+/PLVUORKR5y5Ew4bCyaVKEQNW9Smc/RFw7biREfRLeXajVXOAIXjCDuYb1anAAAAABJRU5ErkJggg=="/>  </p>
```

Par 

>(rien) , chaine vide ...

## Peut on partager le e-carnet sur plusieurs appareils ?

Comme le logiciel e-carnet maternelle fonctionne SANS internet et sans serveur externe, toute les informations concernant les élève et la classe sont stockées sur la tablette.

Donc, non, la classe et les élève doivent être sur une unique tablette qui doit passer de main en main si il y a plusieurs enseignants pour une même classe.

## Peut-on transmettre les dossiers de chaque élève aux professeurs de la classe suivante ?

Oui, pour cela il faut utiliser le dossier éléve au format "epub".


## Modifier la mise en page des phots dans le e-carnet : présentation horizontale

(Niveau expert ...) 

Voici une version du fichier remplacements.json qui peut être utilisé en remplacement du fichier par défaut situé dans le répertoire "réglages" du dossier e-carnet de maternelle"

```
[
  {
    "actif":"oui",
    "commentaire":"Preuves : suppression colonnes et affichage horizontal 1/3",
    "actuel": "bloc-preuve {\n *(.*\n *.*)", 
    "nouveau": "bloc-preuve {\n"
  },

  {
    "actif":"oui",
    "commentaire":"Preuves : suppression colonnes et affichage horizontal 2/3",
    "actuel": "vignette-portfolio{}", 
    "nouveau": "vignette-portfolio{width: 30%; display:inline-grid;}"
  },

  {
    "actif":"non",
    "commentaire":"changement libellé bloc",
    "actuel": ">Bilan périodique des progrès<",
    "nouveau": ">Bilan en langue Anglaise<"
  },
  {
    "actif":"non",
    "commentaire":"changement libellé bloc",
    "actuel": ">Réussites régulières<",
    "nouveau": ">Bilan en langue Française<"
  },
  {
    "actif":"non",
    "commentaire":"changement libellé bloc",
    "actuel": ">Prochains apprentissages<",
    "nouveau": ">Bilan en langue Arabe<"
  },
  {
    "actif":"non",
    "commentaire":"masquage",
    "actuel": "<h2> Ce que",
    "nouveau": "<h2 style='display: none;'> Ce que"
  },
  {
    "actif":"oui",
    "commentaire":"augmentation taille police",
    "actuel": "font-size: 14px;",
    "nouveau": "font-size: 16px;"
  },
  {
    "actif":"oui",
    "commentaire":"suppression date",
    "actuel": "<p class=\"date\"><img .*> .*<\/p>",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"suppression toutes les bordures cadre signature",
    "actuel": "<div class=\"bloc-cartouche-signatures bordure .*\">",
    "nouveau": "<div class=\"bloc-cartouche-signatures \">"
  },
  {
    "actif":"non",
    "commentaire":"",
    "actuel": "Enseignant :",
    "nouveau": "Enseignantes :"
  },
  {
    "actif":"non",
    "commentaire":"",
    "actuel": "Email :",
    "nouveau": "Site web :"
  },
  {
    "actif":"oui",
    "commentaire":"Suppression bouton",
    "actuel": "<button type=\"button\" class=\"button\" data-action=\"clearParent\">Effacer</button>",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"Suppression bouton",
    "actuel": "<button type=\"button\" class=\"button\" data-action=\"undoParent\">Defaire</button>",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"Suppression bouton",
    "actuel": "<button type=\"button\" class=\"button\" data-action=\"save-pngParent\">Utiliser</button>",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"Masquage par défaut des titres observables",
    "actuel": "domaine flagMasquerTitresCompetences",
    "nouveau": "domaine flagMasquerTitresCompetences\" style=\"display: none;"
  },
  {
    "actif":"oui",
    "commentaire":"Masquage par défaut des titres observables",
    "actuel": "objectif flagMasquerTitresCompetences",
    "nouveau": "objectif flagMasquerTitresCompetences\" style=\"display: none;"
  },
  {
    "actif":"oui",
    "commentaire":"Masquage par défaut des titres observables",
    "actuel": "attendu flagMasquerTitresCompetences",
    "nouveau": "attendu flagMasquerTitresCompetences\" style=\"display: none;"
  },
  {
    "actif":"oui",
    "commentaire":"Suppression mode 2 colonnes",
    "actuel": "bloc container2col blocBilan",
    "nouveau": "bloc blocBilan"
  },
  {
    "actif":"oui",
    "commentaire":"Suppression mode 2 colonnes",
    "actuel": "bloc container2col blocReussitesRegulieres",
    "nouveau": "bloc blocReussitesRegulieres"
  },
  {
    "actif":"oui",
    "commentaire":"Suppression mode 2 colonnes",
    "actuel": "bloc container2col blocVaApprendre",
    "nouveau": "bloc blocVaApprendre"
  },
  {
    "actif":"oui",
    "commentaire":"Suppression mode 2 colonnes",
    "actuel": "bloc container2col blocBilanPeriodiqueProgres",
    "nouveau": "bloc blocBilanPeriodiqueProgres"
  },
  {
    "actif":"non",
    "commentaire":"remplacement tag {ar}",
    "actuel": "{ar}",
    "nouveau": " (Arabe)"
  },
  {
    "actif":"non",
    "commentaire":"suppression tag {en}",
    "actuel": "{en}",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"suppression complète cadre signature directeur",
    "actuel": "signatureDirecteur{}", 
    "nouveau": "signatureDirecteur{display:none;}"
  },

  {
    "actif":"non",
    "commentaire":"inactif, suppression heure mn dans la date, pour mémoire uniquement",
    "actuel": "/> Le (.*) à (.*) mn",
    "nouveau": "/> Le $1 "
  },
  {
    "actif":"non",
    "commentaire":"inactif, pour mémoire uniquement",
    "actuel": "<p>Visa de l’enseignante / de l’enseignant de la classe :</p>",
    "nouveau": ""
  },
  {
    "actif":"non",
    "commentaire":"inactif, pour mémoire uniquement",
    "actuel": "<p>Visa de la directrice / du directeur de l’école :</p>",
    "nouveau": ""
  },
  {
    "actif":"non",
    "commentaire":"inactif, pour mémoire uniquement",
    "actuel": "<p>Visa des parents ou du représentant légal de l’élève :</p>",
    "nouveau": ""
  },
  {
    "actif":"oui",
    "commentaire":"masquage icone audio",
    "actuel": "audioType",
    "nouveau": "inactif"
  },
  {
    "actif":"oui",
    "commentaire":"masquage icone video",
    "actuel": "videoType",
    "nouveau": "inactif"
  },
  {
    "actif":"oui",
    "commentaire":"suppression",
    "actuel": "(Libellé non trouvé)",
    "nouveau": ""
  }

]
```

## Retrouver une mise en page du e-carnet "standard" 

Il est possible de « revenir en arrière après toute tentative de personnalisation des "remplacements"  » en désactivant le bouton « remplacement » et en regénérant un nouvel e-carnet.



## Créer un référentiel multi langue, exemple Français/Anglais

Voir dans : [Tutos experts](../85-20-tutoExperts/index.html)

## Comment installer la version PC ?

Voir : [!embed](https://www.youtube.com/watch?v=mBkOB1D2Sjc)

## Comment partager les fichiers e-carnet avec photos, vidéos avec les parents

Voir dans : [Comment partager les fichiers e-carnet avec photos, vidéos avec les parents](../85-21-tutoPartageParents.md)

