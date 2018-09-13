case class Bowling180913() {

  val NORMAL_FRAME_MAX = 10
  val SCORE_MAX_IN_FRAME = 10

  var rolls:Array[Int] = Array.empty;

  def roll(pins: Int): Unit = {
    rolls :+= pins
  }

  def score(): Int = {
    var score = 0
    var rollIndex = 0
    for (frame <- 1 to NORMAL_FRAME_MAX) {
      if (isStrike(rollIndex)) {
        score += scoreStrike(rollIndex)
        rollIndex += 1
      } else if (isSpare(rollIndex)) {
        score += scoreSpare(rollIndex)
        rollIndex += 2
      } else {
        score += scoreNormal(rollIndex)
        rollIndex += 2
      }
    }
    
    score
  }

  private def isStrike(rollIndex: Int): Boolean = {
    SCORE_MAX_IN_FRAME == rolls(rollIndex)
  }

  private def isSpare(rollIndex: Int): Boolean = {
    SCORE_MAX_IN_FRAME == rolls(rollIndex) + rolls(rollIndex + 1)
  }

  private def scoreStrike(rollIndex: Int): Int = {
    SCORE_MAX_IN_FRAME + rolls(rollIndex + 1) + rolls(rollIndex + 2)
  }

  private def scoreSpare(rollIndex: Int): Int = {
    SCORE_MAX_IN_FRAME + rolls(rollIndex + 2)
  }

  private def scoreNormal(rollIndex: Int): Int = {
    rolls(rollIndex) + rolls(rollIndex + 1)
  }

}