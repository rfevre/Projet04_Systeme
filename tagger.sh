#!/bin/bash

#Script qui met un tag sur chaque fichier envoyé en paramétre et créer un lien dans /tag
#Param: Les tags d'abord, ensuite après --chemin, le chemin des fichier pour créer un lien physique
tabTag=();
i=0;

while [ "$1" != "--chemin" ]
do
    mkdir -p $HOME/tags/$1
    tabTag[$i]=$1
    ((i++))
    shift
done

shift

#Boucle pour créer un lien physique d'un fichier dans chaque Tags donné par l'utilisateur
for cheminFichier in $@
do
    for tag in ${tabTag[@]}
    do
	ln -f $cheminFichier $HOME/tags/$tag/
    done
done



