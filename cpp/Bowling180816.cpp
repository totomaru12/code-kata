#include "Bowling180816.h"

void Bowling180816::roll(int pins)
{
    this->rolls.push_back(pins);
}

int Bowling180816::score()
{
    int score = 0;
    int rollIndex = 0;
    for (int frame = 0; frame < Bowling180816::NORMAL_FRAME_MAX; frame++) {
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

bool Bowling180816::isStrike(int rollIndex)
{
    return Bowling180816::SCORE_MAX_IN_FRAME == this->rolls[rollIndex];
}

bool Bowling180816::isSpare(int rollIndex)
{
    return Bowling180816::SCORE_MAX_IN_FRAME == this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}

int Bowling180816::scoreStrike(int rollIndex)
{
    return Bowling180816::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 1] + this->rolls[rollIndex + 2];
}

int Bowling180816::scoreSpare(int rollIndex)
{
    return Bowling180816::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 2];
}

int Bowling180816::scoreNormal(int rollIndex)
{
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}
