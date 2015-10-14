using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Wordon_HD.Classes
{
    static class Logger
    {
        public static void Log(string txt)
        {
            Console.WriteLine("[{0}] {1}", DateTime.Now.ToShortTimeString(), txt);
        }

        public static void Log(string category, string txt)
        {
            string cat = $"[{category}]";
            Log($"{cat}\t{txt}");
        }

        public static void Log(string category, string txt, params object[] objects)
        {
            Log(category, string.Format(txt, objects));
        }
    }
}
