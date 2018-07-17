#include "../Bowling180717.h"
#include "gtest/gtest.h"

TEST(Bowling180717, allStrikes)
{
    Bowling180717 *b = new Bowling180717();
    for (int i = 0; i < Bowling180717::NORMAL_MAX_FRAME; i++) {
        b->roll(Bowling180717::SCORE_MAX_IN_FRAME);
    }
    b->roll(Bowling180717::SCORE_MAX_IN_FRAME);
    b->roll(Bowling180717::SCORE_MAX_IN_FRAME);

    EXPECT_EQ(300, b->score());
}

TEST(Bowling180717, allSpares)
{
    Bowling180717 *b = new Bowling180717();
    for (int i = 0; i < Bowling180717::NORMAL_MAX_FRAME; i++) {
        b->roll(5);
        b->roll(5);
    }
    b->roll(5);

    EXPECT_EQ(150, b->score());
}

TEST(Bowling180717, allNines)
{
    Bowling180717 *b = new Bowling180717();
    for (int i = 0; i < Bowling180717::NORMAL_MAX_FRAME; i++) {
        b->roll(9);
        b->roll(0);
    }

    EXPECT_EQ(90, b->score());
}

TEST(Bowling180717, allSparesWithNines1st)
{
    Bowling180717 *b = new Bowling180717();
    for (int i = 0; i < Bowling180717::NORMAL_MAX_FRAME; i++) {
        b->roll(9);
        b->roll(1);
    }
    b->roll(9);

    EXPECT_EQ(190, b->score());
}