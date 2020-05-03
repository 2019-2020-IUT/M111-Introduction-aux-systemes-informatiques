#! /bin/bash
# M111 - TP9 - concatene.sh

rm -rf GROSFICHIER

for FICH in TEST/*
do
    cat $FICH >> GROSFICHIER
done

