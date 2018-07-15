import { describe, it } from "mocha";
import { assert } from "chai"
import { Bowling } from "./bowling_180715";

describe('180715 bowling test', () => {
  
  it ('all strikes', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_GAME_FRAME_COUNT; i++) {
      b.roll(Bowling.SCORE_MAX_IN_FRAME);
    }
    b.roll(Bowling.SCORE_MAX_IN_FRAME);
    b.roll(Bowling.SCORE_MAX_IN_FRAME);
    assert.equal(b.score(), 300);
  });

  it ('all spares', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_GAME_FRAME_COUNT; i++) {
      b.roll(5);
      b.roll(5);
    }
    b.roll(5);
    assert.equal(b.score(), 150);
  });

  it ('all nines', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_GAME_FRAME_COUNT; i++) {
      b.roll(9);
      b.roll(0);
    }
    assert.equal(b.score(), 90);
  });

  it ('all spares with nines 1st', () => {
    let b = new Bowling();
    for (let i = 0; i < 10; i++) {
      b.roll(9)
      b.roll(1)
    }
    b.roll(9)
    assert.equal(b.score(), 190);
  });

});