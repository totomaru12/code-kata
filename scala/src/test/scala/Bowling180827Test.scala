import org.scalatest._

class Bowling180827Test extends FlatSpec {

  it should "return 300 score in all strikes" in {
    val b = Bowling180827()
    for (frame <- 1 to b.NORMAL_FRAME_MAX) {
      b.roll(b.SCORE_MAX_IN_FRAME)
    }
    b.roll(b.SCORE_MAX_IN_FRAME)
    b.roll(b.SCORE_MAX_IN_FRAME)
    assert(300 == b.score())
  }

  it should "return 190 score in all spares with 9 and 1" in {
    val b = Bowling180827()
    for (frame <- 1 to b.NORMAL_FRAME_MAX) {
      b.roll(9)
      b.roll(1)
    }
    b.roll(9)
    assert(190 == b.score())
  }

  it should "return 90 score in all 8 and 1 frames" in {
    val b = Bowling180827()
    for (frame <- 1 to b.NORMAL_FRAME_MAX) {
      b.roll(8)
      b.roll(1)
    }
    assert(90 == b.score())
  }

  it should "return 90 score in all 9 and 0 frames" in {
    val b = Bowling180827()
    for (frame <- 1 to b.NORMAL_FRAME_MAX) {
      b.roll(9)
      b.roll(0)
    }
    assert(90 == b.score())
  }

  it should "return 90 score in all 0 and 9 frames" in {
    val b = Bowling180827()
    for (frame <- 1 to b.NORMAL_FRAME_MAX) {
      b.roll(0)
      b.roll(9)
    }
    assert(90 == b.score())
  }
  
}
