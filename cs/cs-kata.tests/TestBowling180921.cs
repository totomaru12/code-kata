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
            for (int frame = 0; frame < 10; frame++) {
                b.Roll(10);
            }
            b.Roll(10);
            b.Roll(10);
            Assert.Equal(300, b.Score());
        }
        
    }
}