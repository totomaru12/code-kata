using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180718
    {
        private readonly Bowling180718 b;

        public TestBowling180718()
        {
            b = new Bowling180718();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int i = 0; i < Bowling180718.NORMAL_FRAME_COUNT; i++) {
                b.Roll(Bowling180718.MAX_SCORE_IN_FRAME);
            }
            b.Roll(Bowling180718.MAX_SCORE_IN_FRAME);
            b.Roll(Bowling180718.MAX_SCORE_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSpares()
        {
            for (int i = 0; i < Bowling180718.NORMAL_FRAME_COUNT; i++) {
                b.Roll(5);
                b.Roll(5);
            }
            b.Roll(5);
            Assert.Equal(150, b.Score());
        }

        [Fact]
        public void AllNines() 
        {
            for (int i = 0; i < Bowling180718.NORMAL_FRAME_COUNT; i++) {
                b.Roll(9);
                b.Roll(0);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllSparesWith1stNine()
        {
            for (int i = 0; i < Bowling180718.NORMAL_FRAME_COUNT; i++) {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }
    }
}
