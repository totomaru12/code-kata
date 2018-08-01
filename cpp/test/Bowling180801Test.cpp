#include "../Bowling180801.h"
#include "gtest/gtest.h"

TEST(Bowling180801, allStrikes)
{
    Bowling180801 *b = new Bowling180801();
    for (int i = 0; i < Bowling180801::NORMAL_MAX_FRAME; i++) {
        b->roll(Bowling180801::SCORE_MAX_IN_FRAME);
    }
    b->roll(Bowling180801::SCORE_MAX_IN_FRAME);
    b->roll(Bowling180801::SCORE_MAX_IN_FRAME);

    EXPECT_EQ(300, b->score());
}

TEST(Bowling180801, allSparesWith5and5)
{
    Bowling180801 *b = new Bowling180801();
    for (int i = 0; i < Bowling180801::NORMAL_MAX_FRAME; i++) {
        b->roll(5);
        b->roll(5);
    }
    b->roll(5);

    EXPECT_EQ(150, b->score());
}

TEST(Bowling180801, allNinesWith9and0)
{
    Bowling180801 *b = new Bowling180801();
    for (int i = 0; i < Bowling180801::NORMAL_MAX_FRAME; i++) {
        b->roll(9);
        b->roll(0);
    }
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180801, allSparesWith9and1)
{
    Bowling180801 *b = new Bowling180801();
    for (int i = 0; i < Bowling180801::NORMAL_MAX_FRAME; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);
    EXPECT_EQ(190, b->score());
}