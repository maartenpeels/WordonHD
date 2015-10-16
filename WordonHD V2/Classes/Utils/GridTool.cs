using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WordonHD_V2.Classes.Utils
{
    class GridTool
    {
        private const int EMPTY = 0;
        public int[] multipliers;
        public int[] bonus;
        public int[] used;

        public GridTool(int[] grid)
        {
            int index = 0;

            multipliers = new int[grid.Length];
            bonus = new int[grid.Length];
            used = new int[grid.Length];

            for (int i = 0; i < grid.Length; i++)
            {
                index = grid[i];
                used[i] = 0;
                if (index == 1)
                {
                    multipliers[i] = 2;
                }else if (index == 2)
                {
                    multipliers[i] = 3;
                }
                else
                {
                    multipliers[i] = 1;
                }

                if (index == 4)
                {
                    bonus[i] = 10;
                }
                else
                {
                    bonus[i] = 0;
                }
            }
        }

        public void Reset()
        {
            used = new int[used.Length];
        }
    }
}
