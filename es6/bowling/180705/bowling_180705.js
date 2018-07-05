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

    isStrike(rollIndex) {
        return 10 == this.rolls[rollIndex];
    }

    isSpare(rollIndex) {
        return 10 == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
    }

    scoreStrike(rollIndex) {
        return 10 + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
    }

    scoreSpare(rollIndex) {
        return 10 + this.rolls[rollIndex + 2];
    }

    scoreNormal(rollIndex) {
        return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
    }
}