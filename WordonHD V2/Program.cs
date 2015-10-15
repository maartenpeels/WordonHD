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
            string[] r = glos.GetAllPossibleWords(Localization.LangDutch, new List<string>() {"A", "O", "F", "#", "T", "B", "S"});
            Console.ReadKey();
        }
    }
}
