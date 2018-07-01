cmake_minimum_required(VERSION 2.6)

project(cpp-code-practice-test)

add_subdirectory(lib/googletest/googletest)

add_library(cpp-code-practice 
    ../Bowling180701.cpp 
    ../FizzBuzz180701.cpp
# add new source file the above line
)

add_executable(cpp-code-practice-test 
    Bowling180701Test.cpp 
    FizzBuzz180701Test.cpp
# add new test source file the above line
)

target_link_libraries(cpp-code-practice-test cpp-code-practice gtest_main)
