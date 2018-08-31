#ifndef _BOWLING180831_H_
#define _BOWLING180831_H_

#include <vector>

class Bowling180831
{
    public:
        Bowling180831() {};
        ~Bowling180831() {};

        enum {
            NORMAL_FRAME_MAX = 10,
            SCORE_MAX_IN_FRAME = 10,
        };

        void roll(int pins);
        int score();

    private:
        std::vector<int> rolls;

        bool isStrike(int rollIndex);
        bool isSpare(int rollIndex);

        int scoreStrike(int rollIndex);
        int scoreSpare(int rollIndex);
        int scoreNormal(int rollIndex);
};

#endif // _BOWLING180831_H_
