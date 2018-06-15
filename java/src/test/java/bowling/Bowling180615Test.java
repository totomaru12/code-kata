import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180615Test {
    private Bowling180615 game;

    @Before
    public void setUp() throws Exception {
        this.game = new Bowling180615();
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
        this.rollMany(12, 10);
        assertEquals(300, this.game.score());
    }

    @Test
    public void allSpares() {
        this.rollMany(21, 5);
        assertEquals(150, this.game.score());
    }

    @Test
    public void allNines() {
        for (int i = 0; i < 10; i ++) {
            this.game.roll(9);
            this.game.roll(0);
        }
        this.game.roll(0);
        this.game.roll(0);
        assertEquals(90, this.game.score());
    }
}