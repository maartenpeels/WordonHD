using System;
using System.IO;
using static System.Console;

namespace Word_Chooser
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = File.ReadAllText("input.json");
            Game g = new Game(input);
            g.GetBestMove();
            ReadKey();
        }
    }
}