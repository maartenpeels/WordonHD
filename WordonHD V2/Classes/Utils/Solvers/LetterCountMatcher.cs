﻿using System;
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
        private string _curLang = "";

        public List<string> Match(string[] letters, string wildCard, byte[] binTree, string[] glossary, string loc)
        {
            _curLang = loc;
            int jokersCount = letters.Count(wildCard.Equals);

            List<string> lettersWithoutJokers = letters.Where(s => s != wildCard).ToList();

            uint[] countLetters = CountLetters(lettersWithoutJokers);

            List<uint> outcome = new List<uint>();

            CheckNode(0, countLetters, binTree, ref outcome, jokersCount);
            List<string> theList = new List<string>();
            for (int i = 1; i < outcome.Count; i++)
            {
                theList.Add(glossary[outcome[i]]);
            }
            theList.Sort();
            return theList;
        }

        private void CheckNode(uint index, uint[] list, byte[] binTree, ref List<uint> outcome, int wildCardCount)
        {
            int padding = (int) (list[binTree[index]] - binTree[index + 1]);
            index += 2;
            if (padding + wildCardCount < 0)
                return;
            if (padding < 0)
                wildCardCount += padding;

            int length = binTree[index];
            index++;

            for (int i = 0; i < length; i++)
            {
                outcome.Add(readAsuint(binTree, index));
                index += 3;
            }

            length = binTree[index];
            index++;

            for (int i = 0; i < length; i++)
            {
                uint newIndex = readAsuint(binTree, index);
                index += 3;
                CheckNode(newIndex, list, binTree, ref outcome, wildCardCount);
            }
        }

        private uint[] CountLetters(List<string> letters)
        {
            LetterDictionary.InitVectors(_curLang);
            string[] symbols = LetterDictionary.Symbols;
            string[] strings = symbols.Select(s => s.Length < 2 ? s : $"({s})").ToArray();
            uint[] binaryAlphabet = new uint[strings.Length];

            for (int i = 0; i < letters.Count; i++)
            {
                int index = Array.IndexOf(strings, letters[i]);
                if (index == -1)
                    Logger.Log($"{letters[i]} not found at {i}", Type.INFO);
                else
                {
                    binaryAlphabet[index]++;
                }
            }
            return binaryAlphabet;
        }

        private uint readAsuint(byte[] data, uint index)
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
