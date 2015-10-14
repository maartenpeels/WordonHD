using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wordon_HD.Classes;

namespace Wordon
{
    internal class GameInstance
    {
        Game Game = new Game();

        public const string URL_LISTEN = "http://listen.wordonhd.com/listen";
        public dynamic game { get; private set; }

        public string _lastWord { get; set; } = "";

        public dynamic instance { get; private set; }
        public WordonHD Container { get; private set; }

        public string Letters
        {
            get
            {
                string s = instance["yourLetters"];
                s.Replace("!", "").Replace("#", "");
                return s;
            }
        }

        public string Wordons
        {
            get
            {
                try
                {
                    string s = instance["yourWordons"];
                    s.Replace("!", "").Replace("#", "");
                    return s;
                }
                catch (Exception e)
                {
                    return "";
                }
            }
        }

        public string otherWordons
        {
            get
            {
                try
                {
                    string s = instance["yourWordons"];
                    s.Replace("!", "").Replace("#", "");
                    return s;
                }
                catch (Exception e)
                {
                    return "";
                }
            }
        }

        public string OtherGrid
        {
            get
            {
                try
                {
                    string s = instance["otherGrid"];
                    s.Replace("!", "").Replace(",", "");
                    return s;
                }
                catch (Exception e)
                {
                    return "";
                }
            }
        }

        public string Grid
        {
            get
            {
                string s = instance["yourGrid"];
                s.Replace("!", "").Replace("#", "");
                return s;
            }
        }

        public string Id
        {
            get { return game["id"]; }
        }

        public string Opponent
        {
            get { return game["otherName"]; }
        }

        public int Cycle
        {
            get { return int.Parse(game["cycle"]); }
        }

        public GameInstance(WordonHD container, dynamic gameData)
        {
            Container = container;
            game = gameData;
        }

        public async Task Play()
        {
            /* if (game["dictionaryId"] != "nl")
                 return;*/
            if (game["turnUserId"] != game["yourId"] || game["state"].ToString() != "1")
                return;

            Game Game = new Game();
            string newWardons = "";
            if (_lastWord != "" && OtherGrid != "")
            {
                string gOther = OtherGrid.Replace(",", "");
                string wOther = _lastWord.Replace("!", "");
                for (int i = 0; i < gOther.Length; i++)
                {
                    if (i < wOther.Length)
                    {
                        if (gOther[i] == '3')
                        {
                            newWardons += wOther[i];
                        }
                    }
                }
            }
            List<Word> matches = Game.PlayMove(Letters, newWardons=="" ? Wordons : newWardons, Grid);
            if (matches.Count == 0)
            {
                Logger.Log("GAME", "Could not play any words against {0}, swapping", Opponent);
                await Swap();
                return;
            }
                if (await PlayWord(matches[0])) // Play word.
                {
                    Logger.Log("GAME", "Played '{0}' for {1} points against {2} [{3}]", matches[0].ToString(),
                        matches[0].Points, Opponent, game["dictionaryId"].ToString().ToUpper());
                    return;
                }
                Debug.WriteLine("Something went wrong posting '{0}' -> '{1}'", matches[0].ToString(), matches[0].Formatted);
        }

        internal async Task<bool> PlayWord(Word word)
        {
            //TODO fix de delay?
           // await Task.Delay(2000);
            const string POST_URL = "http://game.wordonhd.com/game/play";
            string postData = string.Format("authToken={0}&word={1}&bestWord={2}&gameId={3}", Container.AuthToken,
                word.Formatted, word.Formatted.Replace("!", "").Replace("#", ""), Id);
            var response = await Utils.PostData(POST_URL, postData);
            if (response == null)
                return false;
            instance = response["game"];
            return true;
        }

        internal async Task Swap()
        {
            string postData = string.Format("authToken={0}&gameId={1}", Container.AuthToken, Id);
            var result = await Utils.PostData("http://game.wordonhd.com/game/swap", postData);
            instance = result["game"];
        }

        internal void Check() //Check if game is over
        {
            if (int.Parse(instance["state"].ToString()) == 2)
            {
                Logger.Log("GAME", "{0} vs {1} ({2})", instance["yourScore"], instance["otherScore"], (int.Parse(instance["yourScore"].ToString()) > int.Parse(instance["otherScore"].ToString())) ? "WON" : "LOSS");
            }
        }

        public async Task Init()
        {
            string postData = string.Format("authToken={0}&sid=9&gid={1}&cycle={2}&newchats=0", Container.AuthToken,
                game["id"], int.Parse(game["cycle"].ToString()) + 1);
            var resp = await Utils.PostData(URL_LISTEN, postData);
            try
            {
                instance = resp["game"];
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            await Play();
        }

        public async Task Update(dynamic newData)
        {
            Dictionary<string, object> obj = newData as Dictionary<string, object>;
            foreach (var k in obj.Keys)
            {
                game[k] = newData[k];
            }
            _lastWord = newData["lastWord"].Replace(",", "");
            Check();
            await Play();
        }
    }
}