using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using WordonHD_V2.Classes.Responses;

namespace WordonHD_V2.Classes.Utils
{
    public static class NetworkHelper
    {
        private static WebClient _client = new WebClient();

        public static async Task<T> Post<T>(string uri, NameValueCollection data)
        {
            byte[] respBytes = _client.UploadValues(uri, data);
            string respString = Encoding.UTF8.GetString(respBytes);

            if (typeof(T) == typeof(string)) return respString;

            JavaScriptSerializer jsonSerializer = new JavaScriptSerializer();
            return jsonSerializer.Deserialize<T>(respString);
        }
    }
}
