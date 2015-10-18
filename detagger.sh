#!/bin/bash

#Script qui supprime un ou plusieur fichier dans des tags
#Param: Les Tags d'abord, ensuite après --fichier, le nom des fichier a supprimer
tabTag=();
i=0;

while [ "$1" != "--fichier" ]
do
    tabTag[$i]=$1
    ((i++))
    shift
done

shift

#Boucle pour supprimer un ou plusieurs liens physique d'un fichier en fonction d'un ou plusieurs Tags
for fichier in $@
do
    for tag in ${tabTag[@]}
    do
	rm $HOME/tags/$tag/$fichier
	rmdir --ignore-fail-on-non-empty $HOME/tags/$tag
    done
done


