// "use strict";

function bowling() {
    this.rolls = [];
}

bowling.prototype.roll = function(pins) {
    this.rolls.push(pins);
};

bowling.prototype.score = function(pins) {
    var score = 0;
    var rollIndex = 0;

    for (var frame = 0; frame < 10; frame ++) {
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
};

bowling.prototype.isStrike = function(rollIndex) {
    return (10 === this.rolls[rollIndex]);
};

bowling.prototype.isSpare = function(rollIndex) {
    return (10 === this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
};

bowling.prototype.strikeBonus = function(rollIndex) {
    return this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
};

bowling.prototype.spareBonus = function(rollIndex) {
    return this.rolls[rollIndex + 2];
};

module.exports = bowling;
