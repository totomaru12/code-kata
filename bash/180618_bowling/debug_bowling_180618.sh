#!/bin/bash -x

. bowling_180618.sh

# roll_many <times> <pins>
roll_many() {
    for ((i = 0; i < $1; i++)) {
        add_score $2
    }
}

roll_many 12 10
