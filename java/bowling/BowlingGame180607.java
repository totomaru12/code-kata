import java.util.ArrayList;

public class BowlingGame180607 {
    
    private int currentRoll = 0;
    private ArrayList<Integer> rolls = new ArrayList<Integer>();

    public void roll(int pins) {
        this.rolls.add(pins);
    }

    public int score() {
        int currentScore = 0;
        int frameIndex = 0;
        for (int frame = 0; frame < 10; frame ++) {
            if (this.isSpare(frameIndex)) {
                currentScore += (10 + this.spareBonus(frameIndex));
                frameIndex += 2;
            } else if (this.isStrike(frameIndex)) {
                currentScore += (10 + this.strikeBonus(frameIndex));
                frameIndex += 1;
            } else {
                currentScore += this.sumOfPins(frameIndex);
                frameIndex += 2;
            }
        }
        return currentScore;
    }

    private boolean isSpare(int frameIndex) {
        return (this.rolls.get(frameIndex) + this.rolls.get(frameIndex + 1)) == 10;
    }

    private boolean isStrike(int frameIndex) {
        return this.rolls.get(frameIndex) == 10;
    }

    private int spareBonus(int frameIndex) {
        return this.rolls.get(frameIndex + 2);
    }

    private int strikeBonus(int frameIndex) {
        return this.rolls.get(frameIndex + 1) + this.rolls.get(frameIndex + 2);
    }

    private int sumOfPins(int frameIndex) {
        return this.rolls.get(frameIndex) + this.rolls.get(frameIndex + 1);
    }
}