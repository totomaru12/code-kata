package main

func main() {

}

// Bowling180706 ...
type Bowling180706 struct {
	rolls []int
}

func (b *Bowling180706) roll(pins int) {
	b.rolls = append(b.rolls, pins)
}

func (b *Bowling180706) score() int {
	var score = 0
	var rollIndex = 0
	for frame := 0; frame < 10; frame++ {
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

func (b Bowling180706) isStrike(rollIndex int) bool {
	return 10 == b.rolls[rollIndex]
}

func (b Bowling180706) isSpare(rollIndex int) bool {
	return 10 == (b.rolls[rollIndex] + b.rolls[rollIndex+1])
}

func (b Bowling180706) scoreStrike(rollIndex int) int {
	return 10 + b.rolls[rollIndex+1] + b.rolls[rollIndex+2]
}

func (b Bowling180706) scoreSpare(rollIndex int) int {
	return 10 + b.rolls[rollIndex+2]
}

func (b Bowling180706) scoreNormal(rollIndex int) int {
	return b.rolls[rollIndex] + b.rolls[rollIndex+1]
}
