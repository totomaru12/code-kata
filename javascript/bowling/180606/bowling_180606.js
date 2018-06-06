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
        return (this.rolls[index] + this.rolls[index + 2]) == 10;
    }

    strikeBonus(index) {
        return 10 + this.rolls[index + 1] + this.rolls[index + 2];
    }

    spareBonus(index) {
        return 10 + this.rolls[index + 1];
    }

    score() {
        let totalScore = 0;
        let index = 0;
        for (let frame = 0; frame < 10; frame ++) {
            if (this.isStrike(index)) {
                totalScore += this.strikeBonus(index);
                index ++;
            } else if (this.isSpare(index)) {
                totalScore += this.spareBonus(index);
                index += 2;
            } else {
                totalScore += this.rolls[index] + this.rolls[index + 1];
                index += 2;
            }
        }
        return totalScore;
    }

}