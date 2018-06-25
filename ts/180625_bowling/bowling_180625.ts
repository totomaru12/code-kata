export class Bowling {
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
    for (let frame = 0; frame < 10; frame ++) {
      if (this.isStrike(rollIndex)) {
        score += (10 + this.strikeBonus(rollIndex));
        rollIndex += 1;
      } else if (this.isSpare(rollIndex)) {
        score += (10 + this.spareBonus(rollIndex));
        rollIndex += 2;
      } else {
        score += (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
        rollIndex += 2;
      }
    }
    return score;
  }

  private isStrike(rollIndex: number): boolean {
    return 10 == this.rolls[rollIndex];
  }

  private isSpare(rollIndex: number): boolean {
     return 10 == (this.rolls[rollIndex] + this.rolls[rollIndex + 1]);
  }

  private strikeBonus(rollIndex: number): number {
    return this.rolls[rollIndex + 1] + this.rolls[rollIndex + 2];
  }

  private spareBonus(rollIndex: number): number {
    return this.rolls[rollIndex + 2];
  }
}