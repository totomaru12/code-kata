import Boling from './bowling_180607';
import Bowling from './bowling_180607';

const assert = require('assert');

let bowling = null;

beforeEach(function () {
    Bowling.prototype.rollMany = function (times, pins) {
        while (times--) this.roll(pins);
    }
    bowling = new Bowling();
})

describe('test bowling game 180607', function () {

    it('all strike', function () {
        bowling.rollMany(12, 10);
        assert.equal(300, bowling.score());
    });

    it('all nines', function () {
        for (let frame = 0; frame < 10; frame++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        assert.equal(90, bowling.score());
    })

    it('all spare', function() {
        bowling.rollMany(21, 5);
        assert.equal(150, bowling.score());
    });
});