#!/bin/bash -x

declare -a rolls=()

reset_score() {
    rolls=()
}

# add_score <pins>
add_score() {
    rolls+=($1)
}

total_score() {
    local score=0
    local index=0

    for ((i = 0; i < 10; i++)) {
        if [ ${rolls[$index]} -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$index+1]} \+ ${rolls[$index+2]}`
            index=`expr ${index} \+ 1`
        elif [ `expr ${rolls[$index]} \+ ${rolls[$index+1]}` -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$index+2]}`
            index=`expr ${index} \+ 2`
        else
            score=`expr ${score} \+ ${rolls[$index]} \+ ${rolls[$index + 1]}`
            index=`expr ${index} \+ 2`
        fi
    }
    echo ${score}
}