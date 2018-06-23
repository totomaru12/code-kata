#!/usr/bin/env bats

. bowling_180623.sh

# roll_many <times> <pins>
roll_many() {
    for ((i = 0; i < $1; i++)) {
        add_score $2
    }
}

setup () {
    reset_score
}

@test "all strike" {
    roll_many 12 10
    [ `score` -eq 300 ]
}

@test "all spare" {
    roll_many 21 5
    [ `score` -eq 150 ]
}

@test "all nines" {
    for ((i = 0; i < 10; i++)) {
        add_score 9
        add_score 0
    }
    [ `score` -eq 90 ]
}
