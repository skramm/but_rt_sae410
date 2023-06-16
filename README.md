# but_rt_sae410

* S. Kramm
* juin 2023

Ce dépot a vocation à fournir aux étudiants des démonstrations de briques logicielles
pour les aider à réaliser leur projet.

Les démos sont dockerisées, elle devraient tourner quel que soit la machine cible.


## 1 - Demo Jinja

Pour les faire tourner:
```
cd demo_jinja
./build.sh # crée une image Docker
./run.sh  # lance le Docker (bash sous Debian avec tout déjà installé)
```

Ceci doit ouvir un shell dans le conteneur, dans un dossier `/srv`.
On peut ensuite taper le nom d'une des démos pour l'exécuter (voir la liste avec `$ ls -l *.py`).

Le conteneur a un lien statique avec le dossier dans la machine ("bind mount"), donc vous pouvez modifier le code.

**ATTENTION**: si vous voulez expérimenter avec le code, mieux vaut faire une copie de tout le dossier ailleurs (dans lequel vous pourrez virer le dossier `.git`).
En effet, si vous faites des modifs, lorsque vous voudrez synchroniser le dossier avec mes modifs à moi (via un `git pull`), il y aura des conflits.


### 1.1 - demo Jinja 1
Lancer:
```
./test1.py
```
ce qui va provoquer l'affichage de 3 pages HTML dans la console.

La boucle est ici dans le code Python, donc on appelle 3 fois la fonction de rendering, qui va donc générer 3 pages
(ici, on se contente de les afficher dans la console, mais avec Flask elle seront disponibles via le serveur).
```
************** FRUIT= apple
<html>
    <head>
        <title>Variable apple</title>
    </head>
    <body>
        <h3>Hello apple</h3>
    </body>
</html>
************** FRUIT= banana
<html>
    <head>
        <title>Variable banana</title>
    </head>
    <body>
        <h3>Hello banana</h3>
    </body>
</html>
************** FRUIT= cherry
<html>
    <head>
        <title>Variable cherry</title>
    </head>
    <body>
        <h3>Hello cherry</h3>
    </body>
</html>
```
Voir le fichier Python ainsi que le template pour comprendre comment ça marche.

### 1.2 - demo Jinja 2

Lancer:
```
./test2.py
```

Ceci va générer une unique page avec un tableau avec un nombre de lignes dynamique, pas de boucle dans le code Python.
Dans cette démo, la "boucle" est dans le "template" `test2.html`.
