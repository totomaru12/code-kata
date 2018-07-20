export default class Bowling {

    constructor () {
        this.rolls = [];
    }

    roll(pins) {
        this.rolls.push(pins);
    }

    score() {
        let score = 0;
        let rollIndex = 0;
        for (let frame = 0; frame < 10; frame ++) {
            if (this.isStrike(rollIndex)) {
                score += this.strikeScore(rollIndex);
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                score += this.spareScore(rollIndex);
                rollIndex += 2;
            } else {
                score += this.normalScoreInFrame(rollIndex);
                rollIndex += 2;
            }
        }
        return score;
    }

    isStrike(rollIndex) {
        return 10 == this.rolls[rollIndex];
    }
    
    isSpare(rollIndex) {
        return 10 == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
    }

    strikeScore(rollIndex) {
        return 10 + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
    }

    spareScore(rollIndex) {
        return 10 + this.rolls[rollIndex +  2];
    }

    normalScoreInFrame(rollIndex) {
        return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }
}