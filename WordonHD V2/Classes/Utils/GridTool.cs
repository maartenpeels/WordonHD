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

        public GridTool(List<int> grid)
        {
            int index = 0;

            multipliers = new int[grid.Count];
            bonus = new int[grid.Count];
            used = new int[grid.Count];

            for (int i = 0; i < grid.Count; i++)
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
    }
}
