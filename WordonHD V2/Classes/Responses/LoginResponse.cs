using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Responses
{
    public class LoginResponse
    {
        public class Inventory
        {
            public string id { get; set; }
            public string total { get; set; }
        }

        public class User
        {
            public string authToken { get; set; }
            public string id { get; set; }
            public string invCode { get; set; }
            public string name { get; set; }
            public int border { get; set; }
            public string tutorial { get; set; }
            public int coins { get; set; }
            public string stars { get; set; }
            public string avatarTimestamp { get; set; }
            public int plrStatus { get; set; }
        }

        public class Friend
        {
            public string id { get; set; }
            public string displayname { get; set; }
        }

        public class Config
        {
            public string adProvider { get; set; }
            public string props { get; set; }
            public string offerWallProvider { get; set; }
            public string strengthRating { get; set; }
            public string starsSneakPeek { get; set; }
            public string starsNameChange { get; set; }
            public string starsPileCheck { get; set; }
            public string starsCoinBar { get; set; }
            public string starsSwapAll { get; set; }
            public string starsHint { get; set; }
            public string adInterval { get; set; }
            public string gamesUntilSMTutorial { get; set; }
            public string inviteFriendsTurn { get; set; }
            public string invitePlayersTurn { get; set; }
            public string promoResumeRate { get; set; }
            public string promoResetInterval { get; set; }
            public string promoResetTimeDist { get; set; }
            public string listRefreshInterval { get; set; }
            public string tilesetTimestamp { get; set; }
            public string staticHost { get; set; }
            public string version { get; set; }
            public int gaTracker { get; set; }
            public int freeSMTimestamp { get; set; }
        }

        public string result { get; set; }
        public List<Inventory> inventory { get; set; }
        public User user { get; set; }
        public List<object> invitesPending { get; set; }
        public List<object> invitesSent { get; set; }
        public List<Friend> friends { get; set; }
        public List<object> blocked { get; set; }
        public Config config { get; set; }
        public List<object> newsItems { get; set; }
        public List<object> promo { get; set; }
    }
}
