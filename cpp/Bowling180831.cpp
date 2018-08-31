#include "Bowling180831.h"

void Bowling180831::roll(int pins)
{
    this->rolls.push_back(pins);
}

int Bowling180831::score()
{
    int score = 0;
    int rollIndex = 0;
    for (int frame = 0; frame < Bowling180831::NORMAL_FRAME_MAX; frame ++) {
        if (this->isStrike(rollIndex)) {
            score += this->scoreStrike(rollIndex);
            rollIndex += 1;
        } else if (this->isSpare(rollIndex)) {
            score += this->scoreSpare(rollIndex);
            rollIndex += 2;
        } else {
            score += this->scoreNormal(rollIndex);
            rollIndex += 2;
        }
    }
    return score;
}

bool Bowling180831::isStrike(int rollIndex)
{
    return Bowling180831::SCORE_MAX_IN_FRAME == this->rolls[rollIndex];
}

bool Bowling180831::isSpare(int rollIndex)
{
    return Bowling180831::SCORE_MAX_IN_FRAME == this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}

int Bowling180831::scoreStrike(int rollIndex)
{
    return Bowling180831::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 1] + this->rolls[rollIndex + 2];
}

int Bowling180831::scoreSpare(int rollIndex)
{
    return Bowling180831::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 2];
}

int Bowling180831::scoreNormal(int rollIndex)
{
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}