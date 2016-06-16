using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Moneys_G
{
    class Program
    {
        private const string Refferer = "WJDS-8712";
        private static WebClient _client = new WebClient();


        static void Main(string[] args)
        {
            int userCount = 0;

            int amount = int.Parse(Console.ReadLine());
            while (userCount < amount)
            {
                NameValueCollection data = new NameValueCollection {
                    {"locale", "nl"},
                    {"deviceId", "Android Linux"},
                    {"deviceToken", RandomString(183, "_-")},
                    {"country", "nl-NL"},
                    {"version", "1.88"},
                    {"udId", RandomString(16)},
                };
                dynamic s = Post("http://game.wordonhd.com/account/guest", data);
                string auth = s.user.authToken;
                data = new NameValueCollection {
                    {"authToken", auth},
                    {"code", Refferer},
                };
                dynamic x = Post("http://game.wordonhd.com/account/redeem", data);

                Console.WriteLine($"Created account #{userCount++}");
            }
        }

        public static string RandomString(int length, string extra = "")
        {
            string chars = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" + extra);
            var random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        
        public static dynamic Post(string uri, NameValueCollection data)
        {
            byte[] respBytes = _client.UploadValues(uri, data);
            string respString = Encoding.UTF8.GetString(respBytes);

            return JsonConvert.DeserializeObject(respString);
        }
    }
}
