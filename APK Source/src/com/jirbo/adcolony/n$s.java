// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, o

static class ata.g
{

    String a;
    String b;
    b c;
    b d;

    boolean a()
    {
        if (!a.l.c.a(a))
        {
            return false;
        }
        if (!c.a())
        {
            return false;
        }
        return d.a();
    }

    boolean a(ata.g g)
    {
        a = g.e("background_image");
        b = g.e("background_image_last_modified");
        c = new <init>();
        if (!c.a(g.b("background_logo")))
        {
            return false;
        }
        d = new <init>();
        return d.a(g.b("dialog"));
    }

    void b()
    {
        a.l.c.a(a, b);
        d.b();
    }

    ata.g()
    {
    }
}
