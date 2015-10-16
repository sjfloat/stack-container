#!/bin/sh

clist="gen-dev haskell-dev:7.8.4 ocaml mirage haskell-dev:7.8.4-exercism ocaml-exercism mirage-exercism"

for i in $clist; do
    echo
    echo "Build $i"
    echo
    cmd="docker build -t $i $i"
    if [ `uname -s` = 'Darwin' ]; then
        vgv $cmd
    else
        script -c "$cmd" typscript-$i.txt
    fi
done

