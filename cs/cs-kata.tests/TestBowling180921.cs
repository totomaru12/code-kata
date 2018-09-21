using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180921
    {
        private readonly Bowling180921 b;

        public TestBowling180921()
        {
            b = new Bowling180921();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int frame = 0; frame < Bowling180921.NORMAL_FRAME_MAX; frame++) 
            {
                b.Roll(Bowling180921.SCORE_MAX_IN_FRAME);
            }
            b.Roll(Bowling180921.SCORE_MAX_IN_FRAME);
            b.Roll(Bowling180921.SCORE_MAX_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSparesWith9And1()
        {
            for (int frame = 0; frame < Bowling180921.NORMAL_FRAME_MAX; frame++)
            {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }

        [Fact]
        public void AllFramesWith8And1()
        {
            for (int frame = 0; frame < Bowling180921.NORMAL_FRAME_MAX; frame++)
            {
                b.Roll(8);
                b.Roll(1);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllFramesWith9And0()
        {
            for (int frame = 0; frame < Bowling180921.NORMAL_FRAME_MAX; frame++)
            {
                b.Roll(9);
                b.Roll(0);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllFramesWith0And9()
        {
            for (int frame = 0; frame < Bowling180921.NORMAL_FRAME_MAX; frame++)
            {
                b.Roll(0);
                b.Roll(9);
            }
            Assert.Equal(90, b.Score());
        }

    }
}