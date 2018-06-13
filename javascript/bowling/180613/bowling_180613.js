export default class Bowling {

    constructor() {
        this.rolls = []
    }

    roll(pins) {
        this.rolls.push(pins);
    }

    isStrike(index) {
        return (this.rolls[index] == 10);
    }

    isSpare(index) {
        return (this.rolls[index] + this.rolls[index + 1] == 10);
    }

    strikeBonus(index) {
        return 10 + this.rolls[index + 1] + this.rolls[index + 2];
    }

    spareBonus(index) {
        return 10 + this.rolls[index + 2];
    }

    score() {
        let totalScore = 0;
        let rollIndex = 0;
        for (let i = 0; i < 10; i++) {
            if (this.isStrike(rollIndex)) {
                totalScore += this.strikeBonus(rollIndex);
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                totalScore += this.spareBonus(rollIndex);
                rollIndex += 2;
            } else {
                totalScore += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
                rollIndex += 2;
            }
        }
        return totalScore;
    }
}