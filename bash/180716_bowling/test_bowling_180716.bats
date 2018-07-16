#!/usr/bin/env bats

. bowling_180716.sh

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

@test "all spares" {
    for ((i=0; i<10; i++)) {
        roll 5
        roll 5
    }
    roll 5
    [ `score` -eq 150 ]
}

@test "all nines" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 0 
    }
    roll 9
    [ `score` -eq 90 ]
}

@test "all spares with nines 1st" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 1
    }
    roll 9
    [ `score` -eq 190 ]
}
