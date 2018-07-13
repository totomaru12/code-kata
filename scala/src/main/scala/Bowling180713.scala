case class Bowling180713() {
  
  var rolls:Array[Int] = Array.empty

  def roll(pins: Int): Unit = {
    rolls :+= pins
  }

  def score(): Int = {
    var score = 0
    var rollIndex = 0
    for (frame <- 1 to 10) {
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
    10 == rolls(rollIndex)
  }

  private def isSpare(rollIndex: Int): Boolean = {
    10 == rolls(rollIndex) + rolls(rollIndex + 1)
  }

  private def scoreStrike(rollIndex: Int): Int = {
    10 + rolls(rollIndex + 1) + rolls(rollIndex + 2)
  }

  private def scoreSpare(rollIndex: Int): Int = {
    10 + rolls(rollIndex + 2)
  }

  private def scoreNormal(rollIndex: Int): Int = {
    rolls(rollIndex) + rolls(rollIndex + 1)
  }

}