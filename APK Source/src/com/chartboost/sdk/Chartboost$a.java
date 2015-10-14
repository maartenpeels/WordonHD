// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.Libraries.k;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, b, a

private static class <init>
    implements Runnable
{

    private int a;
    private int b;
    private int c;

    private a a()
    {
        return com.chartboost.sdk.b.d();
    }

    public void run()
    {
        a a1 = a();
        if (com.chartboost.sdk.b.l() != null)
        {
            Chartboost.clearCache();
        }
        if (Chartboost.b != null && Chartboost.b.hashCode() == b)
        {
            Chartboost.b = null;
        }
        if (com.chartboost.sdk.Chartboost.k() != null && com.chartboost.sdk.Chartboost.k().hashCode() == a)
        {
            Chartboost.b(null);
        }
        if (a1 != null && a1.hashCode() == c)
        {
            com.chartboost.sdk.b.a(null);
        }
    }

    private ()
    {
        a a1 = a();
        int i;
        if (com.chartboost.sdk.Chartboost.k() == null)
        {
            i = -1;
        } else
        {
            i = com.chartboost.sdk.Chartboost.k().hashCode();
        }
        a = i;
        if (Chartboost.b == null)
        {
            i = -1;
        } else
        {
            i = Chartboost.b.hashCode();
        }
        b = i;
        if (a1 == null)
        {
            i = -1;
        } else
        {
            i = a1.hashCode();
        }
        c = i;
    }

    c(c c1)
    {
        this();
    }
}
