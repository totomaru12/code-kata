#ifndef _BOWLING180801_H_
#define _BOWLING180801_H_

#include <vector>

class Bowling180801 {
    public:
        Bowling180801() {};
        ~Bowling180801() {};

        void roll(int pins);
        int score();

        enum {
            SCORE_MAX_IN_FRAME = 10,
            NORMAL_MAX_FRAME = 10,
        };

    private:
        std::vector<int> rolls;

        bool isStrike(int rollIndex);
        bool isSpare(int rollIndex);
        int scoreStrike(int rollIndex);
        int scoreSpare(int rollIndex);
        int scoreNormal(int rollIndex);
};

#endif // _BOWLING180801_H_