using System;
using System.Collections.Generic;
using System.Net.Http.Headers;

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

        public sealed class Language
        {
            private readonly string name;
            private readonly int value;

            public static readonly Language LangEnglish = new Language(0, "en");
            public static readonly Language LangGerman = new Language(1, "de");
            public static readonly Language LangFrench = new Language(2, "fr");
            public static readonly Language LangSpanish = new Language(3, "es");
            public static readonly Language LangItalian = new Language(4, "it");
            public static readonly Language LangSwedish = new Language(5, "sv");
            public static readonly Language LangNorwegian = new Language(6, "no");
            public static readonly Language LangDutch = new Language(7, "nl");

            private Language(int value, string name)
            {
                this.name = name;
                this.value = value;
            }

            public override string ToString()
            {
                return name;
            }
        }

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
