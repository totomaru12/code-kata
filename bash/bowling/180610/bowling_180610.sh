#!/bin/bash

declare -a rolls=()

# reset_score
reset_score() {
    rolls=()
}

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
    local roll_index=0
    for ((i = 0; i < 10; i++)) {
        if [ ${rolls[$roll_index]} -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$roll_index+1]} \+ ${rolls[$roll_index+2]}`
            roll_index=`expr ${roll_index} + 1`
        elif [ `expr ${rolls[$roll_index]} \+ ${rolls[$roll_index+1]}` -eq 10 ]; then
            score=`expr ${score} \+ 10 \+ ${rolls[$roll_index+2]}`
            roll_index=`expr ${roll_index} + 2`
        else
            score=`expr ${score} \+ ${rolls[$roll_index]} + ${rolls[$roll_index+1]}`
            roll_index=`expr ${roll_index} + 2`
        fi
    }
    echo $score
}
