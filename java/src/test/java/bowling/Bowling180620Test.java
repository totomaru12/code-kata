import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180620Test {
    private Bowling180620 game;

    @Before
    public void setUp() throws Exception {
        this.game = new Bowling180620();
    }

    @After
    public void tearDown() throws Exception {

    }

    private void rollMany(int times, int pins) {
        for (int i = 0; i < times; i++) {
            this.game.roll(pins);
        }
    }

    @Test
    public void allStrikes() {
        this.rollMany(12, Bowling180620.MAX_SCORE_IN_FRAME);
        assertEquals(300, this.game.score());
    }

    @Test
    public void allSpare() {
        this.rollMany(21, 5);
        assertEquals(150, this.game.score());
    }

    @Test
    public void allNines() {
        for (int i = 0; i < Bowling180620.NORMAL_MAX_FRAME; i++) {
            this.game.roll(9);
            this.game.roll(0);
        }
        assertEquals(90, this.game.score());
    }
}
