// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.impl.ai;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bc;
import com.chartboost.sdk.impl.bq;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, e, b, a, 
//            d

public final class c
{
    public static interface a
    {

        public abstract void a(boolean flag);
    }

    public static interface b
    {

        public abstract void a();
    }


    private static final String c = com/chartboost/sdk/c.getSimpleName();
    private static c d;
    public com.chartboost.sdk.Model.a.a a;
    public com.chartboost.sdk.impl.bc.a b;
    private bc e;

    private c()
    {
        a = new com.chartboost.sdk.Model.a.a() {

            final c a;

            public void a(com.chartboost.sdk.Model.a a1)
            {
                boolean flag;
                synchronized (a)
                {
                    flag = a1.f;
                }
                if (a1.b == com.chartboost.sdk.Model.a.b.a)
                {
                    a1.b = com.chartboost.sdk.Model.a.b.b;
                    if (flag)
                    {
                        a1.q().a(a1);
                    }
                }
                if (!flag)
                {
                    a1.q().g(a1);
                }
                a1.q().o(a1);
                return;
                a1;
                c1;
                JVM INSTR monitorexit ;
                throw a1;
            }

            public void a(com.chartboost.sdk.Model.a a1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
            {
                a1.q().a(a1, cbimpressionerror);
            }

            public void a(com.chartboost.sdk.Model.a a1, String s, com.chartboost.sdk.Libraries.e.a a2)
            {
                a1.q().b().a(a1);
                if (a1.a() && a1.b == com.chartboost.sdk.Model.a.b.c)
                {
                    e e1 = Chartboost.e();
                    if (e1 != null)
                    {
                        e1.b(a1);
                    }
                }
                boolean flag;
                if (!TextUtils.isEmpty(s))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    ba ba1 = a.d();
                    ba1.a("to", a1.w());
                    ba1.a("cgn", a1.w());
                    ba1.a("creative", a1.w());
                    ba1.a("ad_id", a1.w());
                    ba1.a("cgn", a2);
                    ba1.a("creative", a2);
                    ba1.a("type", a2);
                    ba1.a("more_type", a2);
                    if (a1.d())
                    {
                        ba1.a("retarget_reinstall", Boolean.valueOf(a1.e()));
                    }
                    a1.n = ba1;
                    a.b(a1, s, null);
                } else
                {
                    a.b.a(a1, false, s, com.chartboost.sdk.Model.CBError.CBClickError.URI_INVALID, null);
                }
                com.chartboost.sdk.Tracking.a.b(a1.q().e(), a1.d, a1.p());
            }

            public void b(com.chartboost.sdk.Model.a a1)
            {
                if (a1.b == com.chartboost.sdk.Model.a.b.c)
                {
                    e e1 = Chartboost.e();
                    if (e1 != null)
                    {
                        e1.b(a1);
                    }
                }
                com.chartboost.sdk.Tracking.a.c(a1.q().e(), a1.d, a1.p());
            }

            public void c(com.chartboost.sdk.Model.a a1)
            {
                a1.l = true;
                if (a1.c == com.chartboost.sdk.Model.a.c.c && com.chartboost.sdk.b.d() != null)
                {
                    com.chartboost.sdk.b.d().didCompleteRewardedVideo(a1.d, a1.w().f("reward"));
                }
                com.chartboost.sdk.c.a(a1);
            }

            public void d(com.chartboost.sdk.Model.a a1)
            {
                a1.m = true;
            }

            
            {
                a = c.this;
                super();
            }
        };
        b = new com.chartboost.sdk.impl.bc.a() {

            final c a;

            public void a(com.chartboost.sdk.Model.a a1, boolean flag, String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror, b b1)
            {
                if (a1 != null)
                {
                    a1.o = false;
                    if (a1.a())
                    {
                        a1.b = com.chartboost.sdk.Model.a.b.e;
                    }
                }
                if (!flag)
                {
                    if (com.chartboost.sdk.b.d() != null)
                    {
                        com.chartboost.sdk.b.d().didFailToRecordClick(s, cbclickerror);
                    }
                } else
                {
                    if (a1 != null && a1.n != null)
                    {
                        a1.n.a(true);
                        a1.n.s();
                        return;
                    }
                    if (b1 != null)
                    {
                        b1.a();
                        return;
                    }
                }
            }

            
            {
                a = c.this;
                super();
            }
        };
        e = bc.a(b);
    }

    public static c a()
    {
        if (d == null)
        {
            d = new c();
        }
        return d;
    }

    static void a(com.chartboost.sdk.Model.a a1)
    {
        b(a1);
    }

