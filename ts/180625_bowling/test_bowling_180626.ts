import { describe, it } from "mocha";
import { assert } from "chai"
import { Bowling } from './bowling_180625';

describe('180625 bowling test', () => {

  function rollMany(bowling: Bowling, times: number, pins: number): void {
    for (let i = 0; i < times; i++) {
      bowling.roll(pins);
    }
  }

  let bowling = null;
  beforeEach(() => {
    bowling = new Bowling();
  })

  it('all strike', () => {
    rollMany(bowling, 12, 10);
    assert.equal(300, bowling.score());
  });

  it('all spare', () => {
    rollMany(bowling, 21, 5);
    assert.equal(150, bowling.score());
  });

  it('all nine', () => {
    let bowling = new Bowling();
    for (let i = 0; i < 10; i++) {
      bowling.roll(9);
      bowling.roll(0);
    }
    assert.equal(90, bowling.score());
  });

})