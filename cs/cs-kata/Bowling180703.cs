using System;
using System.Collections.Generic;

namespace cs_kata
{
    public class Bowling180703
    {
        private List<int> rolls = new List<int>();

        public void Roll(int pins)
        {
            this.rolls.Add(pins);
        }

        public int Score()
        {
            int score = 0;
            int rollIndex = 0;
            for (int frame = 0; frame < 10; frame++) {
                if (this.isStrike(rollIndex)) {
                    score += this.scoreStrike(rollIndex);
                    rollIndex += 1;
                } else if (this.isSpare(rollIndex)) {
                    score += this.scoreSpare(rollIndex);
                    rollIndex += 2;
                } else {
                    score += this.scoreNormalFrame(rollIndex);
                    rollIndex += 2;
                }
            }
            return score;
        }

        private bool isStrike(int rollIndex)
        {
            return 10 == this.rolls[rollIndex];
        }

        private bool isSpare(int rollIndex)
        {
            return 10 == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
        }

        private int scoreStrike(int rollIndex)
        {
            return 10 + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
        }

        private int scoreSpare(int rollIndex)
        {
            return 10 + this.rolls[rollIndex + 2];
        }

        private int scoreNormalFrame(int rollIndex) 
        {
            return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
        }
    }
}