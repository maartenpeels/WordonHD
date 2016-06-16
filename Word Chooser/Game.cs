using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;

namespace Word_Chooser
{
    class Game
    {
        private readonly dynamic _game;
        private readonly string _lang;

        private string[] _grid;
        private Letter[] _allLetters;

        public Game(string src)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            dynamic s = serializer.Deserialize<dynamic>(src);

            _game = s["game"];

            SetInitialPoints();

            string gridString = _game["yourGrid"];
            _grid = gridString.Split(',');
        }

        public void SetInitialPoints()
        {
            string letterString = _game["yourLetters"];
            //_letters = letterString.Split(',');

            string importantLetterString = _game["yourWordons"];
            //_importantLetters = importantLetterString.Split(',');

            string[] temp = (importantLetterString + ',' + letterString).Split(',');
            _allLetters = new Letter[temp.Length];
            for (int i = 0; i < temp.Length; i++)
            {
                string c = temp[i];
                char chr = c[0];
                bool important = false;
                if (c.Length > 1)
                {
                    important = true;
                    chr = c[1];
                }
                _allLetters[i] = new Letter(chr, GetPoints(chr), important);
            }
        }

        public List<Match> FindMatches()
        {
            List<Match> words = new List<Match>();
            int maxLength = _allLetters.Length;

            using (StreamReader r = new StreamReader("lang/nl3.lang"))
            {
                while(!r.EndOfStream)
                {
                    string word = r.ReadLine();                  

                    if (word.Length <= maxLength)
                    {
                        string cleanLetters = "";
                        for (int i = 0; i < _allLetters.Length; i++)
                        {
                            cleanLetters += _allLetters[i].Chr.ToString().Replace("!", "");
                        }

                        string copy = cleanLetters.Clone().ToString();
                        bool isPossible = true;
                        foreach (char c in word)
                        {
                            int index = cleanLetters.IndexOf(c);

                            if (index == -1)
                            {
                                isPossible = false;
                                break;
                            }

                            cleanLetters = cleanLetters.Remove(index, 1);
                        }
                        if (isPossible)
                        { 
                            Console.WriteLine($"Checked '{word}' with '{copy}' left overs: {cleanLetters.Length}");
                            Match m = new Match {Word = word};
                            words.Add(m);
                        }
                    }
                }
            }
            return words;
        }

        public string GetBestMove()
        {
            List<Match> possibleWords = FindMatches();
            foreach (var possibleWord in possibleWords)
                SetPoints(possibleWord);
            
            return null;
        }

        private void SetPoints(Match word)
        {
            int curIndex = 0;
            foreach (var letter in word.Letters)
            {
                AddGridPoints(letter, curIndex);
                curIndex++;
            }
            foreach (Letter l in word.Letters)
            {
                word.TotalWordPoints += l.Points;
            }
            SetPointsWardons(word);
        }

        private void SetPointsWardons(Match word)
        {
            string allWordons = _allLetters.Where(letter => letter.Important).Aggregate("", (current, letter) => current + letter.Chr);
            string usedWordons = word.Letters.Where(letter => letter.Important).Aggregate("", (current, letter) => current + letter.Chr);


        }

        private void AddGridPoints(Letter c, int index)
        {
            switch (_grid[index])
            {
                case "1":
                    c.Points *= 2;
                    break;
                case "2":
                    c.Points *= 3;
                    break;
                case "4":
                    c.Points += 10;
                    break;
            }
        }

        private int GetPoints(char c)
        {
            if ("ENIOA".Contains(c)) // 1 point
            {
                return 1;
            }
            if ("SDTR".Contains(c)) // 2 points
            {
                return 2;

            }
            if ("MLKPBG".Contains(c)) // 3 points
            {
                return 3;
            }
            if ("ZVUFJH".Contains(c)) //4 points
            {
                return 4;
            }
            if ("CW".Contains(c)) //5 points
            {
                return 5;
            }
            if ("YX".Contains(c)) //8 points
            {
                return 8;
            }
            if ("Q".Contains(c)) //10 points
            {
                return 10;
            }
            Debug.WriteLine($"No points for {c}");
            return 0;
        }
    }

    class Match
    {
        public string Word
        {
            get
            {
                return Letters.Aggregate("", (current, letter) => current + letter.Chr);
            }
            set
            {
                int l = value.Length;
                Letters = new Letter[l];
                for (int i = 0; i < l; i++)
                {
                    Letters[i] = new Letter(value[i]);
                }
            }
        }

        public int Points
        {
            get
            {
                return Letters.Sum(letter => letter.Points);
            }
        }

        public int TotalWordPoints { get; set; } = 0;

        public Letter[] Letters { get; set; }
    }

    class Letter
    {
        public Letter(char c, int p = 0, bool important = false)
        {
            Chr = c;
            Points = p;
            Important = important;
        }

        public char Chr { get; set; }
        public int Points { get; set; }
        public bool Important { get; set; }
    }
}
