using System;

namespace cs_kata
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Bowling180630 bowling = new Bowling180630();
            Console.WriteLine(bowling.Score());
        }
    }
}
