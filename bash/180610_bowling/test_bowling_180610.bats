#!/usr/bin/env bats

. bowling_180610.sh

# roll_many repeat_count pins1st pins2nd
roll_many() {
    for ((i = 0; i < $1; i++)) {
        add_score $2 $3
    }
}

setup() {
    reset_score
}

@test "all strike" {
    roll_many 12 10 0
    [ `total_socre` -eq 300 ]
}

@test "all nines" {
    roll_many 10 9 0
    [ `total_socre` -eq 90 ]
}

@test "all spare" {
    roll_many 10 5 5
    add_score 5 0
    [ `total_socre` -eq 150 ]
}