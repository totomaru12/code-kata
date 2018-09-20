#ifndef _BOWLING180920_H_
#define _BOWLING180920_H_

#include <vector>

class Bowling180920
{
    public:
        Bowling180920() {};
        ~Bowling180920() {};

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

#endif // _BOWLING180920_H_