#!/bin/bash

#Script qui met un tag sur chaque fichier envoyé en paramétre et créer un lien dans /tag 
tabTag=();
i=0;

while [ "$1" != "--chemin" ]
do
    mkdir -p $HOME/tags/$1
    tabTag[$i]=$1
    echo ${tabTag[$i]}
    ((i++))
    shift
done

shift

#Boucle pour créer un lien physique d'un fichier dans chaque Tags donné par l'utilisateur
for fichier in $@
do
    for tag in ${tabTag[@]}
    do
	ln -f $fichier $HOME/tags/$tag/
    done
    shift
done



