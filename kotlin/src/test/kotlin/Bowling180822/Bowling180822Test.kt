package Bowling180822

import org.junit.Test
import kotlin.test.assertEquals

class Bowling180822Test {

    @Test
    fun testAllStrikes() {
        val b = Bowling180822()
        (1..b.NORMAL_FRAME_MAX).forEach { 
            b.roll(b.SCORE_MAX_IN_FRAME)
        }
        b.roll(b.SCORE_MAX_IN_FRAME)
        b.roll(b.SCORE_MAX_IN_FRAME)
        assertEquals(300, b.score)
    }

    @Test
    fun testAllSparesWith5And5() {
        val b = Bowling180822()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(5)
            b.roll(5)
        }
        b.roll(5)
        assertEquals(150, b.score)
    }

    @Test
    fun testAllSparesWith9And1() {
        val b = Bowling180822()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(9)
            b.roll(1)
        }
        b.roll(9)
        assertEquals(190, b.score)
    }

    @Test
    fun testAllNinesWith8And1() {
        val b = Bowling180822()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(8)
            b.roll(1)
        }
        assertEquals(90, b.score)
    }

}