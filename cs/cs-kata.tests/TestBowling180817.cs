using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180817
    {
        private readonly Bowling180817 b;

        public TestBowling180817()
        {
            b = new Bowling180817();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int i = 0; i < Bowling180817.NORMAL_FRAME_MAX; i++) {
                b.Roll(Bowling180817.SCORE_MAX_IN_FRAME);
            }
            b.Roll(Bowling180817.SCORE_MAX_IN_FRAME);
            b.Roll(Bowling180817.SCORE_MAX_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSparesWith5And5()
        {
            for (int i = 0; i < Bowling180817.NORMAL_FRAME_MAX; i++) {
                b.Roll(5);
                b.Roll(5);
            }
            b.Roll(5);
            Assert.Equal(150, b.Score());
        }

        [Fact]
        public void AllNinesWith8And1()
        {
            for (int i = 0; i < Bowling180817.NORMAL_FRAME_MAX; i++) {
                b.Roll(8);
                b.Roll(1);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllSpareWith9And1()
        {
            for (int i = 0; i < Bowling180817.NORMAL_FRAME_MAX; i++) {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }
    }
}