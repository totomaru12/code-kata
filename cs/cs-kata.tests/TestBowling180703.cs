using System;
using Xunit;
using cs_kata;

namespace cs_kata.tests
{
    public class TestBowling180703
    {
        private readonly Bowling180703 b;

        public TestBowling180703()
        {
            b = new Bowling180703();
        }

        [Fact]
        public void AllStrikes()
        {
            for (int i = 0; i < 12; i++) {
                b.Roll(10);
            }
            Assert.Equal(300, b.Score());
        }

        [Fact]
        public void AllSpares()
        {
            for (int i = 0; i < 21; i++) {
                b.Roll(5);
            }
            Assert.Equal(150, b.Score());
        }

        [Fact]
        public void AllNines()
        {
            for (int i = 0; i < 10; i++) {
                b.Roll(9);
                b.Roll(0);
            }
            Assert.Equal(90, b.Score());
        }

        [Fact]
        public void AllSparesWith1stNine()
        {
            for (int i = 0; i < 10; i++) {
                b.Roll(9);
                b.Roll(1);
            }
            b.Roll(9);
            Assert.Equal(190, b.Score());
        }
    }
}