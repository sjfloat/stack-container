#!/bin/sh


for i in gen-dev haskell-dev:7.8.4 ocaml exercism; do
    cmd="docker build -t $i $i"
    if [ `uname -s` = 'Darwin' ]; then
        vgv $cmd
    else
        script -c "$cmd" typscript-$i.txt
    fi
done

