// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n, q, a, l

static class ata.g
{

    boolean a;
    double b;
    boolean c;
    boolean d;
    String e;
    b f;
    String g;
    b h;
    b i;
    b j;

    boolean a()
    {
        if (!q.c())
        {
            a.ac = 8;
            return l.c.b("Ad not ready due to no network connection.");
        }
        if (!a)
        {
            return false;
        }
        if (!f.a())
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
        return j.a();
    }

    boolean a(ata.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.h("enabled");
        b = g1.f("load_timeout");
        c = g1.h("load_timeout_enabled");
        d = g1.h("load_spinner_enabled");
        e = g1.e("background_color");
        g = g1.e("html5_tag");
        f = new <init>();
        if (!f.a(g1.b("mraid_js")))
        {
            return false;
        }
        h = new <init>();
        if (!h.a(g1.b("background_logo")))
        {
            return false;
        }
        i = new <init>();
        if (!i.a(g1.b("replay")))
        {
            return false;
        }
        j = new <init>();
        return j.a(g1.b("close"));
    }

    void b()
    {
        if (a)
        {
            if (f != null)
            {
                f.b();
            }
            if (h != null)
            {
                h.b();
            }
            if (i != null)
            {
                i.b();
            }
            if (j != null)
            {
                j.b();
                return;
            }
        }
    }

    ata.g()
    {
    }
}
