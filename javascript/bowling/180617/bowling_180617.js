export default class bowling {

    constructor () {
        this.rolls = []
    }

    SCORE_MAX_PER_FRAME() {
        return 10;
    }

    FRAME_COUNT_MAX() {
        return 10;
    }

    roll(pins) {
        this.rolls.push(pins);
    }

    isStrike(rollIndex) {
        return (this.SCORE_MAX_PER_FRAME() == this.rolls[rollIndex]);
    }

    isSpare(rollIndex) {
        return (this.SCORE_MAX_PER_FRAME() == this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
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
        for (let frame = 0; frame < this.FRAME_COUNT_MAX(); frame ++) {
            if (this.isStrike(rollIndex)) {
                totalScore += (this.SCORE_MAX_PER_FRAME() + this.strikeBonus(rollIndex));
                rollIndex += 1;
            } else if (this.isSpare(rollIndex)) {
                totalScore += (this.SCORE_MAX_PER_FRAME() + this.spareBonus(rollIndex));
                rollIndex += 2;
            } else {
                totalScore += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
                rollIndex += 2;
            }
        }
        return totalScore;
    }
}