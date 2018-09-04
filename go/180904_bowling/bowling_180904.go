package main

func main() {

}

// NormalFrameMax ...
const NormalFrameMax = 10

// MaxScoreInFrame ...
const MaxScoreInFrame = 10

// Bowling180904 ...
type Bowling180904 struct {
	rolls []int
}

func (b *Bowling180904) roll(pins int) {
	b.rolls = append(b.rolls, pins)
}

func (b Bowling180904) score() int {
	var score = 0
	var rollIndex = 0
	for frame := 0; frame < NormalFrameMax; frame++ {
		if b.isStrike(rollIndex) {
			score += b.scoreStrike(rollIndex)
			rollIndex++
		} else if b.isSpare(rollIndex) {
			score += b.scoreSpare(rollIndex)
			rollIndex += 2
		} else {
			score += b.scoreNormal(rollIndex)
			rollIndex += 2
		}
	}
	return score
}

func (b Bowling180904) isStrike(rollIndex int) bool {
	return MaxScoreInFrame == b.rolls[rollIndex]
}

func (b Bowling180904) isSpare(rollIndex int) bool {
	return MaxScoreInFrame == (b.rolls[rollIndex] + b.rolls[rollIndex+1])
}

func (b Bowling180904) scoreStrike(rollIndex int) int {
	return MaxScoreInFrame + b.rolls[rollIndex+1] + b.rolls[rollIndex+2]
}

func (b Bowling180904) scoreSpare(rollIndex int) int {
	return MaxScoreInFrame + b.rolls[rollIndex+2]
}

func (b Bowling180904) scoreNormal(rollIndex int) int {
	return b.rolls[rollIndex] + b.rolls[rollIndex+1]
}
