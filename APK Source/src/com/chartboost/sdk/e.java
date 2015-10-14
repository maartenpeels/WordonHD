// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Handler;
import android.view.ViewGroup;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.impl.bi;
import com.chartboost.sdk.impl.bj;
import com.chartboost.sdk.impl.bq;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, CBImpressionActivity, b, a, 
//            d, c

public final class e
{

    private static e c;
    private bq a;
    private a b;

    private e()
    {
        a = null;
    }

    public static e a()
    {
        if (c == null)
        {
            c = new e();
        }
        return c;
    }

    private void e()
    {
        CBLogging.b("CBViewController", " Closing impression activity");
        Activity activity = Chartboost.c();
        if (activity != null && (activity instanceof CBImpressionActivity))
        {
            CBLogging.b("CBViewController", " Closing impression activity #######");
            Chartboost.d();
            activity.finish();
        }
    }

    private void e(a a1)
    {
        if (a != null && a.h() != a1)
        {
            CBLogging.b("CBViewController", "Impression already visible");
            a1.a(com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
        } else
        {
            com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror;
            com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror1;
            Activity activity;
            boolean flag;
            if (a1.b != com.chartboost.sdk.Model.a.b.c)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a1.b = com.chartboost.sdk.Model.a.b.c;
            activity = Chartboost.c();
            if (activity == null)
            {
                cbimpressionerror = com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY;
            } else
            {
                cbimpressionerror = null;
            }
            cbimpressionerror1 = cbimpressionerror;
            if (cbimpressionerror == null)
            {
                cbimpressionerror1 = a1.k();
            }
            if (cbimpressionerror1 != null)
            {
                CBLogging.b("CBViewController", "Cannot able to create the view while trying th display the impression");
                a1.a(cbimpressionerror1);
                return;
            }
            if (a == null)
            {
                a = new bq(activity, a1);
                activity.addContentView(a, new android.widget.FrameLayout.LayoutParams(-1, -1));
            }
            a.a();
            CBLogging.b("CBViewController", "Displaying the impression");
            a1.h = a;
            if (flag)
            {
                a.e().a();
                com.chartboost.sdk.impl.bi.b b1 = com.chartboost.sdk.impl.bi.b.a;
                if (a1.c == com.chartboost.sdk.Model.a.c.b)
                {
                    b1 = com.chartboost.sdk.impl.bi.b.c;
                }
                com.chartboost.sdk.impl.bi.b b2 = com.chartboost.sdk.impl.bi.b.a(a1.w().f("animation"));
                if (b2 != null)
                {
                    b1 = b2;
                }
                if (com.chartboost.sdk.b.f())
                {
                    b1 = com.chartboost.sdk.impl.bi.b.g;
                }
                a1.n();
                bi.a(b1, a1, new com.chartboost.sdk.impl.bi.a() {

                    final e a;

                    public void a(a a2)
                    {
                        a2.o();
                    }

            
            {
                a = e.this;
                super();
            }
                });
                if (com.chartboost.sdk.b.d() != null && (a1.e == com.chartboost.sdk.Model.a.d.b || a1.e == com.chartboost.sdk.Model.a.d.c))
                {
                    com.chartboost.sdk.b.d().willDisplayVideo(a1.d);
                }
                if (a1.q().b() != null)
                {
                    a1.q().b().e(a1);
                    return;
                }
            }
        }
    }

    private void f(a a1)
    {
        Activity activity = Chartboost.c();
        if (activity == null)
        {
            CBLogging.d(this, "No host activity to display loading view");
            return;
        }
        if (a == null)
        {
            a = new bq(activity, a1);
            activity.addContentView(a, new android.widget.FrameLayout.LayoutParams(-1, -1));
        }
        a.b();
        b = a1;
    }

    protected void a(a a1)
    {
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[com.chartboost.sdk.Model.a.b.values().length];
                try
                {
                    a[com.chartboost.sdk.Model.a.b.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        com.chartboost.sdk._cls3.a[a1.b.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 34;
           goto _L1 _L2
_L1:
        e(a1);
_L4:
        return;
_L2:
        if (a1.i && com.chartboost.sdk.b.s())
        {
            f(a1);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(a a1, boolean flag)
    {
        if (a1 != null && (a1 == b || a1 == com.chartboost.sdk.c.a().c()))
        {
            b = null;
            CBLogging.b("CBViewController", "Dismissing loading view");
            if (b())
            {
                a.c();
                if (flag && a != null && a.h() != null)
                {
                    d(a.h());
                    return;
                }
            }
        }
    }

    public void b(a a1)
    {
        CBLogging.b("CBViewController", "Dismissing impression");
        Runnable runnable = new Runnable(a1) {

            final a a;
            final e b;

            public void run()
            {
                a.b = com.chartboost.sdk.Model.a.b.e;
                com.chartboost.sdk.impl.bi.b b1 = com.chartboost.sdk.impl.bi.b.a;
                if (a.c == com.chartboost.sdk.Model.a.c.b)
                {
                    b1 = com.chartboost.sdk.impl.bi.b.c;
                }
                com.chartboost.sdk.impl.bi.b b2 = com.chartboost.sdk.impl.bi.b.a(a.w().f("animation"));
                if (b2 != null)
                {
                    b1 = b2;
                }
                if (com.chartboost.sdk.b.f())
                {
                    b1 = com.chartboost.sdk.impl.bi.b.g;
                }
                bi.b(b1, a, new com.chartboost.sdk.impl.bi.a(this) {

                    final _cls2 a;

                    public void a(a a1)
                    {
                        CBUtility.e().post(new Runnable(this, a1) {

                            final a a;
                            final _cls1 b;

                            public void run()
                            {
                                b.a.b.d(a);
                            }

            
            {
                b = _pcls1;
                a = a1;
                super();
            }
                        });
                        a1.m();
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            
            {
                b = e.this;
                a = a1;
                super();
            }
        };
        if (a1.k)
        {
            a1.a(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    public boolean b()
    {
        return a != null && a.g();
    }

    public void c(a a1)
    {
        CBLogging.b("CBViewController", "Removing impression silently");
        if (b())
        {
            a(a1, false);
        }
        a1.j();
        try
        {
            ((ViewGroup)(ViewGroup)a.getParent()).removeView(a);
        }
        // Misplaced declaration of an exception variable
        catch (a a1)
        {
            CBLogging.b("CBViewController", "Exception removing impression silently", a1);
        }
        a = null;
    }

    public boolean c()
    {
        return a != null;
    }

    public bq d()
    {
        return a;
    }

    public void d(a a1)
    {
        CBLogging.b("CBViewController", "Removing impression");
        a1.b = com.chartboost.sdk.Model.a.b.f;
        a1.q().b().c(a1);
        if (a1.y())
        {
            a1.q().b().b(a1);
        }
        if (a == null)
        {
            if (com.chartboost.sdk.b.e())
            {
                e();
            }
        } else
        {
            try
            {
                ((ViewGroup)(ViewGroup)a.getParent()).removeView(a);
            }
            catch (Exception exception)
            {
                CBLogging.b("CBViewController", "Exception removing impression ", exception);
            }
            a1.i();
            a = null;
            if (com.chartboost.sdk.b.e())
            {
                e();
                return;
            }
        }
    }
}
