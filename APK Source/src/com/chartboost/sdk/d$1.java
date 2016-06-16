// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.Model.a;

// Referenced classes of package com.chartboost.sdk:
//            d

class 
    implements Runnable
{

    final String a;
    final a b;
    final d c;

    public void run()
    {
        if (c.c(a))
        {
            a a1 = c.d(a);
            if (a1.b == com.chartboost.sdk.Model.f)
            {
                a1.b = com.chartboost.sdk.Model.d;
            }
            c.g(a1);
            return;
        } else
        {
            c.c(b);
            return;
        }
    }

    l.a(d d1, String s, a a1)
    {
        c = d1;
        a = s;
        b = a1;
        super();
    }
}
