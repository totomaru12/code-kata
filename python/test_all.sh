#!/bin/bash

file_list="./*"
dir_list=()
for file_path in $file_list; do
    if [ -d $file_path ] ; then
        dir_list+=("$file_path")
    fi
done

for dir in ${dir_list[@]}; do
    echo $dir
    cd $dir
    python -m unittest discover -p "test_*.py" -v
    cd "../"
done
