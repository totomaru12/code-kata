package Bowling180702

class Bowling180702 {

    val rolls = IntArray(21) { 0 }
    var currentRoll = 0

    fun roll(pins: Int) {
        rolls[currentRoll] = pins
        currentRoll ++
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
                        score += scoreNormalframe(rollIndex)
                        rollIndex += 2
                    }
                }
            }
            return score
        }
    
    private fun isStrike(rollIndex: Int)
        = (10 == rolls[rollIndex])

    private fun isSpare(rollIndex: Int)
        = (10 == (rolls[rollIndex + 1] + rolls[rollIndex + 2]))

    private fun scoreStrike(rollIndex: Int)
        = 10 + rolls[rollIndex + 1] + rolls[rollIndex + 2]

    private fun scoreSpare(rollIndex: Int)
        = 10 + rolls[rollIndex + 2]

    private fun scoreNormalframe(rollIndex: Int)
        = rolls[rollIndex] + rolls[rollIndex + 1]

}