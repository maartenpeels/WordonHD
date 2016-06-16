using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using Wordon_HD.Classes;

namespace Wordon
{
    internal class WordonHD
    {
        private const string URL_FB_LOGN = "http://game.wordonhd.com/account/facebook";
        private const string URL_LOGN = "http://game.wordonhd.com/account/login";
        private const string URL_RESUME = "http://game.wordonhd.com/game/resume";

        public string AuthToken { get; private set; }
        public string OverviewId { get; set; }

        public WordonHD()
        {
            OverviewId = "0";
        }

        public async Task<bool> Authorize()
        {
            var botLogin =
                Encoding.UTF8.GetBytes(
                    "locale=nl&deviceId=Android Linux&deviceToken=APA91bHNXBB1zAzbZ8PXVX_fODz0spyEYklZd0HDNHYiqFbZZVB53dQy6HOyUd-WR96USEtn7i3NR3j3YbUn6VnmZg5aDahYc1UjbjoViyctex5jF0Uv9TUKUd6T1wxCvqg0n-6UtLU-&country=nl-NL&password=1f58e4ff4a15267606904dc226ceb3e6&udId=6e3e879d29f4bac0&username=maartenpeels@gmail.com&version=1.88");
            using (var postContent = new ByteArrayContent(botLogin))
            {
                var response = await Utils.PostData(URL_LOGN, postContent);
                if (response == null)
                    return false;

                AuthToken = response["user"]["authToken"];
                string name = response["user"]["name"];
                Logger.Log("ACCOUNT", "Logged in as {0}, coins: {1}", name, response["user"]["coins"]);
            }

            return await Resume();
        }

        public async Task StartListening()
        {
            const string POST_URL = "http://listen.wordonhd.com/listen";

            while (true)
            {


                try
                {
                    string POST_DATA = string.Format("authToken={0}&overviewId={1}&sid={2}", AuthToken, Utils.LastOid,
                        "4");
                    //Debug.WriteLine("Last OID: {0}",  Utils.LastOID, "");
                    var response = await Utils.PostData(POST_URL, POST_DATA);

                    if (response == null || string.IsNullOrEmpty(response.ToString()))
                        continue;

                    Debug.WriteLine("OID from listen: {0}", OverviewId, "");
                    if ((response as Dictionary<string, object>).ContainsKey("gameList"))
                        await HandleInitialGames(response);
                    if ((response as Dictionary<string, object>).ContainsKey("gameOverview"))
                        await HandleOverview(response);
                    if ((response as Dictionary<string, object>).ContainsKey("invite"))
                        await AcceptInvite(response["invite"]);

                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
            }
        }

        private async Task HandleOverview(dynamic response)
        {
            try
            {
                await gameInstances[response["gameOverview"]["id"]].Update(response["gameOverview"]);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
        }

        private Dictionary<string, GameInstance> gameInstances = new Dictionary<string, GameInstance>();

        private async Task HandleInitialGames(dynamic response)
        {
            //const string POST_URL = "http://listen.wordonhd.com/listen";
            gameInstances = new Dictionary<string, GameInstance>();
            if (response is Dictionary<string, object> &&
                (response as Dictionary<string, object>).ContainsKey("gameList"))
            {
                var gameList = (response as Dictionary<string, object>).ContainsKey("gameList")
                    ? response["gameList"]
                    : null;

                if (gameList == null)
                    return;

                foreach (var game in gameList)
                {
                    if (game["state"].ToString() != "1")
                        continue;

                    GameInstance g = new GameInstance(this, game);
                    await g.Init();
                    gameInstances.Add(game["id"], g);
                }
            }


        }

        private async Task<bool> Resume()
        {
            var postString = String.Format("authToken={0}&timestamp=0", AuthToken);
            var respone = await Utils.PostData(URL_RESUME, postString);
            if (respone == null)
                return false;

            await HandleInvites(respone);
            return true;
        }

        private async Task HandleInvites(dynamic resumeJson)
        {
            try
            {
                dynamic invites = resumeJson["invitesPending"];
                if (invites == null)
                    return;
                foreach (var invite in invites)
                {
                    await AcceptInvite(invite);
                }

            }
            catch (Exception ex)
            {

            }

        }

        private async Task AcceptInvite(dynamic invite)
        {
            const string URL_POST = "http://game.wordonhd.com/game/invitation";
            if ((invite as Dictionary<string, object>).ContainsKey("displayname"))
            {
                var postString = String.Format("gameInviteId={0}&action=accept&authToken={1}&tilesetId=0",
                    invite["id"],
                    AuthToken);
                await Utils.PostData(URL_POST, postString);
                Logger.Log("INVITE", "Accepted game, user: {0}, lang: {1}", invite["displayname"],
                    invite["dictionaryId"]);
            }
            else
            {
                var postString = String.Format("gameInviteId={0}&action=accept&authToken={1}&tilesetId=0",
                    invite["invId"],
                    AuthToken);
                await Utils.PostData(URL_POST, postString);
                Logger.Log("INVITE", "Accepted game, user: {0}, lang: {1}", invite["name"], invite["dictId"]);
            }
        }
    }
}