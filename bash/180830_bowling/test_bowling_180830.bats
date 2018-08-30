#!/usr/bin/env bats

. bowling_180830.sh

setup() {
    reset_score
}

@test "all strikes" {
    for ((i=0; i<10; i++)) {
        roll 10
    }
    roll 10
    roll 10
    [ `score` -eq 300 ]
}

@test "all spares with 9 and 1" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 1
    }
    roll 9
    [ `score` -eq 190 ]
}

@test "all frames with 8 and 1" {
    for ((i=0; i<10; i++)) {
        roll 8
        roll 1
    }
    roll 9
    [ `score` -eq 90 ]
}

@test "all frames with 9 and 0" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 0
    }
    [ `score` -eq 90 ]
}

@test "all frames with 0 and 9" {
    for ((i=0; i<10; i++)) {
        roll 0
        roll 9
    }
    [ `score` -eq 90 ]
}