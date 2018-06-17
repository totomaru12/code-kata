import Bowling from './bowling_180617';

const assert = require('assert');

let bowling = null;

beforeEach(function() {

    Bowling.prototype.rollMany = function (times, pins) {
        for (let i = 0; i < times; i++) {
            this.roll(pins);
        }
    }
    
    bowling = new Bowling();
})

describe('test bowling game 180617', function() {

    it('all strike', function() {
        bowling.rollMany(12, bowling.SCORE_MAX_PER_FRAME());
        assert.equal(300, bowling.score());
    })

    it('all spare', function() {
        bowling.rollMany(21, 5);
        assert.equal(150, bowling.score());
    })

    it('all nines', function() {
        for (let frame = 0; frame < bowling.FRAME_COUNT_MAX(); frame++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        assert.equal(90, bowling.score());
    })
});