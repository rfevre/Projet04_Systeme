#!/bin/bash

#Script qui met un tag sur chaque fichier envoyé en paramétre et créer un lien dans /tag 
shift;
tabTag=();
i=0;

while [ "$1" != "--chemin" ]
do
    mkdir -p $HOME/tags/$1
    tabTag[$i]=$1
    shift
done

shift

ln -f $@ $HOME/tags/$tag/

