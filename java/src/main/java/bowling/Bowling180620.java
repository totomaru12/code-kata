import java.util.ArrayList;

public class Bowling180620 {

    public static final int MAX_SCORE_IN_FRAME = 10;
    public static final int NORMAL_MAX_FRAME = 10;

    private ArrayList<Integer> rolls = new ArrayList<Integer>();

    public void roll(int pins) {
        this.rolls.add(pins);
    }

    private boolean isStrike(int rollIndex) {
        return MAX_SCORE_IN_FRAME == this.rolls.get(rollIndex);
    }

    private boolean isSpare(int rollIndex) {
        return MAX_SCORE_IN_FRAME == (this.rolls.get(rollIndex) + this.rolls.get(rollIndex));
    }

    private int strikeBonus(int rollIndex) {
        return this.rolls.get(rollIndex + 1) + this.rolls.get(rollIndex + 2);
    }

    private int spareBonus(int rollIndex) {
        return this.rolls.get(rollIndex + 2);
    }

    public int score() {
        int score = 0;
        int rollIndex = 0;
        for (int frame = 0; frame < NORMAL_MAX_FRAME; frame++) {
            if (this.isStrike(rollIndex)) {
                score += (MAX_SCORE_IN_FRAME + this.strikeBonus(rollIndex));
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                score += (MAX_SCORE_IN_FRAME + this.spareBonus(rollIndex));
                rollIndex += 2;
            } else {
                score += (this.rolls.get(rollIndex) + this.rolls.get(rollIndex + 1));
                rollIndex += 2;
            }
        }
        return score;
    }
}
