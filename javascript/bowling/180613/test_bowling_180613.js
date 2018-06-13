import Bowling from './bowling_180613';

const assert = require('assert');

let bowling = null;

beforeEach(function() {
    Bowling.prototype.rollMany = function (times, pins) {
        while (times --) this.roll(pins);
    }
    bowling = new Bowling();
})

describe('test bowling game 180613', function () {

    it('all strike', function() {
        bowling.rollMany(12, 10);
        assert.equal(300, bowling.score());
    })

    it('all spare', function() {
        bowling.rollMany(21, 5);
        assert.equal(150, bowling.score());
    })

    it('all nines', function() {
        for (let i = 0; i < 10; i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        assert.equal(90, bowling.score());
    })
});