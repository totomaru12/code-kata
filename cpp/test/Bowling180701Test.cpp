#include "../Bowling180701.h"
#include "gtest/gtest.h"

TEST(Bowling180701, allStrike)
{
    Bowling180701 *b = new Bowling180701();
    for (int i = 0; i < 12; i++) {
        b->roll(10);
    }
    EXPECT_EQ(300, b->score());
}

TEST(Bowling180701, allSpare)
{
    Bowling180701 *b = new Bowling180701();
    for (int i = 0; i < 21; i++) {
        b->roll(5);
    }
    EXPECT_EQ(150, b->score());
}

TEST(Bowling180701, allNine)
{
    Bowling180701 *b = new Bowling180701();
    for (int i = 0; i < 10; i++) {
        b->roll(9);
        b->roll(0);
    }
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180701, allSpareWith1stNine)
{
    Bowling180701 *b = new Bowling180701();
    for (int i = 0; i < 10; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);
    EXPECT_EQ(190, b->score());
}
