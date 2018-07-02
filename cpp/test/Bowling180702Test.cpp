#include "../Bowling180702.h"
#include "gtest/gtest.h"

TEST(Bowling180702, allStrike)
{
    Bowling180702 *b = new Bowling180702();
    for (int i = 0; i < 12; i++) {
        b->roll(10);
    }
    EXPECT_EQ(300, b->score());
}

TEST(Bowling180702, allSpare)
{
    Bowling180702 *b = new Bowling180702();
    for (int i = 0; i < 21; i++) {
        b->roll(5);
    }
    EXPECT_EQ(150, b->score());
}

TEST(Bowling180702, allNine)
{
    Bowling180702 *b = new Bowling180702();
    for (int i = 0; i < 10; i++) {
        b->roll(9);
        b->roll(0);
    }
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180702, allSpareWith1stNine)
{
    Bowling180702 *b = new Bowling180702();
    for (int i = 0; i < 10; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);
    EXPECT_EQ(190, b->score());
}
