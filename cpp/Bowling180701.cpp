#include "Bowling180701.h"

void Bowling180701::roll(int pins) {
    this->rolls.push_back(pins);
}

int Bowling180701::score() {
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

bool Bowling180701::isStrike(int rollIndex) {
    return 10 == this->rolls[rollIndex];
}

bool Bowling180701::isSpare(int rollIndex) {
    return 10 == this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}

int Bowling180701::strikeScore(int rollIndex) {
    return 10 + this->rolls[rollIndex + 1] + this->rolls[rollIndex + 2];
}

int Bowling180701::spareScore(int rollIndex) {
    return 10 + this->rolls[rollIndex + 2];
}

int Bowling180701::normalFrameScore(int rollIndex) {
    return this->rolls[rollIndex] + this->rolls[rollIndex + 1];
}
