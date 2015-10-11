#!/bin/sh


for i in gen-dev haskell-dev exercism; do
    script -c "docker build -t $i $i" typscript-$i.txt
done

