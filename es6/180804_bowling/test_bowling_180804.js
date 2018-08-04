import Bowling from './bowling_180804';
import { expect } from 'chai';

describe('test bowling 18/08/04', function() {

    it('all strikes', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(b.SCORE_MAX_IN_FRAME());
        }
        b.roll(b.SCORE_MAX_IN_FRAME());
        b.roll(b.SCORE_MAX_IN_FRAME());
        expect(b.score()).to.equal(300);
    })

    it('all spares with 5', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(5);
            b.roll(5);
        }
        b.roll(5);
        expect(b.score()).to.equal(150);
    })

    it('all nines', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(9);
            b.roll(0);
        }
        expect(b.score()).to.equal(90);
    })

    it('all spares with 9 and 1', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(9);
            b.roll(1);
        }
        b.roll(9);
        expect(b.score()).to.equal(190);
    })
})
