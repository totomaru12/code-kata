using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180802
    {
        private readonly Bowling180802 b;

        public TestBowling180802()
        {
            b = new Bowling180802();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int i = 0; i < Bowling180802.NORMAL_FRAME_MAX; i ++) {
                b.Roll(Bowling180802.SCORE_MAX_IN_FRAME);
            }
            b.Roll(Bowling180802.SCORE_MAX_IN_FRAME);
            b.Roll(Bowling180802.SCORE_MAX_IN_FRAME);
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSparesWith5()
        {
            for (int i = 0; i < Bowling180802.NORMAL_FRAME_MAX; i++) {
                b.Roll(5);
                b.Roll(5);
            }
            b.Roll(5);
            Assert.Equal(150, b.Score());
        }

        [Fact]
        public void AllNinesWith9and0()
        {
            for (int i = 0; i < Bowling180802.NORMAL_FRAME_MAX; i++) {
                b.Roll(9);
                b.Roll(0);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllSparesWith9and1()
        {
            for (int i = 0; i < Bowling180802.NORMAL_FRAME_MAX; i++) {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }
    }
}