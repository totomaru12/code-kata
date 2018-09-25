import Bowling from './bowling_180925';
import { expect } from 'chai';

describe('test bowling 18/09/25', () => {

    it('all strikes', () => {
        let b = new Bowling();
        for (let i = 0; i < 10; i++) {
            b.roll(10);
        }
        b.roll(10);
        b.roll(10);
        expect(b.score()).to.equal(300);
    })

})