using System;
using System.Collections.Generic;
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

        public List<WordScore> FindOptimalScore(List<string> wordDic, List<string> letters, List<string> wordons, List<int> grid)
        {
            List<int> letterIndices = LetterDictionary.DetermineIndices(string.Join("", letters));
            List<int> wordonIndices = LetterDictionary.DetermineIndices(string.Join("", letters));

            List<string> lettersUsed = new List<string>();
            List<string> wordonsUsed = new List<string>();

            List<string> _loc5_ = new List<string>();
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
                    int curScore = CheckScore(wordDic[i], letterIndices, wordonIndices, lettersUsed, wordonsUsed, _loc5_, score, gridTool, _loc10_);
                    if (curScore > score)
                    {
                        score = curScore;
                        dicIndex = i;
                        wordScores.Insert(0, new WordScore(dicIndex, wordDic[dicIndex], score, _loc5_, i));
                    }
                }
            }
            if (dicIndex == int.MinValue)
            {
                Logger.Log("No words possible.", Type.DEBUG);
                return null;
            }
            Logger.Log($"The optimal word is \'{wordDic[dicIndex]}\' ({score} points)", Type.DEBUG);
            return wordScores;
        }

        private int CheckScore(string word, List<int> letterIndices, List<int> wordonIndices, List<string> lettersUsed, List<string> wordonsUsed, List<string> _loc5_, int score, GridTool gridTool, List<int> _loc10_)
        {

            return 10;
        }
    }
}
