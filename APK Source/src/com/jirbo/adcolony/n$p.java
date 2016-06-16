// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, o

static class ata.g
{

    boolean a;
    boolean b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    b j;
    b k;
    b l;

    boolean a()
    {
        if (!a)
        {
            return false;
        }
        if (!a.l.c.a(c))
        {
            return false;
        }
        if (!a.l.c.a(g))
        {
            return false;
        }
        if (!k.a())
        {
            return false;
        }
        return l.a();
    }

    boolean a(ata.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.h("enabled");
        c = g1.e("poster_image");
        d = g1.e("advertiser_name");
        e = g1.e("description");
        f = g1.e("title");
        g = g1.e("thumb_image");
        h = g1.e("poster_image_last_modified");
        i = g1.e("thumb_image_last_modified");
        k = new <init>();
        if (!k.a(g1.b("mute")))
        {
            return false;
        }
        b = k.f;
        l = new <init>();
        if (!l.a(g1.b("unmute")))
        {
            return false;
        }
        j = new <init>();
        return j.a(g1.b("overlay"));
    }

    void b()
    {
        a.l.c.a(c, h);
        a.l.c.a(g, i);
        k.b();
        l.b();
    }

    ata.g()
    {
    }
}
