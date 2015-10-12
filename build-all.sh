#!/bin/sh


for i in gendev stack exercism; do
    cmd="docker build -t $i $i"
    if [ `uname -s` = 'Darwin' ]; then
        vgv $cmd
    else
        script -c "$cmd" typscript-$i.txt
    fi
done

