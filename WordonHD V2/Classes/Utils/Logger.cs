using System;

namespace WordonHD_V2.Classes.Utils
{
    public enum Type
    {
        INFO,
        GAME,
        DEBUG
    }
    static class Logger
    {
        private const Type LogType = Type.DEBUG;

        public static void Log(string txt, Type t)
        {
            if (t == Type.GAME)
            {
                Console.WriteLine($"[{DateTime.Now.ToShortTimeString()}][GAME] {txt}");
            }
            else if (t == Type.INFO)
            {
                Console.WriteLine($"[{DateTime.Now.ToShortTimeString()}][INFO] {txt}");
            }
            else if (LogType == Type.DEBUG)
            {
                Console.WriteLine($"[{DateTime.Now.ToShortTimeString()}][DEBUG] {txt}");
            }
        }
    }
}
