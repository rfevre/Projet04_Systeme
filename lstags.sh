#!/bin/bash

for i in $@
do
    tree $HOME/tags/ -f | egrep "\<"$i"\>"
done
