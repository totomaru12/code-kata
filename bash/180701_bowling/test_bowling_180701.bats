#!/usr/bin/env bats

. bowling_180701.sh

setup() {
    reset_score
}

@test "all strike" {
    for ((i=0; i<12; i++)) {
        roll 10
    }
    [ `score` -eq 300 ]
}

@test "all spare" {
    for ((i=0; i<21; i++)) {
        roll 5
    }
    [ `score` -eq 150 ]
}

@test "all nine" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 0
    }
    [ `score` -eq 90 ]
}

@test "all spare with 1st nine pins" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 1
    }
    roll 9
    [ `score` -eq 190 ]
}
