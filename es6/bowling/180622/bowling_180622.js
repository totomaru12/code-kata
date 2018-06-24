export default class bowling {

    constructor () {
        this.rolls = []
    }

    roll(pins) {
        this.rolls.push(pins);
    }

    SCORE_MAX_PER_FRAME() {
        return 10;
    }

    FRAME_COUNT_MAX() {
        return 10;
    }

    isStrike(rollIndex) {
        return (this.SCORE_MAX_PER_FRAME() === this.rolls[rollIndex]);
    }

    isSpare(rollIndex) {
        return (this.SCORE_MAX_PER_FRAME() === (this.rolls[rollIndex] + this.rolls[rollIndex + 1]));
    }

    strikeBonus(rollIndex) {
        return this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
    }

    spareBonus(rollIndex) {
        return this.rolls[rollIndex + 1];
    }

    score() {
        let score = 0;
        let rollIndex = 0;
        for (let frame = 0; frame < this.FRAME_COUNT_MAX(); frame ++) {
            if (this.isStrike(rollIndex)) {
                score += (10 + this.strikeBonus(rollIndex));
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                score += (10 + this.spareBonus(rollIndex));
                rollIndex += 2;
            } else {
                score += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
                rollIndex += 2;
            }
        }
        return score;
    }
}