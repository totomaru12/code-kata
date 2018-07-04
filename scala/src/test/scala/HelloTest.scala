import org.scalatest._

class HelloTest extends FlatSpec with Matchers {
    "Hello.getMessage" should "return expected message" in {
    val message = Hello.getMessage()
    message shouldBe "Hello world!"
  }
}
