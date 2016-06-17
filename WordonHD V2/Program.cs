using System.Diagnostics;
using System.Threading.Tasks;
using WordonHD_V2.Classes;

namespace WordonHD_V2
{
    class Program
    {
        static void Main(string[] args)
        {
            NetworkWrapper wrapper = new NetworkWrapper("maartenpeels@gmail.com", "...........");
            wrapper.Login();
            wrapper.Listen();
        }
    }
}
