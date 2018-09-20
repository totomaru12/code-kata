#include "Bowling180920.h"

void Bowling180920::roll(int pins)
{
    this->rolls.push_back(pins);
}

int Bowling180920::score()
{
    int score = 0;
    int rollIndex = 0;
    for (int frame = 0; frame < Bowling180920::NORMAL_FRAME_MAX; frame++) {
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

bool Bowling180920::isStrike(int rollIndex)
{
    return Bowling180920::SCORE_MAX_IN_FRAME == this->rolls[rollIndex];
}

bool Bowling180920::isSpare(int rollIndex)
{
    return Bowling180920::SCORE_MAX_IN_FRAME == this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}

int Bowling180920::scoreStrike(int rollIndex)
{
    return Bowling180920::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 1] + this->rolls[rollIndex + 2];
}

int Bowling180920::scoreSpare(int rollIndex)
{
    return Bowling180920::SCORE_MAX_IN_FRAME + this->rolls[rollIndex + 2];
}

int Bowling180920::scoreNormal(int rollIndex)
{
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}
