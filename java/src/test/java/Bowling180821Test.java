import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180821Test {
    
    private Bowling180821 game;

    @Before
    public void setup() throws Exception {
        this.game = new Bowling180821();
    }

    @After
    public void tearDown() throws Exception {
        this.game = null;
    }

    @Test
    public void allStrikes() {
        for (int frame = 0; frame < Bowling180821.NORMAL_FRAME_MAX; frame ++) {
            this.game.roll(Bowling180821.SCORE_MAX_IN_FRAME);
        }
        this.game.roll(Bowling180821.SCORE_MAX_IN_FRAME);
        this.game.roll(Bowling180821.SCORE_MAX_IN_FRAME);
        assertEquals(300, this.game.score());
    }

    @Test
    public void allSparesWith5And5() {
        for (int frame = 0; frame < Bowling180821.NORMAL_FRAME_MAX; frame ++) {
            this.game.roll(5);
            this.game.roll(5);
        }
        this.game.roll(5);
        assertEquals(150, this.game.score());
    }

    @Test
    public void allSpareWith9And1() {
        for (int frame = 0; frame < Bowling180821.NORMAL_FRAME_MAX; frame ++) {
            this.game.roll(9);
            this.game.roll(1);
        }
        this.game.roll(9);
        assertEquals(190, this.game.score());
    }

    @Test
    public void allNineWith8And1() {
        for (int frame = 0; frame < Bowling180821.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(8);
            this.game.roll(1);
        }
        assertEquals(90, this.game.score());
    }

}
