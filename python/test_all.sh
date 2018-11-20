#!/bin/bash

# TODO: python で testloaderを使ってやる
# --pattern
# python -m unittest discover -s "./180605_bowling" -p "test_*.py" -v

files="./*"
dirary=()
for filepath in $files; do
    if [ -d $filepath ] ; then
        dirary+=("$filepath")
    fi
done

for i in ${dirary[@]}; do
    echo $i
    cd $i
    python -m unittest discover -p "test_*.py" -v
    cd "../"
done
