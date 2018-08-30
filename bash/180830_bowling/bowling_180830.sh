#!/bin/bash

declare -a rolls=()

reset_score() {
    rolls=()
}

# roll <pins>
roll() {
    rolls+=($1)
}

# score
score() {
    local score=0
    local i=0
    for frame in {1..10}; do
        if [ ${rolls[$i]} -eq 10 ]; then
            score=`expr ${score} + 10 + ${rolls[$i+1]} + ${rolls[$i+2]}`
            i=`expr $1 + 1`
        elif [ `expr ${rolls[$i]} + ${rolls[$i + 1]}` -eq 10 ]; then
            score=`expr ${score} + 10 + ${rolls[$i+2]}`
            i=`expr $i + 2`
        else
            score=`expr ${score} + ${rolls[$i]} + ${rolls[$i+1]}`
            i=`expr $i + 2`
        fi
    done
    echo ${score}
}
