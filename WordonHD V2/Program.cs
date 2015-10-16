using System;
using System.Collections.Generic;
using WordonHD_V2.Classes.Utils;

namespace WordonHD_V2
{
    class Program
    {
        static void Main(string[] args)
        {
            Glossary glos = new Glossary();
            glos.Load(Localization.LangDutch);
            List<string> r = glos.GetAllPossibleWords(Localization.LangDutch, new List<string>() { "F", "O", "T", "#", "B", "X", "R" });
            ScoreSolver ss = new ScoreSolver();
            ss.FindOptimalScore(r, 
                                new List<string>() {"F", "O", "T", "#", "B", "X", "R"}, 
                                new List<string>() {"F", "O"},
                                new List<int>() { 0, 0, 0, 0, 0, 0, 0});
            Console.ReadKey();
        }
    }
}
