package Bowling180822

class Bowling180822 {

    val NORMAL_FRAME_MAX = 10
    val SCORE_MAX_IN_FRAME = 10

    private val rolls: MutableList<Int> = mutableListOf()

    fun roll(pins: Int) {
        rolls.add(pins)
    }

    val score : Int
        get() {
            var score = 0
            var rollIndex = 0
            (1..NORMAL_FRAME_MAX).forEach {
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
        = (SCORE_MAX_IN_FRAME == rolls[rollIndex])

    private fun isSpare(rollIndex: Int)
        = (SCORE_MAX_IN_FRAME == (rolls[rollIndex] + rolls[rollIndex + 1]))

    private fun scoreStrike(rollIndex: Int)
        = SCORE_MAX_IN_FRAME + rolls[rollIndex + 1] + rolls[rollIndex + 2]

    private fun scoreSpare(rollIndex: Int)
        = SCORE_MAX_IN_FRAME + rolls[rollIndex + 2]

    private fun scoreNormal(rollIndex: Int)
        = rolls[rollIndex] + rolls[rollIndex + 1]
}
