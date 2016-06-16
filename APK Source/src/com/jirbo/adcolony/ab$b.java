// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            ab

static class a
{

    double a;

    void a(double d)
    {
        a = (double)System.currentTimeMillis() / 1000D + d;
    }

    boolean a()
    {
        return b() == 0.0D;
    }

    double b()
    {
        double d = (double)System.currentTimeMillis() / 1000D;
        double d1 = a - d;
        d = d1;
        if (d1 <= 0.0D)
        {
            d = 0.0D;
        }
        return d;
    }

    public String toString()
    {
        return ab.a(b(), 2);
    }

    (double d)
    {
        a = System.currentTimeMillis();
        a(d);
    }
}
