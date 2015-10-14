// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, o

static class ata.g
{

    boolean a;
    int b;
    int c;
    String d;
    String e;
    b f;
    b g;
    b h;
    b i;

    boolean a()
    {
        if (!a)
        {
            return true;
        }
        if (!a.l.c.a(d))
        {
            return false;
        }
        if (!h.a())
        {
            return false;
        }
        if (!i.a())
        {
            return false;
        }
        if (!g.a())
        {
            return false;
        }
        return f.a();
    }

    boolean a(ata.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.h("enabled");
        if (!a)
        {
            return true;
        }
        b = g1.g("width");
        c = g1.g("height");
        d = g1.e("background_image");
        e = g1.e("background_image_last_modified");
        if (a.f != null)
        {
            d = a.f;
        }
        h = new <init>();
        if (!h.a(g1.b("replay")))
        {
            return false;
        }
        i = new <init>();
        if (!i.a(g1.b("continue")))
        {
            return false;
        }
        g = new <init>();
        if (!g.a(g1.b("download")))
        {
            return false;
        }
        f = new <init>();
        return f.a(g1.b("info"));
    }

    void b()
    {
        if (!a)
        {
            return;
        } else
        {
            a.l.c.a(d, e);
            h.b();
            i.b();
            g.b();
            f.b();
            return;
        }
    }

    ata.g()
    {
    }
}