    private static void b(com.chartboost.sdk.Model.a a1)
    {
        com/chartboost/sdk/c;
        JVM INSTR monitorenter ;
        ai ai1 = null;
        ba ba1;
        if (a1.l() != null)
        {
            ai1 = (ai)a1.x();
        }
        ba1 = new ba("/api/video-complete");
        ba1.a("location", a1.d);
        ba1.a("reward", a1.w().e("reward"));
        ba1.a("currency-name", a1.w().e("currency-name"));
        ba1.a("ad_id", a1.p());
        ba1.a("force_close", Boolean.valueOf(false));
        if (ai1 == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        float f;
        float f1;
        f = ai1.v();
        f1 = ai1.u();
        CBLogging.a(a1.q().getClass().getSimpleName(), String.format("TotalDuration: %f PlaybackTime: %f", new Object[] {
            Float.valueOf(f1), Float.valueOf(f)
        }));
        ba1.a("total_time", Float.valueOf(f1 / 1000F));
        if (f >= 0.0F)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        ba1.a("playback_time", Float.valueOf(f1 / 1000F));
_L1:
        ba1.a(true);
        ba1.s();
        com/chartboost/sdk/c;
        JVM INSTR monitorexit ;
        return;
        ba1.a("playback_time", Float.valueOf(f / 1000F));
          goto _L1
        a1;
        throw a1;
    }

    public final void a(Activity activity, com.chartboost.sdk.Model.a a1)
    {
        if (a1 == null) goto _L2; else goto _L1
_L1:
        static class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[com.chartboost.sdk.Model.a.b.values().length];
                try
                {
                    a[com.chartboost.sdk.Model.a.b.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.chartboost.sdk.Model.a.b.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.chartboost.sdk.Model.a.b.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.chartboost.sdk.Model.a.b.c.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        com.chartboost.sdk._cls4.a[a1.b.ordinal()];
        JVM INSTR tableswitch 1 4: default 44
    //                   1 45
    //                   2 57
    //                   3 57
    //                   4 62;
           goto _L2 _L3 _L4 _L4 _L5
_L2:
        return;
_L3:
        if (a1.i)
        {
            com.chartboost.sdk.Chartboost.a(a1);
            return;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        com.chartboost.sdk.Chartboost.a(a1);
        return;
_L5:
        if (!a1.h())
        {
            activity = Chartboost.e();
            if (activity != null)
            {
                CBLogging.b(c, (new StringBuilder()).append("Error onActivityStart ").append(a1.b.name()).toString());
                activity.d(a1);
                return;
            }
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public final void a(com.chartboost.sdk.Model.a a1, String s, b b1)
    {
        e.a(a1, s, Chartboost.getHostActivity(), b1);
    }

    public final void b(com.chartboost.sdk.Model.a a1, String s, b b1)
    {
        com.chartboost.sdk.b.c = new a(a1, s, b1) {

            final com.chartboost.sdk.Model.a a;
            final String b;
            final b c;
            final c d;

            public void a(boolean flag)
            {
                com.chartboost.sdk.Chartboost.a(new Runnable(this, flag) {

                    final boolean a;
                    final _cls1 b;

                    public void run()
                    {
                        if (a)
                        {
                            b.d.a(b.a, b.b, b.c);
                            return;
                        } else
                        {
                            b.d.b.a(b.a, false, b.b, com.chartboost.sdk.Model.CBError.CBClickError.AGE_GATE_FAILURE, b.c);
                            return;
                        }
                    }

            
            {
                b = _pcls1;
                a = flag;
                super();
            }
                });
            }

            
            {
                d = c.this;
                a = a1;
                b = s;
                c = b1;
                super();
            }
        };
        if (!com.chartboost.sdk.b.q())
        {
            a(a1, s, b1);
        } else
        if (com.chartboost.sdk.b.d() != null)
        {
            com.chartboost.sdk.b.d().didPauseClickForConfirmation();
            if (a1 != null)
            {
                a1.o = false;
                return;
            }
        }
    }

    protected final boolean b()
    {
        if (c() == null)
        {
            return false;
        } else
        {
            a.b(c());
            return true;
        }
    }

    protected final com.chartboost.sdk.Model.a c()
    {
        Object obj = Chartboost.e();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((e) (obj)).d();
        }
        if (obj == null)
        {
            return null;
        } else
        {
            return ((bq) (obj)).h();
        }
    }

    public ba d()
    {
        ba ba1 = new ba("/api/click");
        Activity activity = Chartboost.c();
        Object obj = activity;
        if (activity == null)
        {
            obj = Chartboost.getValidContext();
        }
        ba1.b(((android.content.Context) (obj)));
        return ba1;
    }

}
