#include "../FizzBuzz180701.h"
#include "gtest/gtest.h"

TEST(FizzBuzz180701, fizzBuzzSomeCases)
{
    FizzBuzz180701 *f = new FizzBuzz180701();
    EXPECT_STREQ("1", f->getString(1));
    EXPECT_STREQ("2", f->getString(2));
    EXPECT_STREQ("Fizz", f->getString(3));
    EXPECT_STREQ("4", f->getString(4));
    EXPECT_STREQ("Buzz", f->getString(5));
    EXPECT_STREQ("Fizz", f->getString(6));
    EXPECT_STREQ("7", f->getString(7));
    EXPECT_STREQ("Buzz", f->getString(10));
    EXPECT_STREQ("FizzBuzz", f->getString(15));
    EXPECT_STREQ("FizzBuzz", f->getString(30));
}
