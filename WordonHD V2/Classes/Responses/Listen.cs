using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Responses
{
    public class ListenResponse
    {
        public class GameList
        {
            public string id { get; set; }
            public string yourId { get; set; }
            public string otherId { get; set; }
            public string otherName { get; set; }
            public string lastWord { get; set; }
            public string lastScore { get; set; }
            public string yourScore { get; set; }
            public string otherScore { get; set; }
            public string cycle { get; set; }
            public string chatUnseen { get; set; }
            public string dictionaryId { get; set; }
            public int timeLeft { get; set; }
            public string state { get; set; }
            public string turnUserId { get; set; }
            public string passes { get; set; }
            public int progress { get; set; }
        }

        public class GameOverview
        {
            public string id { get; set; }
            public string otherName { get; set; }
            public string otherId { get; set; }
            public int state { get; set; }
            public int cycle { get; set; }
            public string turnUserId { get; set; }
            public string dictionaryId { get; set; }
            public int lastScore { get; set; }
            public string lastWord { get; set; }
            public int yourScore { get; set; }
            public int otherScore { get; set; }
            public int timeLeft { get; set; }
            public int progress { get; set; }
        }

        public string result { get; set; }
        public List<GameList> gameList { get; set; }
        public GameOverview gameOverview { get; set; }
        public string overviewId { get; set; }
    }
}
