# but_rt_sae410

* S. Kramm - IUT R&T Rouen
* juin 2023

Ce dépot a vocation à fournir aux étudiants des démonstrations de briques logicielles
pour les aider à réaliser leur projet.

Les démos sont dockerisées, elle devraient tourner quel que soit la machine cible.

**Rappel**: ce dépot est suceptible d'évoluer, donc une fois que vous l'avez clonée, avant toute séance de travail:
```
$ git pull
```



## 1 - Demo Jinja

Pour les faire tourner:
```
cd demo_jinja
./build.sh # crée une image Docker
./run.sh  # lance le Docker (bash sous Debian avec tout déjà installé)
```

Ceci doit ouvir un shell dans le conteneur, dans un dossier `/srv`.
On peut ensuite taper le nom d'une des démos pour l'exécuter (voir la liste avec `$ ls -l *.py`).

Le conteneur a un lien statique avec le dossier dans la machine ("bind mount"), donc vous pouvez modifier le code et tester sans avoir besoin de "rebuilder" le conteneur.

**ATTENTION**: si vous voulez expérimenter avec le code, mieux vaut faire une copie de tout le dossier ailleurs (dans lequel vous pourrez virer le dossier `.git`).
En effet, si vous faites des modifs, lorsque vous voudrez synchroniser le dossier avec mes modifs à moi (via un `git pull`), il y aura des conflits.


### 1.1 - demo Jinja 1
Lancer [test1.py](demo_jinja/test1.py):
```
$ ./test1.py
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

Lancer [test2.py](demo_jinja/test2.py):
```
$ ./test2.py
```

Ceci va générer une unique page avec un tableau avec un nombre de lignes dynamique, pas de boucle dans le code Python.
Dans cette démo, la "boucle" est dans le "template" [test2.html](demo_jinja/templates/test2.html).
```
<html>
    <head>
        <title>For Example</title>
    </head>
    <body>
        <h2>Demo tableau</h2>
        <table>
        <tr><th>En tete</th></tr>
        
          <tr><td> apple </td></tr>  
        
          <tr><td> banana </td></tr>  
        
          <tr><td> cherry </td></tr>  
        
        </table>
    </body>
</html>
```

### 1.3 - demo Jinja 3

Cette démo montre comment on peut avoir des tests (if/else) dans le template HTML
et comment on peut passer une liste composée de paire JSON:

Lancer [test3.py](demo_jinja/test3.py):
```
$ ./test3.py
```
Voir le template [test3.html](demo_jinja/templates/test3.html).


