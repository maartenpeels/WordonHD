// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, a, d, o

static class ata.g
{

    int a;
    String b;
    int c;
    int d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;
    b l;
    b m;
    b n;

    boolean a()
    {
        if (!a.l.c.a(e))
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
        a = g1.g("scale");
        b = g1.e("label_reward");
        c = g1.g("width");
        d = g1.g("height");
        e = g1.e("image");
        f = g1.e("image_last_modified");
        g = g1.e("label");
        h = g1.e("label_rgba");
        i = g1.e("label_shadow_rgba");
        j = g1.e("label_fraction");
        k = g1.e("label_html");
        l = new <init>();
        if (!l.a(g1.b("logo")))
        {
            return false;
        }
        m = new <init>();
        if (!m.a(g1.b("option_yes")))
        {
            return false;
        }
        n = new <init>();
        return n.a(g1.b("option_no"));
    }

    void b()
    {
        a.l.c.a(e, f);
        l.b();
        m.b();
        n.b();
    }

    ata.g()
    {
    }
}
