import Bowling from './bowling_180925';
import { expect } from 'chai';

describe('test bowling 18/09/25', () => {

    it('all strikes', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(b.SCORE_MAX_IN_FRAME());
        }
        b.roll(b.SCORE_MAX_IN_FRAME());
        b.roll(b.SCORE_MAX_IN_FRAME());
        expect(b.score()).to.equal(300);
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

    it('all frames with 8 and 1', () => {
        let b = new Bowling();
        for (let i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(8);
            b.roll(1);
        }
        expect(b.score()).to.equal(90);
    })

})