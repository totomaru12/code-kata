#include "Bowling180717.h"

void Bowling180717::roll(int pins)
{
    this->rolls.push_back(pins);
}

int Bowling180717::score()
{
    int score = 0;
    int rollIndex = 0;
    for (int frame = 0; frame < Bowling180717::NORMAL_MAX_FRAME; frame ++) {
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

bool Bowling180717::isStrike(int rollIndex)
{
    return Bowling180717::SCORE_MAX_IN_FRAME == this->rolls[rollIndex];
}

bool Bowling180717::isSpare(int rollIndex)
{
    return Bowling180717::SCORE_MAX_IN_FRAME == (this->rolls[rollIndex] + this->rolls[rollIndex + 1]);
}

int Bowling180717::scoreStrike(int rollIndex)
{
    return Bowling180717::SCORE_MAX_IN_FRAME + this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}

int Bowling180717::scoreSpare(int rollIndex)
{
    return Bowling180717::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 2];
}

int Bowling180717::scoreNormal(int rollIndex)
{
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}