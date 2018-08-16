cmake_minimum_required(VERSION 2.6)

project(cpp-code-practice-test)

add_subdirectory(lib/googletest/googletest)

add_library(cpp-code-practice 
    ../Bowling180701.cpp 
    ../FizzBuzz180701.cpp
    ../Bowling180702.cpp 
    ../Bowling180717.cpp
    ../Bowling180801.cpp
    ../Bowling180816.cpp
# add new source file on the above line
)

add_executable(cpp-code-practice-test 
    Bowling180701Test.cpp 
    FizzBuzz180701Test.cpp
    Bowling180702Test.cpp 
    Bowling180717Test.cpp 
    Bowling180801Test.cpp 
    Bowling180816Test.cpp 
# add new test source file on the above line
)

target_link_libraries(cpp-code-practice-test cpp-code-practice gtest_main)
