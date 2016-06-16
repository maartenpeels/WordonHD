using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    class ScoreSolver
    {
        private const uint MaxWordLength = 7;
        private const int LowerThanMax = int.MinValue;
        private const int NotFound = -1;
        private const int Wildcard = -1;
        private const int Wordon = 1;
        private const int Empty = 0;
        private bool _isMyTurn;

        public WordScore FindOptimalScore(List<string> wordDic, List<string> letters, List<string> wordons, int[] grid)
        {
            int[] letterIndices = LetterDictionary.DetermineIndices(string.Join("", letters));
            int[] wordonIndices = LetterDictionary.DetermineIndices(string.Join("", wordons));

            string[] _loc5_ = new string[7];
            List<int> _loc10_ = new List<int>();

            GridTool gridTool = new GridTool(grid);

            List<WordScore> wordScores = new List<WordScore>();

            int score = int.MinValue;
            int dicIndex = int.MinValue;

            int wordDicLength = wordDic.Count-1;
            for (int i = wordDicLength; i >= 0; i--)
            {
                if (wordDic[i] != null)
                {
                    gridTool.Reset();
                    int curScore = CheckScore(wordDic[i], letterIndices, wordonIndices, _loc5_, score, gridTool, _loc10_);
                    if (curScore > score)
                    {
                        score = curScore;
                        dicIndex = i;
                        wordScores.Insert(0, new WordScore(i, wordDic[i], score, _loc5_, i));
                    }
                }
            }
            if (dicIndex == int.MinValue)
            {
                Logger.Log("No words possible.", Type.DEBUG);
                return null;
            }
            Logger.Log($"The optimal word is \'{wordDic[dicIndex]}\' ({score} points)", Type.DEBUG);
            return wordScores[0];
        }

        private int CheckScore(string word, int[] letterIndices, int[] wordonIndices, string[] _loc5_, int score, GridTool gridTool, List<int> _loc10_)
        {
            bool[] lettersUsed = new bool[letterIndices.Length];
            bool[] wordonsUsed = new bool[wordonIndices.Length];

            if (word.Length == 0)
                return int.MinValue;

            int[] values = LetterDictionary.Values;
            int[] multipliers = gridTool.multipliers;
            int[] bonus = gridTool.bonus;
            int[] indices = LetterDictionary.DetermineIndices(word);

            int scr = 0;
            int scrDouble = 0;

            int actualWordLength = indices.Length;

            for (int i = 0; i < actualWordLength; i++)
            {
                if (indices[i] != -1)
                {
                    scr += values[indices[i]] * multipliers[i];
                    scr += bonus[i];
                    continue;
                }
                return int.MinValue;
            }

            scrDouble = scr * 2;
            if (scrDouble <= score)
                return scrDouble;

            int wordonLength = wordonIndices.Length;
            bool _loc11_;
            bool usedWordon = false;
            int wordonIndex = 0;
            for (int i = 0; i < wordonLength; i++)
            {
                wordonIndex = wordonIndices[i];
                if (wordonIndex != -1)
                {
                    _loc11_ = false;
                    for (int j = 0; j < actualWordLength; j++)
                    {
                        if (indices[j] == wordonIndex && gridTool.used[j] == 0)
                        {
                            gridTool.used[j] = 1;
                            _loc5_[j] = "!";
                            _loc11_ = true;
                            break;
                        }
                    }
                    if (!_loc11_)
                    {
                        usedWordon = false;
                        scr -= values[wordonIndex];
                    }
                }
            }

            if (!usedWordon)
            {
                if (scr <= score)
                    return scr;
            }

            int indicesVal = 0;
            int symbol = 0;
            int lowestSymbol = 0;
            for (int i = 0; i < actualWordLength; i++)
            {
                indicesVal = indices[i];
                symbol = FindSymbol(indicesVal, wordonIndices, wordonsUsed);
                if (symbol == -1)
                {
                    symbol = FindSymbol(indicesVal, letterIndices, lettersUsed);
                    if (symbol == -1)
                    {
                        symbol = FindSymbol(-1, wordonIndices, wordonsUsed);
                        lowestSymbol = LowestScoringSymbolInstance(indices, indicesVal, gridTool);
                        if (symbol != -1)
                        {
                            wordonsUsed[symbol] = true;
                            gridTool.used[lowestSymbol] = 1;
                            _loc5_[lowestSymbol] = "^";
                        }
                        else
                        {
                            _loc5_[lowestSymbol] = "#";
                        }
                        scr -= values[indicesVal] * multipliers[lowestSymbol];
                    }
                    else
                    {
                        lettersUsed[symbol] = true;
                    }
                }
                else
                {
                    lettersUsed[symbol] = true;
                }
            }

            int scrBackup = scr;
            for (int i = 0; i < wordonIndices.Length; i++)
            {
                symbol = FindSymbol(-1, wordonIndices, wordonsUsed);
                if (symbol != -1)
                {
                    lowestSymbol = LowestScoringSymbolInstance(indices, -1, gridTool);
                    if (lowestSymbol != 1)
                    {
                        wordonsUsed[symbol] = true;
                        _loc5_[lowestSymbol] = "^";
                        scrBackup -= values[indices[lowestSymbol]] * multipliers[lowestSymbol];
                        continue;
                    }
                    return 0;
                }
                break;
            }
            return scr > scrBackup ? scr : scrBackup;
        }

        private int FindSymbol(int val, int[] indices, bool[] used)
        {
            for (int i = 0; i < indices.Length; i++)
            {
                if (indices[i] == val && !used[i])
                    return i;
            }
            return -1;
        }

        private int LowestScoringSymbolInstance(int[] list, int indicesVal, GridTool grid)
        {
            int zonderNaam;
            int zonderNaam2;
            int zonderNaam3;
            int maxInt = int.MaxValue;
            int outp = 0;
            for (int i = 0; i < list.Length; i++)
            {
                zonderNaam = list[i];
                if (zonderNaam == indicesVal || indicesVal == -1)
                {
                    zonderNaam2 = LetterDictionary.Values[zonderNaam];
                    if (grid.used[i] == 0)
                    {
                        zonderNaam3 = zonderNaam2 * grid.multipliers[i];
                        if (zonderNaam3 < maxInt)
                        {
                            maxInt = zonderNaam3;
                            outp = i;
                        }
                    }
                }
            }
            return outp;
        }
    }
}
