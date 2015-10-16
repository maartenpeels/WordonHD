using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Wordon;
using Wordon_HD.Classes;

namespace Wordon_HD
{
    class Program
    {
        private const string URL_FB_LOGN = "http://game.wordonhd.com/account/facebook";
        private const string URL_LOGN = "http://game.wordonhd.com/account/login";
        private const string URL_RESUME = "http://game.wordonhd.com/game/resume";

        public string AuthToken { get; private set; }
        public string OverviewId { get; set; } = "0";

        static void Main(string[] args)
        {
            //string grid = "3002034";
            //string letters = "NNLERNE";
            //string wordons = "R";

            //Game g = new Game();
            //List<Word> best = g.PlayMove(letters, wordons, grid);

            Task.Run(() => BeABot());

            Process.GetCurrentProcess().WaitForExit();
        }

        private static async Task BeABot()
        {
            WordonHD wordonHd = new WordonHD();
            if (await wordonHd.Authorize())
            {
                //  Debug.WriteLine("Logged in as {0}", wordonHd.DisplayName);
            }

            await wordonHd.StartListening();
        }
    }
}
