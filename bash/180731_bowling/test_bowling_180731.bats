#!/usr/bin/env bats

. bowling_180731.sh

@test "all strikes" {
    for ((i=0; i<10; i++)) {
        roll 10
    }
    roll 10
    roll 10
    [ `score` -eq 300 ]
}

@test "all 5 spares" {
    for ((i=0; i<10; i++)) {
        roll 5
        roll 5
    }
    roll 5
    [ `score` -eq 150 ]
}

@test "all 9 and 0 frames" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 0
    }
    [ `score` -eq 90 ]
}

@test "all spares with 9 and 1" {
    for ((i=0; i<10; i++)) {
        roll 9
        roll 1
    }
    roll 9
    [ `score` -eq 190 ]
}