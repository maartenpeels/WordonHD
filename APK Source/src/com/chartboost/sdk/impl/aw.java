// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.Model.b;
import com.chartboost.sdk.d;

// Referenced classes of package com.chartboost.sdk.impl:
//            ba

public class aw extends d
{

    private static aw c;
    protected int b;
    private a d;
    private boolean e;
    private boolean f;

    private aw()
    {
        d = null;
    }

    public static aw f()
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/impl/aw;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new aw();
        }
        com/chartboost/sdk/impl/aw;
        JVM INSTR monitorexit ;
_L2:
        return c;
        Exception exception;
        exception;
        com/chartboost/sdk/impl/aw;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected a a(String s, boolean flag)
    {
        return new a(com.chartboost.sdk.Model.a.c.b, flag, s, false);
    }

    public void a()
    {
        d = null;
    }

    protected void a(a a1, com.chartboost.sdk.Libraries.e.a a2)
    {
        if (!e && f)
        {
            f = false;
            b = a2.a("cells").o();
        }
        super.a(a1, a2);
    }

    public void a(String s)
    {
        b = 0;
        g();
        super.a(s);
    }

    protected com.chartboost.sdk.d.a c()
    {
        return new com.chartboost.sdk.d.a() {

            final aw a;

            public void a(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didClickMoreApps(a1.d);
                }
            }

            public void a(a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didFailToLoadMoreApps(a1.d, cbimpressionerror);
                }
            }

            public void b(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCloseMoreApps(a1.d);
                }
            }

            public void c(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDismissMoreApps(a1.d);
                }
            }

            public void d(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCacheMoreApps(a1.d);
                }
            }

            public void e(a a1)
            {
                a.b = 0;
                a.g();
                if (com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didDisplayMoreApps(a1.d);
                }
            }

            public boolean f(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.d().shouldDisplayMoreApps(a1.d);
                } else
                {
                    return true;
                }
            }

            public boolean g(a a1)
            {
                if (com.chartboost.sdk.b.d() != null)
                {
                    return com.chartboost.sdk.b.d().shouldRequestMoreApps(a1.d);
                } else
                {
                    return true;
                }
            }

            public boolean h(a a1)
            {
                return true;
            }

            
            {
                a = aw.this;
                super();
            }
        };
    }

    protected a d(String s)
    {
        return d;
    }

    protected ba e(a a1)
    {
        a1 = new ba("/more/get");
        a1.a(l.a.c);
        a1.a(b.c);
        return a1;
    }

    public String e()
    {
        return "more-apps";
    }

    protected void e(String s)
    {
        d = null;
    }

    protected void g()
    {
    }

    protected ba l(a a1)
    {
        ba ba1 = new ba("/more/show");
        if (a1.d != null)
        {
            ba1.a("location", a1.d);
        }
        if (a1.w().c("cells"))
        {
            ba1.a("cells", a1.w().a("cells"));
        }
        return ba1;
    }

    protected void q(a a1)
    {
        d = a1;
    }
}
