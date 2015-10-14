using System.Linq;

namespace Wordon_HD.Classes
{
    class Letter
    {
        public char Chr { get; set; }

        public int PointModifier { get; set; } = 0;

        public bool WildCard { get; set; } = false;

        public Letter(char c, bool i = false)
        {
            Chr = c;
        }

        public int Value
        {
            get
            {
                int points = 0;
                if ("ENIOA".Contains(Chr)) // 1 point
                {
                    points = 1;
                }
                if ("SDTR".Contains(Chr)) // 2 points
                {
                    points = 2;
                }
                if ("MLKPBG".Contains(Chr)) // 3 points
                {
                    points = 3;
                }
                if ("ZVUFJH".Contains(Chr)) //4 points
                {
                    points = 4;
                }
                if ("CW".Contains(Chr)) //5 points
                {
                    points = 5;
                }
                if ("YX".Contains(Chr)) //8 points
                {
                    points = 8;
                }
                if ("Q".Contains(Chr)) //10 points
                {
                    points = 10;
                }
                points += PointModifier;
                return WildCard ? 0 : points;
            }
        }

        public override string ToString()
        {
            return Chr.ToString();
        }
    }
}
