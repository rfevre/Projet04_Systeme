#!/bin/bash

#Script qui supprime un tag
tag=$1;
shift;

for j in $@
do
    rm $HOME/tags/$tag/$j
done

rmdir --ignore-fail-on-non-empty $HOME/tags/$tag
