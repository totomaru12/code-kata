using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180630
    {
        private readonly Bowling180630 bowling;

        public TestBowling180630()
        {
            bowling = new Bowling180630();
        }

        [Fact]
        public void AllStrike()
        {
            for (int i = 0; i < 12; i++) {
                bowling.Roll(10);
            }
            Assert.Equal(300, bowling.Score());
        }

        [Fact]
        public void AllSpare()
        {
            for (int i = 0; i < 21; i++) {
                bowling.Roll(5);
            }
            Assert.Equal(150, bowling.Score());
        }

        [Fact]
        public void AllNine()
        {
            for (int i = 0; i < 10; i++) {
                bowling.Roll(9);
                bowling.Roll(0);
            }
            Assert.Equal(90, bowling.Score());
        }

        [Fact]
        public void AllSpareWithNine1st()
        {
            for (int i = 0; i < 10; i++) {
                bowling.Roll(9);
                bowling.Roll(1);
            }
            bowling.Roll(9);
            Assert.Equal(190, bowling.Score());
        }
    }
}
