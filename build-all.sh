#!/bin/sh


for i in gendev stack exercism; do
    script -c "docker build -t $i $i" typscript-$i.txt
done

