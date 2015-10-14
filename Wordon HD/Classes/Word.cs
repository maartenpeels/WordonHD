using System.Collections.Generic;

namespace Wordon_HD.Classes
{
    internal class Word
    {
        public List<Letter> Letters = new List<Letter>();

        public string Formatted { get; set; }

        public int PointModifier { get; set; } = 0;

        public Word(string word)
        {
            foreach (char t in word)
            {
                Letters.Add(new Letter(t));
            }
        }

        public void SetWildCard(int i, char c)
        {
            foreach (Letter letter in Letters)
            {
                if (letter.Chr == c)
                {
                    letter.WildCard = true;
                    break;
                }
            }
        }

        public Word(List<Letter> letters)
        {
            Letters = letters;
        }

        public int Length => Letters.Count;

        public override string ToString()
        {
            return string.Join("", Letters);
        }

        public int Points
        {
            get
            {
                int p = 0;
                foreach (var l in Letters)
                {
                    p += l.Value;
                }
                return p + PointModifier;
            }
        }
    }
}
