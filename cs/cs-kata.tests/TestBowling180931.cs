using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBolwing180901
    {
        private readonly Bowling180901 b;

        public TestBolwing180901()
        {
            b = new Bowling180901();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int frame = 0; frame < Bowling180901.NORMAL_FRAME_MAX; frame ++) {
                b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            }
            b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSparesWith9And1()
        {
            for (int frame = 0; frame < Bowling180901.NORMAL_FRAME_MAX; frame++) {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }

        [Fact]
        public void AllFramesWith8And1()
        {
            for (int frame = 0; frame < Bowling180901.NORMAL_FRAME_MAX; frame++) {
                b.Roll(8);
                b.Roll(1);
            }
            Assert.Equal(90, b.Score());
        }
    }
}