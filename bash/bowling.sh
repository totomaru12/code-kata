#!/bin/bash

declare -a rolls=()

# add_score pins1st pins2nd
# ex) add_score 3 6
add_score() {
    if [ $1 -eq 10 ]; then
        rolls+=($1)
    else
        rolls+=($1)
        rolls+=($2)
    fi
}

# total_score
total_socre() {
    local score=0
    # TODO: renew to 10 count loop
    for ((i = 0; i < ${#rolls[@]}; i++)) {
        if [ ${rolls[$i]} -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$i+1]} \+ ${rolls[$i+2]}`
        elif [ `expr ${rolls[$i]} \+ ${rolls[$i+1]}` -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$i+2]}`
            i=`expr ${i} + 1`
        else
            score=`expr ${score} \+ ${rolls[$i]} + ${rolls[$i+1]}`
            i=`expr ${i} + 1`
        fi
    }
    echo $score
}
