import java.util.ArrayList;

public class Bowling180905 {

    public static final int NORMAL_FRAME_MAX = 10;
    public static final int SCORE_MAX_IN_FRAME = 10;

    private ArrayList<Integer> rolls = new ArrayList<Integer>();

    public void roll(int pins) {
        this.rolls.add(pins);
    }

    public int score() {
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

    private boolean isStrike(int rollIndex) {
        return SCORE_MAX_IN_FRAME == this.rolls.get(rollIndex);
    }

    private boolean isSpare(int rollIndex) {
        return SCORE_MAX_IN_FRAME == (this.rolls.get(rollIndex) + this.rolls.get(rollIndex + 1));
    }

    private int scoreStrike(int rollIndex) {
        return SCORE_MAX_IN_FRAME + this.rolls.get(rollIndex + 1) + this.rolls.get(rollIndex + 2);
    }

    private int scoreSpare(int rollIndex) {
        return SCORE_MAX_IN_FRAME + this.rolls.get(rollIndex + 2);
    }

    private int scoreNormal(int rollIndex) {
        return this.rolls.get(rollIndex) + this.rolls.get(rollIndex + 1);
    }
}