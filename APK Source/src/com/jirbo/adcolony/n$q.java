// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n

static class ata.g
{

    boolean a;
    boolean b;
    String c;
    String d;
    String e;

    boolean a(ata.g g)
    {
        if (g == null)
        {
            return false;
        }
        a = g.h("enabled");
        if (!a)
        {
            return true;
        } else
        {
            b = g.h("in_app");
            c = g.e("click_action_type");
            e = g.e("click_action");
            d = g.e("label");
            return true;
        }
    }

    ata.g()
    {
    }
}
