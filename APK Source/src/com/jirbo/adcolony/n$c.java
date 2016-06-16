// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n

static class ata.g
{

    boolean a;
    b b;
    b c;

    boolean a()
    {
        if (!b.a())
        {
            return false;
        }
        return c.a();
    }

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
        }
        b = new <init>();
        if (!b.a(g.b("pre_popup")))
        {
            return false;
        }
        c = new <init>();
        return c.a(g.b("post_popup"));
    }

    void b()
    {
        if (!a)
        {
            return;
        } else
        {
            b.b();
            c.b();
            return;
        }
    }

    ata.g()
    {
    }
}
