using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using WordonHD_V2.Classes.Responses;
using WordonHD_V2.Classes.Utils;
using Type = WordonHD_V2.Classes.Utils.Type;

namespace WordonHD_V2.Classes
{
    class NetworkWrapper
    {
        private const string UrlLogin = "http://game.wordonhd.com/account/login";
        private const string UrlResume = "http://game.wordonhd.com/game/resume";
        private const string UrlListen = "http://listen.wordonhd.com/listen";
        private const string UrlAcceptInvite = "http://game.wordonhd.com/game/invitation";

        private static string _password;
        private static string _email;

        private static Dictionary<string, GameInstance> _gameInstances = new Dictionary<string, GameInstance>(); 

        public string AuthToken { get; private set; }
        public string OverviewId { get; set; }

        public NetworkWrapper(string email, string password)
        {
            _password = PasswordHelper.GetPassword(password);
            _email = email;
            OverviewId = "0";
        }

        public async Task<bool> Login()
        {
            NameValueCollection data = new NameValueCollection {
                {"locale", "nl"},
                {"deviceId", "Android Linux"},
                {"deviceToken", RandomString(183, "-_")},
                {"country", "nl-NL"},
                {"password", _password},
                {"username", _email},
                {"version", "1.88"},
            };
            LoginResponse response = await NetworkHelper.Post<LoginResponse>(UrlLogin, data);

            AuthToken = response.user.authToken;

            Logger.Log($"Logged in as {response.user.name}, coins: {response.user.coins}", Type.INFO);

            await HandleInvites();
            //Listen();
            return true;
        }

        public static string RandomString(int length, string extra = "")
        {
            string chars = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" + extra);
            var random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public async Task Listen()
        {
            while (true)
            {
                NameValueCollection data = new NameValueCollection {
                    {"authToken", AuthToken},
                    {"overviewId", OverviewId},
                    {"sid", "4"},
                };

                ListenResponse response = await NetworkHelper.Post<ListenResponse>(UrlListen, data);

                OverviewId = response.overviewId;

                if (response.gameOverview != null)
                {
                    //someone played word against you
                    Logger.Log($"{response.gameOverview.otherName} played {response.gameOverview.lastWord}", Type.DEBUG);
                }else if (response.gameList != null)
                {
                    //gameoverview changed
                    foreach (ListenResponse.GameList game in response.gameList)
                    {
                        Logger.Log($"Game vs {game.otherName}, progress: {game.progress}%", Type.DEBUG);
                    }
                }
            }
        }

        private async Task HandleInvites()
        {
            NameValueCollection data = new NameValueCollection {
                {"authToken", AuthToken},
                {"timestamp", "0"},
            };
            Task<string> resp = NetworkHelper.Post<string>(UrlResume, data);
        }
    }
}
