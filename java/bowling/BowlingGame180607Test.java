import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class BowlingGame180607Test {
    private BowlingGame180607 game;

    @Before
    public void setUp() throws Exception {
        this.game = new BowlingGame180607();
    }

    @After
    public void tearDown() throws Expection {

    }

    private void rollFrameWithNumPins(int numRolls, int numPins1st, int numPins2nd) {
        for (int i = 0; i < numRolls; i ++) {
            this.game.roll(numPins1st);
            if (numPins1st != 10) {
               this.game.roll(numPins2nd);
            }
        }
    }

    @Test
    public void allStrikes() {
        this.rollFrameWithNumPins(12, 10, 0);
        assertEquals(300, this.game.score());
    }

    @Test
    public void appSpares() {
        this.rollFrameWithNumPins(11, 5, 5);
        assertEquals(150, this.game.score());    
    }

    @Test
    public void allNines() {
        this.rollFrameWithNumPins(10, 9, 0);
        assertEquals(90, this.game.score());
    }
}