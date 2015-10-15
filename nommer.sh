#!/bin/bash

inode=$1;
shift;

tree $HOME/tags/ --inodes -f | egrep $inode | rev | cut -d\  -f1 | rev | head -n 1


