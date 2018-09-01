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
        public void AllStrike()
        {
            for (int frame = 0; frame < Bowling180901.NORMAL_FRAME_MAX; frame ++) {
                b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            }
            b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            b.Roll(Bowling180901.SCORE_MAX_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

    }
}