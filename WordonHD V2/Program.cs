using System;
using System.Collections.Generic;
using System.Linq;
using WordonHD_V2.Classes.Utils;

namespace WordonHD_V2
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.Write("letters: ");
                List<string> letters = Console.ReadLine().ToCharArray().Select(i => i.ToString().ToUpper()).ToList();
                Console.Write("wordons: ");
                List<string> wordons = Console.ReadLine().ToCharArray().Select(i => i.ToString().ToUpper()).ToList();
                Console.Write("grid: ");
                int[] grid = Console.ReadLine().ToCharArray().Select(i => (int)i).ToArray();

                Glossary glos = new Glossary();
                glos.Load(Localization.LangDutch);

                List<string> r = glos.GetAllPossibleWords(Localization.LangDutch, letters.Concat(wordons).ToArray());
                ScoreSolver ss = new ScoreSolver();
                WordScore word = ss.FindOptimalScore(r, letters, wordons, grid);

                Console.WriteLine("");
            }
        }
    }
}
