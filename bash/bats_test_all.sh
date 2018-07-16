#!/bin/bash
# This scrpit executes all bats test.

current_path=`pwd`
target_dir_relative_path="18*/"
search_path=${current_path}"/"${target_dir_relative_path}

search_path_list=($(ls -d ${search_path}))
for target_dir_path in ${search_path_list[@]}; do
    echo "[bats test target]" ${target_dir_path}
    cd ${target_dir_path}
    bats ./*.bats
done
