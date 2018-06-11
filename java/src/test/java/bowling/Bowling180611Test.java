import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180611Test {

    private Bowling180611 game;

    @Before
    public void setUp() throws Exception {
        this.game = new Bowling180611();
    }

    @After
    public void tearDown() throws Exception {

    }

    private void rollMany(int numRolls, int pins) {
        for (int i = 0; i < numRolls; i ++) {
            this.game.roll(pins);
        }
    }

    @Test
    public void allStrikes() {
        this.rollMany(12, 10);
        assertEquals(300, this.game.score());
    }
}