using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    class LetterCountMatcher
    {
        public string[] Match(List<string> letters, string wildCard, byte[] binTree, string[] glossary)
        {
            int wildCardCount = letters.Count(s => s == wildCard);

            while (letters.Contains(wildCard))
                letters.RemoveAt(letters.IndexOf(wildCard));

            uint[] letterCount = CountLetters(letters);
            List<uint> outcome = new List<uint>();
            var watch = Stopwatch.StartNew();

            CheckNode(0, letterCount, binTree, ref outcome, wildCardCount);

            string[] outputList = new string[outcome.Count];
            for (int i = 1; i < outcome.Count; i++)
            {
                outputList[i] = glossary[outcome[i]];
            }

            watch.Stop();
            var elapsedMs = watch.ElapsedMilliseconds;
            Logger.Log($"Found possible words in {elapsedMs}ms", Type.DEBUG);
            Array.Sort(outputList);
            return outputList;
        }

        private void CheckNode(int index, uint[] letterCount, byte[] binTree, ref List<uint> outcome, int wildCardCount)
        {
            int padding = (int) letterCount[binTree[index]] - binTree[index + 1];
            index += 2;
            if (padding + wildCardCount < 0)
                return;
            if (padding < 0)
                wildCardCount += padding;
            int length = binTree[index++];
            for (int i = 0; i < length; i++)
            {
                outcome.Add(readAsuint(binTree, index));
                index += 3;
            }
            length = binTree[index++];
            for (int i = 0; i < length; i++)
            {
                uint newIndex = readAsuint(binTree, index);
                index += 3;
                CheckNode((int) newIndex, letterCount, binTree, ref outcome, wildCardCount);
            }
        }

        private uint[] CountLetters(List<string> letters)
        {
            LetterDictionary.InitVectors(Localization.LangDutch);
            List<string> symbols = LetterDictionary.Symbols;
            List<string> strings = symbols.Select(s => s.Length < 2 ? s : $"({s})").ToList();
            uint[] binaryAlphabet = new uint[strings.Count];

            for (int i = 0; i < letters.Count; i++)
            {
                int index = strings.IndexOf(letters[i]);
                if (index == -1)
                    Logger.Log($"{letters[i]} not found at {i}", Type.INFO);
                else
                {
                    binaryAlphabet[i]++;
                }
            }
            return binaryAlphabet;
        }

        private uint readAsuint(byte[] data, int index)
        {
            uint temp = 0;
            temp = temp | data[index];
            temp = temp << 8;
            temp = temp | data[index + 1];
            temp = temp << 8;
            temp = temp | data[index + 2];
            return temp;
        }
    }
}
