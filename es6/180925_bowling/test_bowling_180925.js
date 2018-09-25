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

})