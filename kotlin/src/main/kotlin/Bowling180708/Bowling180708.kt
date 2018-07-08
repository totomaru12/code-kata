package Bowling180708

class Bowling180708 {

    val rolls: MutableList<Int> = mutableListOf()

    fun roll(pins: Int) {
        rolls.add(pins)
    }

    val score : Int
        get() {
            var score = 0
            var rollIndex = 0
            (1..10).forEach {
                when {
                    isStrike(rollIndex) -> {
                        score += scoreStrike(rollIndex)
                        rollIndex += 1
                    }
                    isSpare(rollIndex) -> {
                        score += scoreSpare(rollIndex)
                        rollIndex += 2
                    }
                    else -> {
                        score += scoreNormal(rollIndex)
                        rollIndex += 2
                    }
                }
            }
            return score
        }

    private fun isStrike(rollIndex: Int)
        = (10 == rolls[rollIndex])

    private fun isSpare(rollIndex: Int)
        = (10 == (rolls[rollIndex] + rolls[rollIndex + 1]))

    private fun scoreStrike(rollIndex: Int)
        = 10 + rolls[rollIndex + 1] + rolls[rollIndex + 2]

    private fun scoreSpare(rollIndex: Int)
        = 10 + rolls[rollIndex + 2]

    private fun scoreNormal(rollIndex: Int)
        = rolls[rollIndex] + rolls[rollIndex + 1]
}