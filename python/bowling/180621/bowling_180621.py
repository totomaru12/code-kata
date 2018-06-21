class BowlingGame:

    def __init__(self):
        self.rolls = []

    def addScore(self, pins):
        self.rolls.append(pins)

    def isStrike(self, rollIndex):
        return 10 == self.rolls[rollIndex]

    def isSpare(self, rollIndex):
        return 10 == (self.rolls[rollIndex] + self.rolls[rollIndex + 1])

    def strikeBonus(self, rollIndex):
        return self.rolls[rollIndex + 1] + self.rolls[rollIndex + 2]

    def spareBonus(self, rollIndex):
        return self.rolls[rollIndex + 2]

    def totalScore(self):
        totalScore = 0
        rollIndex = 0
        for frame in range(10):
            if self.isStrike(rollIndex):
                totalScore += (10 + self.strikeBonus(rollIndex))
                rollIndex += 1
            elif self.isSpare(rollIndex):
                totalScore += (10 + self.spareBonus(rollIndex))
                rollIndex += 2
            else:
                totalScore += (self.rolls[rollIndex] + self.rolls[rollIndex + 1])
                rollIndex += 2
        return totalScore