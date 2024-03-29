### 1. Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
`cat /etc/passwd`

### 2. Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
`chmod 744 myfile`

### 3. Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?
créer un fichier `.gitignore` et l'éditer en indiquant le texte suivant `*.pdf`

### 4. Quelles commandes git utiliser pour fusionner les branches main et test_valide ?
`git checkout main`  
`git merge test-valide`

### 5. Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
```bash
echo "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :"
echo "- "Bonjour est-ce que ce clavier fonctionne bien ?""
echo "- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !""
echo "- "Même des tildes ~ ?""
echo "- "Evidemment !""
```

**ou**  
créer un fichier texte avec la commande `touch file.txt` , l'éditer avec le texte de l'énoncé, puis éxécuter la commande `cat file.txt`

### 6. La commande jobs -l donne le résultat ci-dessous :
```bash
wilder@Ubuntu:~$ jobs -l
[1]  37970 En cours d'exécution   gedit &
[2]  37971 En cours d'exécution   xeyes &
[3]- 37972 En cours d'exécution   sleep
```
Quelle commande te permet de mettre en avant le processus gedit ?

`fg %1`

### 7. Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
Couche 2 (Liaison) = Switch : Ils utilisent les adresses MAC pour rediriger le trafic  
Couche 3 (Réseau) = Routeurs : Ils utilisent les adresses IP pour rediriger le trafic

### 8. Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
`cd` = `Set-Location`
`cp` = `Copy-Item`
`mkdir` = `New-Item -Path <path> -Name <name> -ItemType -Directory`
`ls` = `Get-ChildItem`


### 9. Dans la trame ethernet, qu'est-ce que le payload ?
Le payload est la "charge utile" (ou Service Data Unit/SDU), encapsulé dans les couches supérieures du modèle OSI

### 10. Pourquoi les classes IP sont remplacées par le CIDR ?
A cause de la pénurie d'adresses IP disponibles.

