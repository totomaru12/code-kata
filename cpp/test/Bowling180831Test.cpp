#include "../Bowling180831.h"
#include "gtest/gtest.h"

TEST(Bowling180831, allStrikes) 
{
    Bowling180831 *b = new Bowling180831();
    for (int i = 0; i < Bowling180831::NORMAL_FRAME_MAX; i++) {
        b->roll(Bowling180831::SCORE_MAX_IN_FRAME);
    }
    b->roll(Bowling180831::SCORE_MAX_IN_FRAME);
    b->roll(Bowling180831::SCORE_MAX_IN_FRAME);
    EXPECT_EQ(300, b->score());
}

TEST(Bowling180831, allSpareWith9And1)
{
    Bowling180831 *b = new Bowling180831();
    for (int i = 0; i < Bowling180831::NORMAL_FRAME_MAX; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);
    EXPECT_EQ(190, b->score());
}

TEST(Bowling180831, allFramesWith8And1)
{
    Bowling180831 *b = new Bowling180831();
    for (int i = 0; i < Bowling180831::NORMAL_FRAME_MAX; i++) {
        b->roll(8);
        b->roll(1);
    }
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180831, allFramesWith9And0)
{
    Bowling180831 *b = new Bowling180831();
    for (int i = 0; i < Bowling180831::NORMAL_FRAME_MAX; i++) {
        b->roll(9);
        b->roll(0);
    }
    EXPECT_EQ(90, b->score());
}

TEST(Bowling180831, allFramesWith0And9)
{
    Bowling180831 *b = new Bowling180831();
    for (int i = 0; i < Bowling180831::NORMAL_FRAME_MAX; i++) {
        b->roll(0);
        b->roll(9);
    }
    EXPECT_EQ(90, b->score());
}
