class BowlingGame:

    NORMAL_FRAME_MAX = 10
    SCORE_MAX_IN_FRAME = 10

    def __init__(self):
        self.rolls = []

    def roll(self, pins):
        self.rolls.append(pins)

    def score(self):
        score = 0
        rollIndex = 0
        for frame in range(self.NORMAL_FRAME_MAX):
            if self.isStrike(rollIndex):
                score += self.scoreStrike(rollIndex)
                rollIndex += 1
            elif self.isSpare(rollIndex):
                score += self.scoreSpare(rollIndex)
                rollIndex += 2
            else:
                score += self.scoreNormal(rollIndex)
                rollIndex += 2
        return score

    def isStrike(self, rollIndex):
        return self.SCORE_MAX_IN_FRAME == self.rolls[rollIndex]

    def isSpare(self, rollIndex):
        return self.SCORE_MAX_IN_FRAME == self.rolls[rollIndex] + self.rolls[rollIndex + 1]
    
    def scoreStrike(self, rollIndex):
        return self.SCORE_MAX_IN_FRAME + self.rolls[rollIndex + 1] + self.rolls[rollIndex + 2]

    def scoreSpare(self, rollIndex):
        return self.SCORE_MAX_IN_FRAME + self.rolls[rollIndex + 2]

    def scoreNormal(self, rollIndex):
        return self.rolls[rollIndex] + self.rolls[rollIndex + 1]