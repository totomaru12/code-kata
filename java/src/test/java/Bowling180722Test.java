import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180722Test {
    private Bowling180722 game;

    @Before
    public void setup() throws Exception {
        this.game = new Bowling180722();
    }

    @After
    public void tearDown() throws Exception {
        this.game = null;
    }

    @Test
    public void allStrikes() {
        for (int i = 0; i < Bowling180722.NORMAL_MAX_FRAME; i++) {
            this.game.roll(Bowling180722.MAX_SCORE_IN_FRAME);
        }
        this.game.roll(Bowling180722.MAX_SCORE_IN_FRAME);
        this.game.roll(Bowling180722.MAX_SCORE_IN_FRAME);
        assertEquals(300, this.game.score());
    }

    @Test
    public void allSpares() {
        for (int i = 0; i < Bowling180722.NORMAL_MAX_FRAME; i++) {
            this.game.roll(5);
            this.game.roll(5);
        }
        this.game.roll(5);
        assertEquals(150, this.game.score());
    }

    @Test
    public void allNines() {
        for (int i = 0; i < Bowling180722.NORMAL_MAX_FRAME; i++) {
            this.game.roll(9);
            this.game.roll(0);
        }
        assertEquals(90, this.game.score());
    }

    @Test
    public void allSparesWith1stNines() {
        for (int i = 0; i < Bowling180722.NORMAL_MAX_FRAME; i++) {
            this.game.roll(9);
            this.game.roll(1);
        }
        this.game.roll(9);
        assertEquals(190, this.game.score());
    }
}