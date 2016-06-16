// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;

import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.d;
import com.chartboost.sdk.f;
import com.chartboost.sdk.impl.ae;
import com.chartboost.sdk.impl.af;
import com.chartboost.sdk.impl.ah;
import com.chartboost.sdk.impl.ai;
import com.chartboost.sdk.impl.aw;
import com.chartboost.sdk.impl.ax;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bc;
import com.chartboost.sdk.impl.bq;
import com.chartboost.sdk.impl.bs;
import java.util.Date;

public final class com.chartboost.sdk.Model.a
{
    public static interface a
    {

        public abstract void a(com.chartboost.sdk.Model.a a1);

        public abstract void a(com.chartboost.sdk.Model.a a1, CBError.CBImpressionError cbimpressionerror);

        public abstract void a(com.chartboost.sdk.Model.a a1, String s1, com.chartboost.sdk.Libraries.e.a a2);

        public abstract void b(com.chartboost.sdk.Model.a a1);

        public abstract void c(com.chartboost.sdk.Model.a a1);

        public abstract void d(com.chartboost.sdk.Model.a a1);
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        private static final b g[];

        public static b valueOf(String s1)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/Model/a$b, s1);
        }

        public static b[] values()
        {
            return (b[])g.clone();
        }

        static 
        {
            a = new b("LOADING", 0);
            b = new b("LOADED", 1);
            c = new b("DISPLAYED", 2);
            d = new b("CACHED", 3);
            e = new b("DISMISSING", 4);
            f = new b("NONE", 5);
            g = (new b[] {
                a, b, c, d, e, f
            });
        }

        private b(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class c extends Enum
    {

        public static final c a;
        public static final c b;
        public static final c c;
        public static final c d;
        private static final c e[];

        public static c valueOf(String s1)
        {
            return (c)Enum.valueOf(com/chartboost/sdk/Model/a$c, s1);
        }

        public static c[] values()
        {
            return (c[])e.clone();
        }

        static 
        {
            a = new c("INTERSTITIAL", 0);
            b = new c("MORE_APPS", 1);
            c = new c("REWARDED_VIDEO", 2);
            d = new c("NONE", 3);
            e = (new c[] {
                a, b, c, d
            });
        }

        private c(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class d extends Enum
    {

        public static final d a;
        public static final d b;
        public static final d c;
        public static final d d;
        private static final d e[];

        public static d valueOf(String s1)
        {
            return (d)Enum.valueOf(com/chartboost/sdk/Model/a$d, s1);
        }

        public static d[] values()
        {
            return (d[])e.clone();
        }

        static 
        {
            a = new d("INTERSTITIAL", 0);
            b = new d("INTERSTITIAL_VIDEO", 1);
            c = new d("INTERSTITIAL_REWARD_VIDEO", 2);
            d = new d("NONE", 3);
            e = (new d[] {
                a, b, c, d
            });
        }

        private d(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public Date a;
    public b b;
    public c c;
    public String d;
    public d e;
    public boolean f;
    public boolean g;
    public bq h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public ba n;
    public boolean o;
    public boolean p;
    public boolean q;
    private com.chartboost.sdk.Libraries.e.a r;
    private boolean s;
    private Boolean t;
    private f u;
    private a v;
    private Runnable w;

    public com.chartboost.sdk.Model.a(c c1, boolean flag, String s1, boolean flag1)
    {
        t = null;
        j = false;
        k = false;
        l = false;
        m = false;
        p = false;
        q = false;
        b = b.a;
        f = flag;
        g = false;
        o = false;
        p = true;
        c = c1;
        i = flag1;
        r = com.chartboost.sdk.Libraries.e.a.a;
        e = com.chartboost.sdk.Model.d.d;
        d = s1;
        s = true;
        if (d == null)
        {
            d = "Default";
        }
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (a1 == null)
        {
            a1 = com.chartboost.sdk.Libraries.e.a.a;
        }
        r = a1;
    }

    public void a(com.chartboost.sdk.Libraries.e.a a1, a a2)
    {
        if (a1 == null)
        {
            a1 = com.chartboost.sdk.Libraries.e.a.a();
        }
        r = a1;
        a = new Date();
        b = b.a;
        v = a2;
        if (!a1.a("type").equals("native")) goto _L2; else goto _L1
_L1:
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[c.values().length];
                try
                {
                    a[c.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[c.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[c.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.chartboost.sdk.Model.c.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[c.ordinal()];
        JVM INSTR tableswitch 1 3: default 88
    //                   1 98
    //                   2 161
    //                   3 188;
           goto _L3 _L4 _L5 _L6
_L3:
        u.a(a1);
        return;
_L4:
        if (a1.a("media-type").equals("video"))
        {
            e = d.b;
            u = new ai(this);
            s = false;
        } else
        {
            e = d.a;
            u = new ah(this);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        e = d.c;
        u = new ai(this);
        s = false;
        continue; /* Loop/switch isn't completed */
_L6:
        u = new ax(this);
        s = false;
        continue; /* Loop/switch isn't completed */
_L2:
        u = new bs(this);
        if (true) goto _L3; else goto _L7
_L7:
    }

    public void a(CBError.CBImpressionError cbimpressionerror)
    {
        if (v != null)
        {
            v.a(this, cbimpressionerror);
        }
    }

    public void a(Runnable runnable)
    {
        w = runnable;
    }

    public boolean a()
    {
        return s;
    }

    public boolean a(String s1, com.chartboost.sdk.Libraries.e.a a1)
    {
        Object obj;
        String s2;
        if (b != b.c || k)
        {
            return false;
        }
        boolean flag;
        if (s1 == null)
        {
            s1 = r.e("link");
        }
        s2 = r.e("deep-link");
        obj = s1;
        if (TextUtils.isEmpty(s2)) goto _L2; else goto _L1
_L1:
        try
        {
            flag = bc.a(s2);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = s1;
            continue; /* Loop/switch isn't completed */
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        t = new Boolean(true);
        obj = s2;
_L2:
        if (o)
        {
            return false;
        } else
        {
            o = true;
            v.a(this, ((String) (obj)), a1);
            return true;
        }
_L4:
        t = new Boolean(false);
        obj = s1;
        continue; /* Loop/switch isn't completed */
        s1;
        obj = s2;
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void b()
    {
        if (v != null)
        {
            p = true;
            v.b(this);
        }
    }

    public void c()
    {
        if (v != null)
        {
            v.a(this);
        }
    }

    public boolean d()
    {
        return t != null;
    }

    public boolean e()
    {
        return t.booleanValue();
    }

    public void f()
    {
        if (v != null)
        {
            v.c(this);
        }
    }

    public void g()
    {
        if (v != null)
        {
            v.d(this);
        }
    }

    public boolean h()
    {
        if (u != null)
        {
            u.b();
            if (u.e() != null)
            {
                return true;
            }
        } else
        {
            CBLogging.b("CBImpression", "reinitializing -- no view protocol exists!!");
        }
        CBLogging.e("CBImpression", "reinitializing -- view not yet created");
        return false;
    }

    public void i()
    {
        j();
        if (!g)
        {
            return;
        }
        if (u != null)
        {
            u.d();
        }
        u = null;
        CBLogging.b("CBImpression", "Destroying the view and view data");
    }

    public void j()
    {
        if (h != null)
        {
            h.d();
            try
            {
                if (u != null && u.e() != null && u.e().getParent() != null)
                {
                    h.removeView(u.e());
                }
            }
            catch (Exception exception)
            {
                CBLogging.b("CBImpression", "Exception raised while cleaning up views", exception);
            }
            h = null;
        }
        if (u != null)
        {
            u.f();
        }
        CBLogging.b("CBImpression", "Destroying the view");
    }

    public CBError.CBImpressionError k()
    {
        if (u != null)
        {
            return u.c();
        } else
        {
            return null;
        }
    }

    public com.chartboost.sdk.f.a l()
    {
        if (u != null)
        {
            return u.e();
        } else
        {
            return null;
        }
    }

    public void m()
    {
        if (u != null && u.e() != null)
        {
            u.e().setVisibility(8);
        }
    }

    public void n()
    {
        k = true;
    }

    public void o()
    {
        if (w != null)
        {
            w.run();
            w = null;
        }
        k = false;
        j = false;
    }

    public String p()
    {
        return r.e("ad_id");
    }

    public com.chartboost.sdk.d q()
    {
        switch (_cls1.a[c.ordinal()])
        {
        default:
            return ae.f();

        case 3: // '\003'
            return aw.f();

        case 2: // '\002'
            return af.h();
        }
    }

    public void r()
    {
        q().j(this);
    }

    public boolean s()
    {
        if (u != null)
        {
            return u.j();
        } else
        {
            return false;
        }
    }

    public void t()
    {
        o = false;
        if (u != null)
        {
            u.k();
        }
    }

    public void u()
    {
        o = false;
    }

    public void v()
    {
        if (u != null)
        {
            u.l();
        }
    }

    public com.chartboost.sdk.Libraries.e.a w()
    {
        if (r == null)
        {
            return com.chartboost.sdk.Libraries.e.a.a;
        } else
        {
            return r;
        }
    }

    public f x()
    {
        return u;
    }

    public boolean y()
    {
        return p;
    }
}
