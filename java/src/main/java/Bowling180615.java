import java.util.ArrayList;

public class Bowling180615 {

    private ArrayList<Integer> rolls = new ArrayList<Integer>();

    public void roll(int pins) {
        this.rolls.add(pins);
    }

    private boolean isStrike(int frameIndex) {
        return (10 == this.rolls.get(frameIndex));
    }

    private int strikeBonus(int frameIndex) {
        return this.rolls.get(frameIndex + 1) + this.rolls.get(frameIndex + 2);
    }

    private boolean isSpare(int frameIndex) {
        return 10 == (this.rolls.get(frameIndex + 1) + this.rolls.get(frameIndex + 2));
    }

    private int spareBonus(int frameIndex) {
        return this.rolls.get(frameIndex + 2);
    }

    public int score() {
        int totalScore = 0;
        int frameIndex = 0;
        for (int i = 0; i < 10; i++) {
            if (this.isStrike(frameIndex)) {
                totalScore += (10 + this.strikeBonus(frameIndex));
                frameIndex += 1;
            } else if (this.isSpare(frameIndex)) {
                totalScore += (10 + this.spareBonus(frameIndex));
                frameIndex += 2;
            } else {
                totalScore += (this.rolls.get(frameIndex) + this.rolls.get(frameIndex + 1));
                frameIndex += 2;
            }
        }
        return totalScore;
    }
}