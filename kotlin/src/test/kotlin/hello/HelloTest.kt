package hello

import org.junit.Test
import kotlin.test.assertEquals

class HelloTest {
    @Test fun testHelloHasMessage() {
        assertEquals(expected = "Hello, Kotlin!!", actual = hello("kotlin"))
    }
}