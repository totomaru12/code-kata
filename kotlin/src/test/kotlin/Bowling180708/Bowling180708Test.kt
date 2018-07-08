package Bowling180708

import org.junit.Test
import kotlin.test.assertEquals

class Bowling180708Test {
    @Test
    fun testAllStrikes() {
        var b = Bowling180708()
        (1..13).forEach { b.roll(10) }
        assertEquals(300, b.score);
    }

    @Test
    fun testAllSpares() {
        var b = Bowling180708()
        (1..21).forEach { b.roll(5) }
        assertEquals(150, b.score)
    }

    @Test
    fun testAllNines() {
        var b = Bowling180708()
        (1..10).forEach { 
            b.roll(9)
            b.roll(0)
        }
        assertEquals(90, b.score)
    }

    @Test
    fun testAllSparesWith1stNine() {
        var b = Bowling180708()
        (1..10).forEach {
            b.roll(9)
            b.roll(1)
        }
        b.roll(9)
        assertEquals(190, b.score)
    }
}