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
    String c;
    String d;
    String e;
    String f;
    String g;
    b h;
    b i;
    b j;
    b k;
    b l;
    b m;

    boolean a()
    {
        if (!a.l.c.a(a))
        {
            return false;
        }
        if (!a.l.c.a(c))
        {
            return false;
        }
        if (!a.l.c.a(e))
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
        if (!j.a())
        {
            return false;
        }
        if (!k.a())
        {
            return false;
        }
        if (!l.a())
        {
            return false;
        }
        return m.a();
    }

    boolean a(ata.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.e("tiny_glow_image");
        b = g1.e("tiny_glow_image_last_modified;");
        c = g1.e("background_bar_image");
        d = g1.e("background_bar_image_last_modified");
        e = g1.e("background_tile_image");
        f = g1.e("background_tile_image_last_modified");
        g = g1.e("background_color");
        h = new <init>();
        if (!h.a(g1.b("logo")))
        {
            return false;
        }
        h = new <init>();
        if (!h.a(g1.b("logo")))
        {
            return false;
        }
        i = new <init>();
        if (!i.a(g1.b("stop")))
        {
            return false;
        }
        j = new <init>();
        if (!j.a(g1.b("back")))
        {
            return false;
        }
        k = new <init>();
        if (!k.a(g1.b("close")))
        {
            return false;
        }
        l = new <init>();
        if (!l.a(g1.b("forward")))
        {
            return false;
        }
        m = new <init>();
        return m.a(g1.b("reload"));
    }

    void b()
    {
        a.l.c.a(a, b);
        a.l.c.a(c, d);
        a.l.c.a(e, f);
        h.b();
        i.b();
        j.b();
        k.b();
        l.b();
        m.b();
    }

    ata.g()
    {
    }
}
