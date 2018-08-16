#include "../Bowling180816.h"
#include "gtest/gtest.h"

TEST(Bowling180816, allStrikes)
{
    Bowling180816 *b = new Bowling180816();
    for (int i = 0; i < Bowling180816::NORMAL_FRAME_MAX; i++) {
        b->roll(Bowling180816::SCORE_MAX_IN_FRAME);
    }
    b->roll(Bowling180816::SCORE_MAX_IN_FRAME);
    b->roll(Bowling180816::SCORE_MAX_IN_FRAME);
    EXPECT_EQ(300, b->score());
}

TEST(Bowling180816, allSpareWith5And5)
{
    Bowling180816 *b = new Bowling180816();
    for (int i = 0; i < Bowling180816::NORMAL_FRAME_MAX; i++) {
        b->roll(5);
        b->roll(5);
    }
    b->roll(5);
    EXPECT_EQ(150, b->score());
}

TEST(Bowling180816, allNineWith8And1)
{
    Bowling180816 *b = new Bowling180816();
    for (int i = 0; i < Bowling180816::NORMAL_FRAME_MAX; i++) {
        b->roll(8);
        b->roll(1);
    }
    b->roll(5);
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180816, allSpareWith9And1)
{
    Bowling180816 *b = new Bowling180816();
    for (int i = 0; i < Bowling180816::NORMAL_FRAME_MAX; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);
    EXPECT_EQ(190, b->score());
}
