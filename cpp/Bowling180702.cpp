#include "Bowling180702.h"

void Bowling180702::roll(int pins)
{
    this->rolls.push_back(pins);
}

int Bowling180702::score()
{
    int score = 0;
    int rollIndex = 0;
    for (int frame = 0; frame < 10; frame++) {
        if (this->isStrike(rollIndex)) {
            score += this->strikeScore(rollIndex);
            rollIndex += 1;
        } else if (this->isSpare(rollIndex)) {
            score += this->spareScore(rollIndex);
            rollIndex += 2;
        } else {
            score += this->normalFrameScore(rollIndex);
            rollIndex += 2;
        }
    }
    return score;
}

bool Bowling180702::isStrike(int rollIndex)
{
    return 10 == this->rolls[rollIndex];
}

bool Bowling180702::isSpare(int rollIndex)
{
    return 10 == (this->rolls[rollIndex] + this->rolls[rollIndex + 1]);
}

int Bowling180702::strikeScore(int rollIndex)
{
    return 10 + this->rolls[rollIndex + 1] + this->rolls[rollIndex + 2];
}

int Bowling180702::spareScore(int rollIndex)
{
    return 10 + this->rolls[rollIndex + 2];
}

int Bowling180702::normalFrameScore(int rollIndex)
{
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}
