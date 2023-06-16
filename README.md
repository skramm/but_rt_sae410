# but_rt_sae410

* S. Kramm
* juin 2023

Ce dépot a vocation à fournir aux étudiants des démonstrations de briques logicielles
pour les aider à réaliser leur projet.

Les démos sont dockerisées, elle devraient tourner quel que soit la machine cible.


## Demo Jinja2

Pour la faire tourner:
```
cd demo_jinja
./build.sh
./run.sh
```

Ceci doit ouvir un shell dans le conteneur, dans un dossier `/srv`.
On peut ensuite taper
```
./test1.py
```
ce qui va provoquer l'affichage de 3 pages HTML dans la console:
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

