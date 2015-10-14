// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, o

static class ata.g
{

    boolean a;
    String b;
    String c;

    boolean a()
    {
        if (!a)
        {
            return true;
        }
        return a.l.c.a(b);
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
        } else
        {
            b = g.e("url");
            c = g.e("last_modified");
            return true;
        }
    }

    void b()
    {
        a.l.c.a(b, c);
    }

    ata.g()
    {
    }
}
