// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            n

static class ata.g
{

    String a;
    String b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    .c p;
    .c q;
    .c r;
    .c s;
    .c t;
    .c u;
     v;
     w;
     x;

    boolean a()
    {
        if (!r.a())
        {
            return false;
        }
        if (s.a && !s.a())
        {
            return false;
        }
        if (w.a && !w.a())
        {
            return false;
        }
        if (u.d && !u.a())
        {
            return false;
        }
        if (!v.a())
        {
            return false;
        }
        return x.a();
    }

    boolean a(ata.g g1)
    {
        if (g1 == null)
        {
            return false;
        }
        a = g1.e("uuid");
        b = g1.e("title");
        c = g1.g("ad_campaign_id");
        d = g1.g("ad_id");
        e = g1.g("ad_group_id");
        f = g1.g("cpcv_bid");
        g = g1.g("net_earnings");
        h = g1.g("expires");
        i = g1.h("enable_in_app_store");
        j = g1.h("video_events_on_replays");
        k = g1.h("test_ad");
        l = g1.h("fullscreen");
        m = g1.h("house_ad");
        n = g1.h("contracted");
        p = new <init>();
        if (!p.a(g1.b("limits")))
        {
            return false;
        }
        q = new <init>();
        if (!q.a(g1.b("third_party_tracking")))
        {
            return false;
        }
        r = new <init>();
        if (!r.a(g1.b("in_app_browser")))
        {
            return false;
        }
        w = new <init>();
        if (!w.a(g1.b("native")))
        {
            return false;
        }
        s = new <init>();
        if (!s.a(g1.b("v4vc")))
        {
            return false;
        }
        t = new <init>();
        if (!t.a(g1.b("ad_tracking")))
        {
            return false;
        }
        u = new <init>();
        if (!u.a(g1.b("companion_ad")))
        {
            return false;
        }
        v = new ();
        if (!v.a(g1.b("video")))
        {
            return false;
        }
        x = new <init>();
        return x.a(g1.b("v4iap"));
    }

    void b()
    {
        s.b();
        r.b();
        w.b();
        u.b();
        v.c();
    }

    ata.g()
    {
    }
}
