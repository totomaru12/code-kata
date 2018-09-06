package Bowling180906

import org.junit.Test
import kotlin.test.assertEquals

class Bowling180906Test {

    @Test
    fun testAllStrikes() {
        val b = Bowling180906()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(b.SCORE_MAX_IN_FRAME)
        }
        b.roll(b.SCORE_MAX_IN_FRAME)
        b.roll(b.SCORE_MAX_IN_FRAME)
        assertEquals(300, b.score)
    }

    @Test
    fun testAllSparesWith9And1() {
        val b = Bowling180906()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(9)
            b.roll(1)
        }
        b.roll(9)
        assertEquals(190, b.score)
    }

    @Test
    fun testAllFramesWith8And1() {
        val b = Bowling180906()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(8);
            b.roll(1);
        }
        assertEquals(90, b.score)
    }

    @Test
    fun testAllFramesWith9And0() {
        val b = Bowling180906()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(9)
            b.roll(0)
        }
        assertEquals(90, b.score)
    }

    @Test
    fun testAllFramesWith0And9() {
        val b = Bowling180906()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(0)
            b.roll(9)
        }
        assertEquals(90, b.score)
    }

}