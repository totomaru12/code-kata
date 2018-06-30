package main

func main() {

}

// Bowling180630 ...
type Bowling180630 struct {
	rolls []int
}

func (b *Bowling180630) roll(pins int) {
	b.rolls = append(b.rolls, pins)
}

func (b Bowling180630) score() int {
	var score = 0
	var rollIndex = 0
	for frame := 0; frame < 10; frame++ {
		if b.isStrike(rollIndex) {
			score += b.strikeScore(rollIndex)
			rollIndex++
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

func (b Bowling180630) isStrike(rollIndex int) bool {
	return 10 == b.rolls[rollIndex]
}

func (b Bowling180630) isSpare(rollIndex int) bool {
	return 10 == (b.rolls[rollIndex] + b.rolls[rollIndex+1])
}

func (b Bowling180630) strikeScore(rollIndex int) int {
	return 10 + b.rolls[rollIndex+1] + b.rolls[rollIndex+2]
}

func (b Bowling180630) spareScore(rollIndex int) int {
	return 10 + b.rolls[rollIndex+2]
}

func (b Bowling180630) normalFrameScore(rollIndex int) int {
	return b.rolls[rollIndex] + b.rolls[rollIndex+1]
}
