package Bowling180723

import org.junit.Test
import kotlin.test.assertEquals

class Bowling180723Test{

    @Test
    fun testAllStrikes() {
        val b = Bowling180723()
        (1..b.NORMAL_FRAME_MAX).forEach { b.roll(10) }
        b.roll(b.SCORE_MAX_IN_FRAME)
        b.roll(b.SCORE_MAX_IN_FRAME)
        assertEquals(300, b.score);
    }

    @Test
    fun testAllSparesWithAllFivePins() {
        val b = Bowling180723()
        (1..b.NORMAL_FRAME_MAX).forEach { 
            b.roll(5) 
            b.roll(5) 
        }
        b.roll(5)
        assertEquals(150, b.score)
    }

    @Test
    fun testAllNines() {
        val b = Bowling180723()
        (1..b.NORMAL_FRAME_MAX).forEach { 
            b.roll(9)
            b.roll(0)
        }
        assertEquals(90, b.score)
    }

    @Test
    fun testAllSpareWith1stNines() {
        val b = Bowling180723()
        (1..b.NORMAL_FRAME_MAX).forEach {
            b.roll(9)
            b.roll(1)
        }
        b.roll(9)
        assertEquals(190, b.score)
    }
    
}