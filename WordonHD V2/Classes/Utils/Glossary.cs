using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    public class Glossary
    {
        private static Glossary _instance;
        private static Dictionary<string, string[]> _glossary;
        private static Dictionary<string, byte[]> _binTree;

        public Glossary()
        {
            _instance = this;
            _glossary = new Dictionary<string, string[]>();
            _binTree = new Dictionary<string, byte[]>();
        }

        public static Glossary GetInstance()
        {
            if (_instance == null)
            {
                Logger.Log("Glossary does not exists. use new Glossary() before using Instance");
                return null;
            }
            return _instance;
        }

        public void Load(string lang)
        {
            string langPath = $"lang\\{lang}3.lang";
            string blobPath = $"lang\\{lang}3.blob";
            if (!File.Exists(langPath) || !File.Exists(blobPath))
            {
                Console.WriteLine("Language file not found.");
                Logger.Log("");
                return;
            }

            _glossary.Add(lang, File.ReadAllLines(langPath));
            _binTree.Add(lang, File.ReadAllBytes(blobPath));
        }

        public string[] GetAllPossibleWords(string lang, List<string> letters)
        {
            if (!_binTree.ContainsKey(lang) || !_glossary.ContainsKey(lang))
            {
                Logger.Log("BinTree or Glossary not available. Returning empty list.", false, "Glossary::GetAllPossibleWords");
                return new string[] {};
            }
            var watch = Stopwatch.StartNew();
            Logger.Log($"Input: {string.Join("", letters)}", false, "Glossary::GetAllPossibleWords");
            LetterCountMatcher matcher = new LetterCountMatcher();
            string[] words = matcher.Match(letters, "#", _binTree[lang], _glossary[lang]);
            watch.Stop();
            var elapsedMs = watch.ElapsedMilliseconds;
            Logger.Log($"Possible words: {words.Length}, elapsed time: {elapsedMs}ms", false, "Glossary::GetAllPossibleWords");
            return words;
        } 
    }
}
