#!/bin/bash

. assert.sh

. bowling.sh

assert "echo test" "test"

add_score 1 2

# total_socre

assert total_socre "3" 

assert_end
