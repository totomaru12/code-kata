import { describe, it } from "mocha";
import { expect } from "chai";
import { Bowling } from "./bowling_180814"

describe("180814 bowling test", () => {

  it ('all strikes', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_FRAME_MAX; i++) {
      b.roll(Bowling.SCORE_MAX_IN_FRAME);
      b.roll(Bowling.SCORE_MAX_IN_FRAME);
    }
    b.roll(Bowling.SCORE_MAX_IN_FRAME);
    expect(b.score()).equal(300);
  });

  it ('all spares with 5 and 5', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_FRAME_MAX; i++) {
      b.roll(5);
      b.roll(5);
    }
    b.roll(5);
    expect(b.score()).equal(150);
  });

  it ('all nines with 8 and 1', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_FRAME_MAX; i++) {
      b.roll(8);
      b.roll(1);
    }
    expect(b.score()).equal(90);
  });

  it ('all spares with 9 and 1', () => {
    let b = new Bowling();
    for (let i = 0; i < Bowling.NORMAL_FRAME_MAX; i++) {
      b.roll(9);
      b.roll(1);
    }
    b.roll(9);
    expect(b.score()).equal(190);
  });

});