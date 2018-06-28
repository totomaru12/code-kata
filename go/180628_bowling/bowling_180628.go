package main

type Bowling struct {
	rolls []int
}

func main() {

}

func (b *Bowling) roll(pins int) {
	b.rolls = append(b.rolls, pins)
}

func (b Bowling) score() int {
	var score int
	var rollIndex int
	for frame := 0; frame < 10; frame++ {
		if b.isStrike(rollIndex) {
			score += b.strikeScore(rollIndex)
			rollIndex += 1
		} else if b.isSpare(rollIndex) {
			score += b.spareScore(rollIndex)
			rollIndex += 2
		} else {
			score += b.normalFrameScore(rollIndex)
			rollIndex += 2
		}
	}
	return score
}

func (b Bowling) isStrike(rollIndex int) bool {
	return 10 == b.rolls[rollIndex]
}

func (b Bowling) isSpare(rollIndex int) bool {
	return 10 == (b.rolls[rollIndex] + b.rolls[rollIndex])
}

func (b Bowling) strikeScore(rollIndex int) int {
	return 10 + b.rolls[rollIndex+1] + b.rolls[rollIndex+2]
}

func (b Bowling) spareScore(rollIndex int) int {
	return 10 + b.rolls[rollIndex+2]
}

func (b Bowling) normalFrameScore(rollIndex int) int {
	return b.rolls[rollIndex] + b.rolls[rollIndex+1]
}
