#!/bin/sh

clist="gen-dev haskell_7.8.4-dev ocaml mirage haskell_7.8.4-dev-exercism ocaml-exercism mirage-exercism"

for i in $clist; do
    echo
    echo "Build $i"
    echo
    cmd="docker build -t $i $i"
    if [ `uname -s` = 'Darwin' ]; then
        vgv $cmd
    else
        script -c "$cmd" typescript-$i.txt
    fi
done

