import Bowling from './bowling_180705';

const assert = require('assert');

describe('test bowling 18/07/05', function() {
    
    it('all strikes', () => {
        let b = new Bowling();
        for (let i = 0; i < 12; i ++) {
            b.roll(10);
        }
        assert.equal(300, b.score());
    })

    it('all spares', () => {
        let b = new Bowling();
        for (let i = 0; i < 21; i++) {
            b.roll(5);
        }
        assert.equal(150, b.score())
    })

    it('all nines', () => {
        let b = new Bowling();
        for (let i = 0; i < 10; i++) {
            b.roll(9);
            b.roll(0);
        }
        assert.equal(90, b.score());
    })

    it('all spares with 1st nines', () => {
        let b = new Bowling();
        for (let i = 0; i < 10; i++) {
            b.roll(9);
            b.roll(1);
        }
        b.roll(9);
        assert.equal(190, b.score());
    });

})