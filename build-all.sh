#!/bin/sh


for i in gen-dev haskell-dev:7.8.4 exercism; do
    script -c "docker build -t $i $i" typscript-$i.txt
done

