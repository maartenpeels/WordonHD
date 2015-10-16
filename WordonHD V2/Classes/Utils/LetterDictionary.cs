using System;
using System.Collections.Generic;
using System.Linq;

namespace WordonHD_V2.Classes.Utils
{
    internal static class LetterDictionary
    {
        public static Dictionary<string, Dictionary<string, int>> LetterList;
        public static string[] Symbols;
        public static int[] Values;

        static LetterDictionary()
        {
            LetterList = new Dictionary<string, Dictionary<string, int>>();
            const string loc1 = "#";
            var loc2 = "nl";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 5);
            SetValue(loc2, "D", 2);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 4);
            SetValue(loc2, "G", 3);
            SetValue(loc2, "H", 4);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 4);
            SetValue(loc2, "K", 3);
            SetValue(loc2, "L", 3);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "P", 3);
            SetValue(loc2, "Q", 10);
            SetValue(loc2, "R", 2);
            SetValue(loc2, "S", 2);
            SetValue(loc2, "T", 2);
            SetValue(loc2, "U", 4);
            SetValue(loc2, "V", 4);
            SetValue(loc2, "W", 5);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 8);
            SetValue(loc2, "Z", 4);
            SetValue(loc2, loc1, 0);
            loc2 = "en";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 3);
            SetValue(loc2, "D", 2);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 4);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 4);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 8);
            SetValue(loc2, "K", 5);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "P", 3);
            SetValue(loc2, "Q", 10);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 1);
            SetValue(loc2, "V", 4);
            SetValue(loc2, "W", 4);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 4);
            SetValue(loc2, "Z", 10);
            SetValue(loc2, loc1, 0);
            loc2 = "de";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "Ä", 6);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 4);
            SetValue(loc2, "D", 1);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 4);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 2);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 6);
            SetValue(loc2, "K", 4);
            SetValue(loc2, "L", 2);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 2);
            SetValue(loc2, "Ö", 8);
            SetValue(loc2, "P", 4);
            SetValue(loc2, "Q", 10);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 1);
            SetValue(loc2, "Ü", 6);
            SetValue(loc2, "V", 6);
            SetValue(loc2, "W", 3);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 10);
            SetValue(loc2, "Z", 3);
            SetValue(loc2, loc1, 0);
            loc2 = "fr";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 3);
            SetValue(loc2, "D", 2);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 4);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 4);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 8);
            SetValue(loc2, "K", 10);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "M", 2);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "P", 3);
            SetValue(loc2, "Q", 8);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 1);
            SetValue(loc2, "V", 4);
            SetValue(loc2, "W", 10);
            SetValue(loc2, "X", 10);
            SetValue(loc2, "Y", 10);
            SetValue(loc2, "Z", 10);
            SetValue(loc2, loc1, 0);
            loc2 = "es";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 3);
            SetValue(loc2, "CH", 5);
            SetValue(loc2, "D", 2);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 4);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 4);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 8);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "LL", 8);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "Ñ", 8);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "P", 3);
            SetValue(loc2, "Q", 5);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "RR", 8);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 1);
            SetValue(loc2, "V", 4);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 4);
            SetValue(loc2, "Z", 10);
            SetValue(loc2, loc1, 0);
            loc2 = "it";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "B", 5);
            SetValue(loc2, "C", 2);
            SetValue(loc2, "D", 5);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 5);
            SetValue(loc2, "G", 8);
            SetValue(loc2, "H", 8);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "L", 3);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 3);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "P", 5);
            SetValue(loc2, "Q", 10);
            SetValue(loc2, "R", 2);
            SetValue(loc2, "S", 2);
            SetValue(loc2, "T", 2);
            SetValue(loc2, "U", 3);
            SetValue(loc2, "V", 5);
            SetValue(loc2, "Z", 8);
            SetValue(loc2, loc1, 0);
            loc2 = "sv";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "Å", 4);
            SetValue(loc2, "Ä", 3);
            SetValue(loc2, "B", 4);
            SetValue(loc2, "C", 8);
            SetValue(loc2, "D", 1);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "F", 3);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 2);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 5);
            SetValue(loc2, "K", 2);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "M", 2);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 2);
            SetValue(loc2, "Ö", 4);
            SetValue(loc2, "P", 4);
            SetValue(loc2, "Q", 0);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 3);
            SetValue(loc2, "Ü", 0);
            SetValue(loc2, "V", 3);
            SetValue(loc2, "W", 0);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 7);
            SetValue(loc2, "Z", 8);
            SetValue(loc2, loc1, 0);
            loc2 = "dk";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "Å", 4);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 8);
            SetValue(loc2, "D", 2);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "Æ", 4);
            SetValue(loc2, "F", 3);
            SetValue(loc2, "G", 3);
            SetValue(loc2, "H", 4);
            SetValue(loc2, "I", 3);
            SetValue(loc2, "J", 4);
            SetValue(loc2, "K", 3);
            SetValue(loc2, "L", 2);
            SetValue(loc2, "M", 3);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 2);
            SetValue(loc2, "Ø", 4);
            SetValue(loc2, "P", 4);
            SetValue(loc2, "Q", 0);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 2);
            SetValue(loc2, "T", 2);
            SetValue(loc2, "U", 3);
            SetValue(loc2, "Ü", 0);
            SetValue(loc2, "V", 3);
            SetValue(loc2, "W", 0);
            SetValue(loc2, "X", 8);
            SetValue(loc2, "Y", 4);
            SetValue(loc2, "Z", 8);
            SetValue(loc2, loc1, 0);
            loc2 = "no";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "Å", 4);
            SetValue(loc2, "B", 4);
            SetValue(loc2, "C", 10);
            SetValue(loc2, "D", 1);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "Æ", 6);
            SetValue(loc2, "F", 2);
            SetValue(loc2, "G", 2);
            SetValue(loc2, "H", 3);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "J", 4);
            SetValue(loc2, "K", 2);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "M", 2);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "O", 2);
            SetValue(loc2, "Ø", 5);
            SetValue(loc2, "P", 4);
            SetValue(loc2, "Q", 0);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "S", 2);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "U", 4);
            SetValue(loc2, "Ü", 0);
            SetValue(loc2, "V", 4);
            SetValue(loc2, "W", 8);
            SetValue(loc2, "X", 0);
            SetValue(loc2, "Y", 6);
            SetValue(loc2, "Z", 0);
            SetValue(loc2, loc1, 0);
            loc2 = "cs";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "Á", 2);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "C", 2);
            SetValue(loc2, "Č", 4);
            SetValue(loc2, "D", 1);
            SetValue(loc2, "Ď", 8);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "É", 3);
            SetValue(loc2, "Ě", 3);
            SetValue(loc2, "F", 5);
            SetValue(loc2, "G", 5);
            SetValue(loc2, "H", 2);
            SetValue(loc2, "I", 1);
            SetValue(loc2, "Í", 2);
            SetValue(loc2, "J", 2);
            SetValue(loc2, "K", 1);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "M", 2);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "Ň", 6);
            SetValue(loc2, "O", 1);
            SetValue(loc2, "Ó", 7);
            SetValue(loc2, "P", 1);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "Ř", 4);
            SetValue(loc2, "S", 1);
            SetValue(loc2, "Š", 4);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "Ť", 7);
            SetValue(loc2, "U", 2);
            SetValue(loc2, "Ů", 4);
            SetValue(loc2, "Ú", 5);
            SetValue(loc2, "V", 1);
            SetValue(loc2, "X", 10);
            SetValue(loc2, "Y", 2);
            SetValue(loc2, "Ý", 4);
            SetValue(loc2, "Z", 2);
            SetValue(loc2, "Ž", 4);
            SetValue(loc2, loc1, 0);
            loc2 = "tr";
            SetValue(loc2, "A", 1);
            SetValue(loc2, "E", 1);
            SetValue(loc2, "İ", 1);
            SetValue(loc2, "K", 1);
            SetValue(loc2, "L", 1);
            SetValue(loc2, "R", 1);
            SetValue(loc2, "N", 1);
            SetValue(loc2, "T", 1);
            SetValue(loc2, "I", 2);
            SetValue(loc2, "M", 2);
            SetValue(loc2, "O", 2);
            SetValue(loc2, "S", 2);
            SetValue(loc2, "U", 2);
            SetValue(loc2, "B", 3);
            SetValue(loc2, "D", 3);
            SetValue(loc2, "Y", 3);
            SetValue(loc2, "Ü", 3);
            SetValue(loc2, "C", 4);
            SetValue(loc2, "Ş", 4);
            SetValue(loc2, "Z", 4);
            SetValue(loc2, "Ç", 4);
            SetValue(loc2, "H", 5);
            SetValue(loc2, "P", 5);
            SetValue(loc2, "G", 5);
            SetValue(loc2, "F", 7);
            SetValue(loc2, "V", 7);
            SetValue(loc2, "Ö", 7);
            SetValue(loc2, "Ğ", 8);
            SetValue(loc2, "J", 10);
            SetValue(loc2, loc1, 0);
        }

        private static void SetValue(string lang, string letter, int points)
        {
            if (!LetterList.ContainsKey(lang))
            {
                LetterList[lang] = new Dictionary<string, int>();
            }
            LetterList[lang][letter] = points;
        }

        public static int GetValue(string lang, string letter)
        {
            if(LetterList[lang] != null)
            {
                return LetterList[lang][letter];
            }
            return 0;
        }

        public static Dictionary<string, int> GetLettersInLanguage(string lang)
        {
            if(LetterList[lang] != null)
            {
                return LetterList[lang];
            }
            return null;
        }

        public static void InitVectors(string lang)
        {
            Symbols = LetterList[lang].Keys.ToArray();
            Array.Resize(ref Symbols, Symbols.Length-1);
            Values = LetterList[lang].Values.ToArray();
            Array.Resize(ref Values, Values.Length - 1);
            Logger.Log($"Loaded language file: {Localization.Languagestring[lang]}", Type.INFO);
            SortLists();
        }

        private static void SortLists()
        {
            int NaN = int.MaxValue;
            int charLength;
            bool _loc2_ = true;
            int _loc4_ = Symbols.Length;
            int _loc5_;
            int _loc7_;
            bool _loc8_;
            int listIndex;
            int charIndex;
            bool _loc11_;
            int _loc12_ = 0;

            while (_loc12_ < _loc4_)
            {
                if (_loc2_)
                {
                    _loc2_ = false;
                    listIndex = 0;
                    while (listIndex < _loc4_ - _loc12_ - 1)
                    {
                        charLength = Symbols[listIndex].Length > Symbols[listIndex + 1].Length
                            ? Symbols[listIndex].Length
                            : Symbols[listIndex].Length;
                        _loc8_ = false;
                        _loc11_ = false;
                        charIndex = 0;

                        while (charIndex < charLength)
                        {
                            _loc5_ = (int)Symbols[listIndex][charIndex];
                            try
                            {
                                _loc7_ = (int) Symbols[listIndex + 1][charIndex];
                            }
                            catch
                            {
                                _loc7_ = NaN;
                            }
                            if (_loc5_ == _loc7_)
                            {
                                _loc11_ = true;
                            }else if (_loc5_ > _loc7_)
                            {
                                _loc8_ = true;
                                break;
                            }
                            charIndex++;
                        }
                        if (_loc11_ && Symbols[listIndex].Length > Symbols[listIndex + 1].Length)
                        {
                            _loc8_ = true;
                        }
                        if (_loc8_)
                        {
                            _loc2_ = true;

                            string oldString = Symbols[listIndex];
                            Symbols[listIndex] = Symbols[listIndex + 1];
                            Symbols[listIndex + 1] = oldString;

                            int oldValue = Values[listIndex];
                            Values[listIndex] = Values[listIndex + 1];
                            Values[listIndex + 1] = oldValue;

                            Logger.Log($"Swapped {Symbols[listIndex]} => {Symbols[listIndex + 1]}", Type.DEBUG);
                        }
                        listIndex++;
                    }
                    _loc12_++;
                    continue;
                }
                break;
            }
        }

        public static int[] DetermineIndices(string word) => word.Select(t => Array.IndexOf(Symbols.ToArray(), t.ToString())).ToArray();
    }
}
