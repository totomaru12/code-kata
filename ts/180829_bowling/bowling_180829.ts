export class Bowling {

  static readonly NORMAL_FRAME_MAX = 10
  static readonly SCORE_MAX_IN_FRAME = 10

  private rolls: number [];

  constructor () {
    this.rolls = [];
  }

  public roll(pins: number): void {
    this.rolls.push(pins);
  }

  public score(): number {
    let score = 0;
    let rollIndex = 0;
    for (let frame = 0; frame < Bowling.NORMAL_FRAME_MAX; frame ++) {
      if (this.isStrike(rollIndex)) {
        score += this.scoreStrike(rollIndex);
        rollIndex += 1;
      } else if (this.isSpare(rollIndex)) {
        score += this.scoreSpare(rollIndex);
        rollIndex += 2;
      } else {
        score += this.scoreNormal(rollIndex);
        rollIndex += 2;
      }
    }
    return score;
  }

  private isStrike(rollIndex: number): boolean {
    return Bowling.SCORE_MAX_IN_FRAME == this.rolls[rollIndex];
  }

  private isSpare(rollIndex: number): boolean {
    return Bowling.SCORE_MAX_IN_FRAME == this.rolls[rollIndex] + this.rolls[rollIndex + 1];
  }

  private scoreStrike(rollIndex: number): number {
    return Bowling.SCORE_MAX_IN_FRAME + this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
  }

  private scoreSpare(rollIndex: number): number {
    return Bowling.SCORE_MAX_IN_FRAME + this.rolls[rollIndex + 2];
  }

  private scoreNormal(rollIndex: number): number {
    return this.rolls[rollIndex] + this.rolls[rollIndex + 1];
  }
}