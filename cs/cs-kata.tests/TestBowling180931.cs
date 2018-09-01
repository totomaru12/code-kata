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
            for (int frame = 0; frame < 10; frame ++) {
                b.Roll(10);
            }
            b.Roll(10);
            b.Roll(10);
            Assert.Equal(300, b.Score());
        }
    }
}