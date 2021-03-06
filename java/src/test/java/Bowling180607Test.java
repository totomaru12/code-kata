import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180607Test {
    private Bowling180607 game;

    @Before
    public void setUp() throws Exception {
        this.game = new Bowling180607();
    }

    @After
    public void tearDown() throws Exception {
        
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