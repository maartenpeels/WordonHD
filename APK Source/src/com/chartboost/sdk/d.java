// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.chartboost.sdk:
//            c, Chartboost, e, b

public abstract class d
{
    protected static interface a
    {

        public abstract void a(com.chartboost.sdk.Model.a a1);

        public abstract void a(com.chartboost.sdk.Model.a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror);

        public abstract void b(com.chartboost.sdk.Model.a a1);

        public abstract void c(com.chartboost.sdk.Model.a a1);

        public abstract void d(com.chartboost.sdk.Model.a a1);

        public abstract void e(com.chartboost.sdk.Model.a a1);

        public abstract boolean f(com.chartboost.sdk.Model.a a1);

        public abstract boolean g(com.chartboost.sdk.Model.a a1);

        public abstract boolean h(com.chartboost.sdk.Model.a a1);
    }


    protected static Handler a = CBUtility.e();
    private Map b;
    private Map c;
    private a d;

    public d()
    {
        d = null;
        c = new HashMap();
        b = new HashMap();
    }

    private final boolean s(com.chartboost.sdk.Model.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (n(a1) == null) goto _L2; else goto _L1
_L1:
        CBLogging.b(getClass().getSimpleName(), String.format("%s %s", new Object[] {
            "Request already in process for impression with location", a1.d
        }));
        boolean flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        p(a1);
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        a1;
        throw a1;
    }

    protected abstract com.chartboost.sdk.Model.a a(String s1, boolean flag);

    protected void a()
    {
        c.clear();
    }

    protected void a(com.chartboost.sdk.Model.a a1)
    {
        q(a1);
        b().d(a1);
        a1.b = com.chartboost.sdk.Model.a.b.d;
    }

