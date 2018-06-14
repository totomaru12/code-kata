#!/usr/bin/env bats

. bowling_180614.sh

# roll_many <times> <pins>
roll_many() {
    for ((i = 0; i < $1; i++)) {
        add_score $2
    }
}

setup() {
    reset_score
}

@test "all strike" {
    roll_many 12 10
    [ `total_score` -eq 300 ]
}

@test "all nines" {
    for ((i = 0; i < 10; i++)) {
        add_score 9
        add_score 0
    }
    [ `total_score` -eq 90 ]
}

@test "all spares" {
    roll_many 21 5
    [ `total_score` -eq 150 ]
}




