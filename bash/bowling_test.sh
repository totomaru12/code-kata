#!/bin/bash

. assert.sh

. bowling.sh

assert "echo test" "test"

# TODO: renew to full game test code
add_score 1 2
assert total_socre "3" 

assert_end
