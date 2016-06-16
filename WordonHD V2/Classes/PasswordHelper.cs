using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes
{
    class PasswordHelper
    {
        public static string GetPassword(string password)
        {
            password += "ohf87ewyr87wfhj";//Secret
            MD5CryptoServiceProvider md = new MD5CryptoServiceProvider();
            byte[] passBytes = Encoding.UTF8.GetBytes(password);
            string output = "";
            foreach (var passByte in md.ComputeHash(passBytes))
            {
                output += passByte.ToString("x2");
            }
            return output;
        }
    }
}
