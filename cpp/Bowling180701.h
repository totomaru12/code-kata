#ifndef _BOWLING180701_H_
#define _BOWLING180701_H_

#include <vector>

class Bowling180701 {
    public:
        Bowling180701() {};
        ~Bowling180701() {};

        void roll(int pins);
        int score();

    private:
        std::vector<int> rolls;

        bool isStrike(int rollIndex);
        bool isSpare(int rollIndex);
        
        int strikeScore(int rollIndex);
        int spareScore(int rollIndex);
        int normalFrameScore(int rollIndex);
};

#endif // _BOWLING180701_H_