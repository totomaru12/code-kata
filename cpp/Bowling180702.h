#ifndef _BOWLING180702_H_
#define _BOWLING180702_H_

#include <vector>

class Bowling180702 {
    public:
        Bowling180702() {};
        ~Bowling180702() {};

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

#endif // _BOWLING180702_H_