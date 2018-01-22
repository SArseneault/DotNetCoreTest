using System;
using System.Threading;

namespace myApp
{
    class Program
    {
        static void Main(string[] args)
        {
            int runCount = 1;
            while(true){
                Console.WriteLine("Test Run#: " + runCount);
                runCount += 1;
                Thread.Sleep(5000);
            }
        }
    }
}
