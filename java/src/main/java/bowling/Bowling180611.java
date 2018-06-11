import java.util.ArrayList;

public class Bowling180611 {

    private ArrayList<Integer> rolls = new ArrayList<Integer>();

    public void roll(int pins) {
        this.rolls.add(pins);
    }

    public int score() {
        int currentScore = 0;
        int frameIndex = 0;
        for (int frame = 0; frame < 10; frame++) {
            if (this.isStrike(frameIndex)) {
                currentScore += this.strikeBonus(frameIndex);
                frameIndex += 1;
            } else if (this.isSpare(frameIndex)) {
                currentScore += this.spareBonus(frameIndex);
                frameIndex += 2;
            } else {
                currentScore += (this.rolls.get(frameIndex) + this.rolls.get(frameIndex + 1));
                frameIndex += 2;
            }
        }
        return currentScore;
    }

    private boolean isStrike(int frameIndex) {
        return (10 == this.rolls.get(frameIndex));
    }

    private boolean isSpare(int frameIndex) {
        return (10 == (this.rolls.get(frameIndex) + this.rolls.get(frameIndex + 1)));
    }

    private Integer strikeBonus(int frameIndex) {
        return 10 + this.rolls.get(frameIndex + 1) + this.rolls.get(frameIndex + 2);
    }

    private Integer spareBonus(int frameIndex) {
        return 10 + this.rolls.get(frameIndex + 2);
    }
}