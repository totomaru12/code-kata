using System;
using System.Collections.Generic;

namespace cs_kata
{
    public class Bowling180630
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
            for (int frame = 0; frame < 10; frame ++) {
                if (this.IsStrike(rollIndex)) {
                    score += this.StrikeScore(rollIndex);
                    rollIndex += 1;
                } else if (this.IsSpare(rollIndex)) {
                    score += this.SpareScore(rollIndex);
                    rollIndex += 2;
                } else {
                    score += this.NormalFrameScore(rollIndex);
                    rollIndex += 2;
                }
            }
            return score;
        }

        private bool IsStrike(int rollIndex)
        {
            return 10 == this.rolls[rollIndex];
        }

        private bool IsSpare(int rollIndex)
        {
            return 10 == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
        }

        private int StrikeScore(int rollIndex)
        {
            return 10 + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
        }

        private int SpareScore(int rollIndex)
        {
            return 10 + this.rolls[rollIndex + 2];
        }

        private int NormalFrameScore(int rollIndex)
        {
            return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
        }
    }
}
