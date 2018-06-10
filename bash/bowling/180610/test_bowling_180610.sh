#!/bin/bash
. ../../assert.sh
. bowling_180610.sh

# roll_many repeat_count pins1st pins2nd
roll_many() {
    for ((i = 0; i < $1; i++)) {
        add_score $2 $3
    }
}

reset_score
roll_many 12 10 0
assert total_socre "300"

reset_score
roll_many 10 9 0
assert total_socre "90" 

reset_score
roll_many 10 5 5
add_score 5 0
assert total_socre "150" 

assert_end
