import org.scalatest._

class Bowling180713Test extends FlatSpec {

  it should "return 300 score in all strikes" in {
    val b = Bowling180713()
    for (i <- 1 to 12) {
      b.roll(10)
    }
    assert(300 == b.score())
  }

  it should "return 150 score in all spares" in {
    var b = Bowling180713()
    for (i <- 1 to 21) {
      b.roll(5)
    }
    assert(150 == b.score())
  }

  it should "return 90 score in all nines" in {
    var b = Bowling180713()
    for (i <- 1 to 10) {
      b.roll(9)
      b.roll(0)
    }
    assert(90 == b.score())
  }

  it should "return 190 socre in all spare with 1st pin nines" in {
    var b = Bowling180713()
    for (i <- 1 to 10) {
      b.roll(9)
      b.roll(1)
    }
    b.roll(9)
    assert(190 == b.score())
  }
  
}