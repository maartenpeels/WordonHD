using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    static class Logger
    {
        public static void Log(string txt, bool useCat = true, params string[] p)
        {
            if(useCat)
                Console.WriteLine($"[{DateTime.Now.ToShortTimeString()}] {txt}");
            else
            {
                Console.WriteLine($"[{DateTime.Now.ToShortTimeString()}][{p[0]}] {txt}");
            }
        }
    }
}
