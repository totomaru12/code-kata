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
    for ((i = 0; i < ${#rolls[@]}; i++)) {
        if [ ${rolls[$i]} -eq 10 ]; then
            score=`expr ${score} \+ 10 \ + ${rolls[$i+1]} \+ ${rolls[$i+2]}`
        else
            local frame_score=0
            frame_score+=${rolls[$i]}
            frame_score+=${rolls[$i+1]}
            if [ ${frame_score} -eq 10 ]; then
                score+=$(10+${rolls[$i+2]})
            else
                score=`expr ${score} \+ ${rolls[$i]} + ${rolls[$i+1]}`
                i=`expr ${i} + 1`
            fi
        fi
    }
    echo $score
}
