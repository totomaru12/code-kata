export class Bowling {

  static readonly SCORE_MAX_IN_FRAME = 10;
  static readonly NORMAL_FRAME_COUNT = 10;
  
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
    for (let frame = 0; frame < Bowling.NORMAL_FRAME_COUNT; frame++) {
      if (this.isStrike(rollIndex)) {
        score += (Bowling.SCORE_MAX_IN_FRAME + this.strikeBonus(rollIndex)); 
        rollIndex += 1;
      } else if (this.isSpare(rollIndex)) {
        score += (Bowling.SCORE_MAX_IN_FRAME + this.spareBonus(rollIndex));
        rollIndex += 2;
      } else {
        score += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
        rollIndex += 2;
      }
    }
    return score;
  }

  private isStrike(rollIndex: number) {
    return Bowling.SCORE_MAX_IN_FRAME == this.rolls[rollIndex];
  }

  private isSpare(rollIndex: number) {
    return Bowling.SCORE_MAX_IN_FRAME == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
  }

  private strikeBonus(rollIndex: number) {
    return this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
  }

  private spareBonus(rollIndex: number) {
    return this.rolls[rollIndex + 2];
  }
}