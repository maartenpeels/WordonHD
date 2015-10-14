// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n

static class ta.g
{

    boolean a;
    ta.g.g b;
    int c;
    String d;
    boolean e;
    int f;

    boolean a(ta.g g)
    {
        if (g == null)
        {
            return false;
        }
        a = g.h("enabled");
        if (!a)
        {
            return true;
        }
        b = new init>();
        if (!b.(g.b("limits")))
        {
            return false;
        } else
        {
            c = g.g("reward_amount");
            d = g.e("reward_name");
            e = g.h("client_side");
            f = g.g("videos_per_reward");
            return true;
        }
    }

    ta.g()
    {
    }
}
