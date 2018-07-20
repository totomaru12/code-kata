import Bowling from './bowling_180627';

const assert = require('assert');

describe('test bowling game 180627', function() {

    it ('all strike', () => {
        let bowling = new Bowling();
        for (let i = 0; i < 12; i++) {
            bowling.roll(10);
        }
        assert.equal(300, bowling.score());
    });

    it ('all spare', () => {
        let bowling = new Bowling();
        for (let i = 0; i < 21; i++) {
            bowling.roll(5);
        }
        assert.equal(150, bowling.score());
    })

    it ('all nine', () => {
        let bowling = new Bowling();
        for (let i = 0; i < 10; i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        assert.equal(90, bowling.score());
    })
});
