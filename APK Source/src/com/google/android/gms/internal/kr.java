// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

public final class kr
{

    public static final Object adX = new Object();

    public static boolean equals(int ai[], int ai1[])
    {
        if (ai == null || ai.length == 0)
        {
            return ai1 == null || ai1.length == 0;
        } else
        {
            return Arrays.equals(ai, ai1);
        }
    }

    public static boolean equals(Object aobj[], Object aobj1[])
    {
        int i;
        int j;
        int k;
        int l;
        if (aobj == null)
        {
            k = 0;
        } else
        {
            k = aobj.length;
        }
        if (aobj1 == null)
        {
            l = 0;
        } else
        {
            l = aobj1.length;
        }
        j = 0;
        i = 0;
        do
        {
            int i1 = j;
            if (i < k)
            {
                i1 = j;
                if (aobj[i] == null)
                {
                    i++;
                    continue;
                }
            }
            for (; i1 < l && aobj1[i1] == null; i1++) { }
            boolean flag;
            if (i >= k)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            if (i1 >= l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (j != 0 && flag)
            {
                return true;
            }
            if (j != flag)
            {
                return false;
            }
            if (!aobj[i].equals(aobj1[i1]))
            {
                return false;
            }
            i++;
            j = i1 + 1;
        } while (true);
    }

    public static int hashCode(int ai[])
    {
        if (ai == null || ai.length == 0)
        {
            return 0;
        } else
        {
            return Arrays.hashCode(ai);
        }
    }

    public static int hashCode(Object aobj[])
    {
        int j = 0;
        int i;
        int k;
        int l;
        if (aobj == null)
        {
            i = 0;
        } else
        {
            i = aobj.length;
        }
        for (k = 0; j < i; k = l)
        {
            Object obj = aobj[j];
            l = k;
            if (obj != null)
            {
                l = k * 31 + obj.hashCode();
            }
            j++;
        }

        return k;
    }

}
