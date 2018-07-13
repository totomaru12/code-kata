// reference: https://docs.scala-lang.org/tour/tour-of-scala.html

object ScalaGrammar {
  def main(args: Array[String]): Unit = {

    // hello world
    println("Hello world.")

    // Expressions
    println(1)  // 1
    println(1 + 1) // 2
    println("Hello " + "world.")  // Hello world

    // Values
    val x = 1 + 1
    println(x)  // 2

    // x = 3 // This does not compile.
    val y: Int = 1 + 1
    println(x)  // 2

  }
}
