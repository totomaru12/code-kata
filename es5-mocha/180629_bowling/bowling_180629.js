"use strict";

function bowling() {
    this.rolls = [];
}

bowling.prototype.MAX_SCORE_IN_FRAME = function() {
    return 10;
}

bowling.prototype.NORMAL_MAX_FRAME = function() {
    return 10;
}

bowling.prototype.roll = function(pins) {
    this.rolls.push(pins);
}

bowling.prototype.score = function() {
    var score = 0;
    var rollIndex = 0;
    for (var frame = 0; frame < this.NORMAL_MAX_FRAME(); frame ++) {
        if (this.isStrike(rollIndex)) {
            score += this.strikeScore(rollIndex);
            rollIndex += 1;
        } else if (this.isSpare(rollIndex)) {
            score += this.spareScore(rollIndex);
            rollIndex += 2;
        } else {
            score += this.normalFrameScore(rollIndex);
            rollIndex += 2;
        }
    }
    return score;
}

bowling.prototype.isStrike = function(rollIndex) {
    return this.MAX_SCORE_IN_FRAME() == this.rolls[rollIndex];
}

bowling.prototype.isSpare = function(rollIndex) {
    return this.MAX_SCORE_IN_FRAME() == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
}

bowling.prototype.strikeScore = function(rollIndex) {
    return this.MAX_SCORE_IN_FRAME() + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
}

bowling.prototype.spareScore = function(rollIndex) {
    return this.MAX_SCORE_IN_FRAME() + this.rolls[rollIndex + 1];
}

bowling.prototype.normalFrameScore = function(rollIndex) {
    return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
}

module.exports = bowling;
