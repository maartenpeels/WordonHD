// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;


final class aa
{

    static final int a[] = new int[0];
    static final long b[] = new long[0];
    static final Object c[] = new Object[0];

    public static int a(int i)
    {
        int k = i * 4;
        i = 4;
        do
        {
label0:
            {
                int j = k;
                if (i < 32)
                {
                    if (k > (1 << i) - 12)
                    {
                        break label0;
                    }
                    j = (1 << i) - 12;
                }
                return j / 4;
            }
            i++;
        } while (true);
    }

    static int a(int ai[], int i, int j)
    {
        int k = 0;
        for (i--; k <= i;)
        {
            int l = k + i >>> 1;
            int i1 = ai[l];
            if (i1 < j)
            {
                k = l + 1;
            } else
            if (i1 > j)
            {
                i = l - 1;
            } else
            {
                return l;
            }
        }

        return ~k;
    }

    public static boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

}
