using System.Collections.Generic;

public class Bowling180901
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
        for (int frame = 0; frame < NORMAL_FRAME_MAX; frame ++) {
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

    private bool isStrike(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME == this.rolls[rollIndex];
    }

    private bool isSpare(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME == this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }

    private int scoreStrike(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
    }

    private int scoreSpare(int rollIndex)
    {
        return SCORE_MAX_IN_FRAME + this.rolls[rollIndex + 2];
    }

    private int scoreNormal(int rollIndex)
    {
        return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }
}
