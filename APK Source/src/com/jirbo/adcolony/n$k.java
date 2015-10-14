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
    String d;

    boolean a()
    {
        if (!a)
        {
            return true;
        }
        return a.l.c.a(c);
    }

    boolean a(ata.g g)
    {
        if (g == null)
        {
            return false;
        } else
        {
            a = g.a("enabled", false);
            c = g.e("file_url");
            d = g.e("last_modified");
            return true;
        }
    }

    void b()
    {
        a.l.c.a(c, d);
    }

    ata.g()
    {
    }
}
