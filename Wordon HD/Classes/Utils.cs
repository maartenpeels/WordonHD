using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace Wordon_HD.Classes
{
    static class Utils
    {
        private static readonly HttpClient _httpClient;
        private static readonly JavaScriptSerializer _javaScriptSerializer;

        public static string LastOid { get; private set; }

        static Utils()
        {
            _httpClient = new HttpClient();
            _httpClient.DefaultRequestHeaders.Add("User-Agent",
                "Mozilla/5.0 (Android; U; nl-NL) AppleWebKit/533.19.4 (KHTML, like Gecko) AdobeAIR/14.0");
            _httpClient.DefaultRequestHeaders.Add("x-flash-version", "14,0,0,145");
            _httpClient.DefaultRequestHeaders.Add("Referer", "app:/wordon.swf");

            _javaScriptSerializer = new JavaScriptSerializer();
            LastOid = "0";
        }

        public static async Task<dynamic> PostData(string url, string content)
        {
            using (var stringContent = new StringContent(content))
                return await PostData(url, stringContent);
        }

        public static async Task<dynamic> PostData(string url, HttpContent content)
        {
            content.Headers.ContentType = new MediaTypeHeaderValue("application/x-www-form-urlencoded");

            var response = await _httpClient.PostAsync(url, content);
            if (!response.IsSuccessStatusCode)
            {
                try
                {
                    var errorString = await response.Content.ReadAsStringAsync();
                    Debug.WriteLine("Error data:");
                    Debug.WriteLine(errorString);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine("Could not read the error string");
                }
                return null;
            }

            var stringResponse = await response.Content.ReadAsStringAsync();
            Debug.WriteLine(stringResponse);
            if (stringResponse == "")
                return null;
            var json = _javaScriptSerializer.Deserialize<dynamic>(stringResponse);
            try
            {
                LastOid = json["overviewId"];
            }
            catch { }
            return json["result"] != ":)" ? null : json;
        }
    }
}
