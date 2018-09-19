#!/usr/bin/env bats

. bowling_180919.sh

for ((i=0; i<10; i++)) {
    roll 10
}
roll 10
roll 10
echo "before score"
score
echo "after score"
