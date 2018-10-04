import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Bowling180928Test {

    private Bowling180928 game;

    @Before
    public void setup() throws Exception {
        this.game = new Bowling180928();
    }

    @After
    public void tearDown() throws Exception {
        this.game = null;
    }

    @Test
    public void allStrikes() {
        for (int frame = 0; frame < Bowling180928.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(Bowling180928.SCORE_MAX_IN_FRAME);
        }
        this.game.roll(Bowling180928.SCORE_MAX_IN_FRAME);
        this.game.roll(Bowling180928.SCORE_MAX_IN_FRAME);
        assertEquals(300, this.game.score());
    }

    @Test
    public void allSparesWith9And1() {
        for (int frame = 0; frame < Bowling180928.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(9);
            this.game.roll(1);
        }
        this.game.roll(9);
        assertEquals(190, this.game.score());
    }

    @Test
    public void allFramesWith8And1() {
        for (int frame = 0; frame < Bowling180928.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(8);
            this.game.roll(1);
        }
        assertEquals(90, this.game.score());
    }

    @Test
    public void allFramesWith9And0() {
        for (int frame = 0; frame < Bowling180928.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(9);
            this.game.roll(0);
        }
        assertEquals(90, this.game.score());
    }

    @Test
    public void allFramesWith0And9() {
        for (int frame = 0; frame < Bowling180928.NORMAL_FRAME_MAX; frame++) {
            this.game.roll(0);
            this.game.roll(9);
        }
        assertEquals(90, this.game.score());
    }

}