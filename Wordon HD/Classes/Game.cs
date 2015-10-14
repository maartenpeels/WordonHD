using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;

namespace Wordon_HD.Classes
{
    internal class Game
    {
        private string _letters;
        private string _wordons;
        private string _jokers = "";
        private List<Letter> _allLetters = new List<Letter>();
        private string _grid;

        private List<Word> _possibleWords = new List<Word>();

        public List<Word> PlayMove(string letters, string wordons, string grid)
        {
            _letters = letters;
            _wordons = wordons;
            foreach (var letter in letters)
            {
                _allLetters.Add(new Letter(letter));
            }
            foreach (var wordon in wordons)
            {
                _allLetters.Add(new Letter(wordon, true));
            }
            _grid = grid;

            FindPossibleWords();
            List<Word> words = GetMoves();

            foreach (Word word in words)
            {
                string wardons = _wordons.Replace("!", "").Replace(",", "");
                string outp = "";
                foreach (Letter letter in word.Letters)
                {           
                    if (letter.WildCard && wardons.Contains(letter.Chr))
                    {
                        outp += $"!#{letter.Chr},";
                        wardons = wardons.Remove(wardons.IndexOf(letter.Chr), 1);
                    }
                    else if (letter.WildCard)
                    {
                        outp += $"#{letter.Chr},";
                    }else if (wardons.Contains(letter.Chr))
                    {
                        outp += $"!{letter.Chr},";
                        wardons = wardons.Remove(wardons.IndexOf(letter.Chr), 1);
                    }
                    else
                    {
                        outp += $"{letter.Chr},";
                    }
                }
                word.Formatted = outp.Trim(',');
            }

            return words;
        }

        private void FindPossibleWords()
        {
            string temp = String.Join("", _allLetters).Replace(",", "").Replace("!", "");
            int maxLength = temp.Length;
            using (StreamReader r = new StreamReader("lang/nl3.lang"))
            {
                while (!r.EndOfStream)
                {
                    string w = r.ReadLine();
                    Word word = new Word(w);

                    if (word.Length <= maxLength)
                    {
                        string cleanLetters = "";
                        for (int i = 0; i < _allLetters.Count; i++)
                        {
                            cleanLetters += _allLetters[i];
                        }

                        string copy = cleanLetters.Clone().ToString();
                        bool isPossible = true;
                        foreach (Letter l in word.Letters)
                        {
                            int index = cleanLetters.IndexOf(l.Chr);
                            int index2 = -1;

                            if (index == -1)
                            {
                                index2 = cleanLetters.IndexOf('#');
                                if (index == -1 && index2 == -1)
                                {
                                    isPossible = false;
                                    break;
                                }
                                else if(index2 != -1)
                                {
                                    _jokers += l.Chr;
                                    l.WildCard = true;
                                }
                            }
                            
                            if(index != -1)
                                cleanLetters = cleanLetters.Remove(index, 1);
                            else
                                cleanLetters = cleanLetters.Remove(index2, 1);
                        }

                        if (isPossible)
                        {
                            Debug.WriteLine($"Checked '{word}' with '{copy}' left overs: {cleanLetters.Length}");
                            _possibleWords.Add(new Word(word.Letters));
                        }
                    }
                }
            }
        }

        public List<Word> GetMoves()
        {
            foreach (var word in _possibleWords)
            {
                UpdateGridPoints(word);
                UpdateWordonPoints(word);
            }
            _possibleWords.Sort((word1, word) => word.Points.CompareTo(word1.Points));
            return _possibleWords;
        }

        public void UpdateGridPoints(Word w)
        {
            for (int i = 0; i < w.Length; i++)
            {
                switch (_grid[i])
                {
                    case '1':
                        w.Letters[i].PointModifier = w.Letters[i].Value;
                        break;
                    case '2':
                        w.Letters[i].PointModifier = w.Letters[i].Value * 2;
                        break;
                    case '4':
                        w.Letters[i].PointModifier += 10;
                        break;
                }
            }
        }

        public void UpdateWordonPoints(Word w)
        {
            bool doubleScore = true;
            foreach (char c in _wordons)
            {
                if (!w.ToString().Contains(c))
                {
                    if (doubleScore)
                        doubleScore = false;
                    w.PointModifier -= new Letter(c).Value;
                }
            }
            if (doubleScore)
                w.PointModifier = w.Points;
        }
    }
}
