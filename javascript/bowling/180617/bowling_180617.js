export default class bowling {

    constructor () {
        this.rolls = []
    }

    roll(pins) {
        this.rolls.push(pins);
    }

    isStrike(rollIndex) {
        return (10 == this.rolls[rollIndex]);
    }

    isSpare(rollIndex) {
        return (10 == this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
    }

    strikeBonus(rollIndex) {
        return this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
    }

    spareBonus(rollIndex) {
        return this.rolls[rollIndex + 2]
    }

    score() {
        let totalScore = 0;
        let rollIndex = 0;
        for (let frame = 0; frame < 10; frame ++) {
            if (this.isStrike(rollIndex)) {
                totalScore += (10 + this.strikeBonus(rollIndex));
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                totalScore += (10 + this.spareBonus(rollIndex));
                rollIndex += 2;
            } else {
                totalScore += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
                rollIndex += 2;
            }
        }
        return totalScore;
    }
}