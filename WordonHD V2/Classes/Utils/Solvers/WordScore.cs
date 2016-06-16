using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    class WordScore : IComparable<WordScore>
    {
        private int _dictIndex;
        private List<string> _word;
        private List<string> _formattedWord;
        private int _score;

        public WordScore(int dicIndex, string word , int score, string[] par4, int dictIndex)
        {
            int _loc9_ = 0;
            _dictIndex = dicIndex;
            _score = score;
            _dictIndex = dictIndex;
            _word = new List<string>();
            _formattedWord = new List<string>();
            bool isOPen = false;
            char chr;
            string outWord = "";

            for (int i = 0; i < word.Length; i++)
            {
                chr = word[i];
                if (!isOPen)
                {
                    if (chr != '(')
                    {
                        _word.Add(chr + "");
                    }
                    else
                    {
                        isOPen = true;
                    }
                }else if (chr != ')')
                {
                    outWord = outWord + chr;
                }
                else
                {
                    _word.Add($"({outWord})");
                    outWord = "";
                    isOPen = false;
                }
            }
            for (int i = 0; i < _word.Count; i++)
            {
                _formattedWord.Add(i < par4.Length && par4[i] != null ? par4[i] + _word[i] : _word[i]);
            }
        }

        public int DictIndex => _dictIndex;
        public List<string> Word => _word;
        public List<string> FormattedWord => _formattedWord;
        public int Score => _score;

        public override string ToString()
        {
            return string.Join("", _formattedWord);
        }

        public int CompareTo(WordScore other)
        {
            if (other.Score < _score)
                return 1;
            else if (other.Score > _score)
                return -1;
            else
                return 0;
        }
    }
}