    protected void a(com.chartboost.sdk.Model.a a1, com.chartboost.sdk.Libraries.e.a a2)
    {
        if (a2.f("status") == 404)
        {
            CBLogging.b(a1.c, (new StringBuilder()).append("Invalid status code").append(a2.a("status")).toString());
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.NO_AD_FOUND);
            return;
        }
        if (a2.f("status") != 200)
        {
            CBLogging.b(a1.c, (new StringBuilder()).append("Invalid status code").append(a2.a("status")).toString());
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.INVALID_RESPONSE);
            return;
        } else
        {
            com.chartboost.sdk.Tracking.a.c(e(), a1.p(), a1.f);
            a1.a(a2, com.chartboost.sdk.c.a().a);
            return;
        }
    }

    protected void a(com.chartboost.sdk.Model.a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        e e1;
        o(a1);
        e1 = Chartboost.e();
        if (e1 == null || !e1.b()) goto _L2; else goto _L1
_L1:
        e1.a(a1, true);
_L4:
        com.chartboost.sdk.Tracking.a.a(e(), a1.d, cbimpressionerror);
        b().a(a1, cbimpressionerror);
        return;
_L2:
        if (e1 != null && e1.c())
        {
            e1.b(a1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(ba ba1, com.chartboost.sdk.Model.a a1)
    {
        ba1.a("location", a1.d);
        if (a1.f)
        {
            ba1.a("cache", "1");
            ba1.b(true);
        }
        ba1.b(Chartboost.getValidContext());
        a1.q = true;
        ba1.a(new com.chartboost.sdk.impl.ba.c(a1) {

            final com.chartboost.sdk.Model.a a;
            final d b;

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2)
            {
                a.q = false;
                if (a2.b() || a2.a("assets").b())
                {
                    b.a(a, com.chartboost.sdk.Model.CBError.CBImpressionError.NO_AD_FOUND);
                    return;
                } else
                {
                    b.a(a, a2);
                    return;
                }
            }

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2, CBError cberror)
            {
                a.q = false;
                ba2 = ba2.g();
                String s1 = cberror.a().name();
                if (cberror.b() != null)
                {
                    a2 = cberror.b();
                } else
                {
                    a2 = "";
                }
                CBLogging.d("network failure", String.format("request %s failed with error %s: %s", new Object[] {
                    ba2, s1, a2
                }));
                b.a(a, cberror.c());
            }

            
            {
                b = d.this;
                a = a1;
                super();
            }
        });
    }

    public void a(String s1)
    {
        com.chartboost.sdk.Model.a a1 = a(s1, false);
        e e1 = Chartboost.e();
        if (e1 != null && e1.c())
        {
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
        } else
        if (!b(a1))
        {
            a.post(new Runnable(s1, a1) {

                final String a;
                final com.chartboost.sdk.Model.a b;
                final d c;

                public void run()
                {
                    if (c.c(a))
                    {
                        com.chartboost.sdk.Model.a a2 = c.d(a);
                        if (a2.b == com.chartboost.sdk.Model.a.b.f)
                        {
                            a2.b = com.chartboost.sdk.Model.a.b.d;
                        }
                        c.g(a2);
                        return;
                    } else
                    {
                        c.c(b);
                        return;
                    }
                }

            
            {
                c = d.this;
                a = s1;
                b = a1;
                super();
            }
            });
            return;
        }
    }

    protected final a b()
    {
        if (d == null)
        {
            d = c();
        }
        return d;
    }

    public void b(String s1)
    {
        if (!c(s1))
        {
            if (!b(((com.chartboost.sdk.Model.a) (s1 = a(s1, true)))))
            {
                c(s1);
                return;
            }
        }
    }

    protected final boolean b(com.chartboost.sdk.Model.a a1)
    {
        if (b().h(a1))
        {
            return false;
        }
        if (CBUtility.a().getInt("cbPrefSessionCount", 0) == 1)
        {
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.FIRST_SESSION_INTERSTITIALS_DISABLED);
            return true;
        } else
        {
            return false;
        }
    }

    protected abstract a c();

    protected void c(com.chartboost.sdk.Model.a a1)
    {
        if (f(a1) && b().g(a1) && !s(a1))
        {
            if (!a1.f && com.chartboost.sdk.b.s())
            {
                a1.i = true;
                com.chartboost.sdk.Chartboost.a(a1);
            }
            if (!d(a1))
            {
                o(a1);
                return;
            }
            ba ba1 = e(a1);
            if (ba1 != null)
            {
                a(ba1, a1);
                com.chartboost.sdk.Tracking.a.a(e(), a1.d, a1.f);
                return;
            }
        }
    }

    public boolean c(String s1)
    {
        return d(s1) != null;
    }

    protected Context d()
    {
        Object obj;
        try
        {
            obj = com/chartboost/sdk/Chartboost.getDeclaredMethod("getValidContext", new Class[0]);
            ((Method) (obj)).setAccessible(true);
            obj = (Context)((Method) (obj)).invoke(null, new Object[0]);
        }
        catch (Exception exception)
        {
            CBLogging.b(this, "Error encountered getting valid context", exception);
            CBUtility.throwProguardError(exception);
            return com.chartboost.sdk.b.l();
        }
        return ((Context) (obj));
    }

    protected com.chartboost.sdk.Model.a d(String s1)
    {
        s1 = (com.chartboost.sdk.Model.a)c.get(s1);
        if (s1 != null && !m(s1))
        {
            return s1;
        } else
        {
            return null;
        }
    }

    protected boolean d(com.chartboost.sdk.Model.a a1)
    {
        return true;
    }

    protected abstract ba e(com.chartboost.sdk.Model.a a1);

    public abstract String e();

    protected void e(String s1)
    {
        c.remove(s1);
    }

    protected final boolean f(com.chartboost.sdk.Model.a a1)
    {
        if (!com.chartboost.sdk.b.m())
        {
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.SESSION_NOT_STARTED);
            return false;
        }
        e e1 = Chartboost.e();
        if (!a1.f && e1 != null && e1.c())
        {
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return false;
        }
        if (!az.a().c())
        {
            a(a1, com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNET_UNAVAILABLE);
            return false;
        } else
        {
            return true;
        }
    }

    protected void g(com.chartboost.sdk.Model.a a1)
    {
        o(a1);
        boolean flag;
        if (a1.b != com.chartboost.sdk.Model.a.b.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag && !b().f(a1))
        {
            return;
        }
        e e1;
        boolean flag1;
        if (a1.b == com.chartboost.sdk.Model.a.b.d)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i(a1);
        e1 = Chartboost.e();
        if (e1 != null)
        {
            if (e1.b())
            {
                e1.a(a1, false);
            } else
            if (a1.i && !flag1 && a1.b != com.chartboost.sdk.Model.a.b.c)
            {
                return;
            }
        }
        if (flag)
        {
            h(a1);
            return;
        } else
        {
            com.chartboost.sdk.Chartboost.a(a1);
            return;
        }
    }

    protected void h(com.chartboost.sdk.Model.a a1)
    {
        com.chartboost.sdk.Chartboost.a(a1);
    }

    protected void i(com.chartboost.sdk.Model.a a1)
    {
        j(a1);
    }

    public final void j(com.chartboost.sdk.Model.a a1)
    {
        if (!a1.g)
        {
            a1.g = true;
            a1.f = false;
            k(a1);
            if (d(a1.d) == a1)
            {
                e(a1.d);
                return;
            }
        }
    }

    protected final void k(com.chartboost.sdk.Model.a a1)
    {
        ba ba1 = l(a1);
        ba1.a(true);
        ba1.b(d());
        String s1;
        if (a1.f)
        {
            ba1.a("cached", "1");
        } else
        {
            ba1.a("cached", "0");
        }
        s1 = a1.w().e("ad_id");
        if (s1 != null)
        {
            ba1.a("ad_id", s1);
        }
        ba1.a(new com.chartboost.sdk.impl.ba.d(a1) {

            final com.chartboost.sdk.Model.a a;
            final d b;

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2)
            {
                if (com.chartboost.sdk.b.g() && !b.c(a.d))
                {
                    b.b(a.d);
                }
            }

            
            {
                b = d.this;
                a = a1;
                super();
            }
        });
        com.chartboost.sdk.Tracking.a.a(e(), a1.d, a1.p());
    }

    protected abstract ba l(com.chartboost.sdk.Model.a a1);

    protected final boolean m(com.chartboost.sdk.Model.a a1)
    {
        return TimeUnit.MILLISECONDS.toSeconds((new Date()).getTime() - a1.a.getTime()) >= 0x15180L;
    }

    protected com.chartboost.sdk.Model.a n(com.chartboost.sdk.Model.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        a1 = (com.chartboost.sdk.Model.a)b.get(a1.d);
_L4:
        this;
        JVM INSTR monitorexit ;
        return a1;
_L2:
        a1 = null;
        if (true) goto _L4; else goto _L3
_L3:
        a1;
        throw a1;
    }

    protected void o(com.chartboost.sdk.Model.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        b.remove(a1.d);
        this;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    protected void p(com.chartboost.sdk.Model.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        b.put(a1.d, a1);
        this;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    protected void q(com.chartboost.sdk.Model.a a1)
    {
        c.put(a1.d, a1);
    }

    public void r(com.chartboost.sdk.Model.a a1)
    {
    }

}
