package hello

fun main(args: Array<String>) {
    println(hello("kotlin"))
}

val hello: (String) -> String = {
    val words = mutableListOf<String>()
    words.add("Hello")
    words.add(when (it.length) {
        0 -> ""
        1 -> it.toUpperCase()
        else -> it[0].toUpperCase() + it.substring(1)
    }).toString()
    words.joinToString(separator = ", ").plus("!!")
}
