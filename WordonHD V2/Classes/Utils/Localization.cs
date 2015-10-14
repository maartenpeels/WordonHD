using System.Collections.Generic;

namespace WordonHD_V2.Classes.Utils
{
    static class Localization
    {
        public static string LangEnglish = "en";
      
        public static string LangGerman = "de";
      
        public static string LangFrench = "fr";
      
        public static string LangSpanish = "es";
      
        public static string LangItalian = "it";
      
        public static string LangSwedish = "sv";
      
        public static string LangNorwegian = "no";
      
        public static string LangDutch = "nl";

        public static Dictionary<string, string> Languagestring = new Dictionary<string, string>
        {
            {"en", "English (US)" },
            {"de", "Deutsch" },
            {"fr", "Français" },
            {"es", "Español" },
            {"it", "Italiano" },
            {"sv", "Svenska" },
            {"no", "Norsk" },
            {"nl", "Nederlands" }
        };
    }
}
