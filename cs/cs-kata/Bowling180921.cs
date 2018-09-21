using System.Collections.Generic;

public class Bowling180921
{
    public static readonly int NORMAL_FRAME_MAX = 10;
    public static readonly int SCORE_MAX_IN_FRAME = 10;

    private List<int> rolls = new List<int>();

    public void Roll(int pins)
    {
        this.rolls.Add(pins);
    }

    public int Score()
    {
        int score = 0;
        int rollIndex = 0;
        for (int frame = 0; frame < NORMAL_FRAME_MAX; frame ++)
        {
            if (this.isStrike(rollIndex)) {
                score += this.scoreStrike(rollIndex);
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                score += this.scoreSpare(rollIndex);
                rollIndex += 2;
            } else {
                score += this.scoreNormal(rollIndex);
                rollIndex += 2;
            }
        }
        return score;
    }

    public bool isStrike(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME == this.rolls[rollIndex];
    }

    public bool isSpare(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME == this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }

    public int scoreStrike(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME + this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }

    public int scoreSpare(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME + this.rolls[rollIndex + 2];
    }

    public int scoreNormal(int rollIndex)
    {
        return this.rolls[rollIndex] + this.rolls[rollIndex];
    }

}