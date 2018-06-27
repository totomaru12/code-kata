import { describe, it } from "mocha";
import { assert } from "chai";
import { Bowling } from "./bowling_180627";

describe('180627 bowling test', () => {

  it ('all strike', () => {
    let bowling = new Bowling();
    for (let i = 0; i < 12; i++) {
      bowling.roll(Bowling.SCORE_MAX_IN_FRAME);
    }
    assert.equal(bowling.score(), 300);
  });

  it ('all spare', () => {
    let bowling = new Bowling();
    for (let i = 0; i < 21; i++) {
      bowling.roll(5);
    }
    assert.equal(bowling.score(), 150);
  });

  it ('all nines', () => {
    let bowling = new Bowling();
    for (let i = 0; i < 10; i++) {
      bowling.roll(9);
      bowling.roll(0);
    }
    assert.equal(bowling.score(), 90);
  });

})