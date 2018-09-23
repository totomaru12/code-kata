"use strict"

function bowling() {
    this.rolls = [];
}

bowling.prototype.NORMAL_FRAME_MAX = function() {
    return 10;
}

bowling.prototype.SCORE_MAX_IN_FRAME = function() {
    return 10;
}

bowling.prototype.roll = function(pins) {
    this.rolls.push(pins);
}

bowling.prototype.score = function() {
    var score = 0;
    var rollIndex = 0;
    for (var frame = 0; frame < this.NORMAL_FRAME_MAX(); frame ++) {
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

bowling.prototype.isStrike = function(rollIndex) {
    return this.SCORE_MAX_IN_FRAME() == this.rolls[rollIndex];
}

bowling.prototype.isSpare = function(rollIndex) {
    return this.SCORE_MAX_IN_FRAME() == this.rolls[rollIndex] + this.rolls[rollIndex + 1];
}

bowling.prototype.scoreStrike = function(rollIndex) {
    return this.SCORE_MAX_IN_FRAME() + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
}

bowling.prototype.scoreSpare = function(rollIndex) {
    return this.SCORE_MAX_IN_FRAME() + this.rolls[rollIndex + 2];
}

bowling.prototype.scoreNormal = function(rollIndex) {
    return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
}

module.exports = bowling;
