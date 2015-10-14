using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WordonHD_V2.Classes.Utils;

namespace WordonHD_V2
{
    class Program
    {
        static void Main(string[] args)
        {
            Glossary glos = new Glossary();
            glos.Load(Localization.LangDutch);
            var r = glos.GetAllPossibleWords(Localization.LangDutch, new List<string>() {"S", "N", "T", "E", "D", "B", "S"});
            Console.ReadKey();
        }
    }
}
