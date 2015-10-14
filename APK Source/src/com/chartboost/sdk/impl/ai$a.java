// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.f;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            ai, am, ap, ag, 
//            ak, bl, al, be, 
//            bk

public class <init> extends <init>
{

    final ai e;
    private bl i;
    private ap j;
    private am k;
    private ag l;
    private ak m;
    private bl n;

    static ak a(<init> <init>1)
    {
        return <init>1.m;
    }

    static void a(m m1, boolean flag)
    {
        m1.d(flag);
    }

    private void a(d d1, boolean flag)
    {
        e.k = d1;
        com.chartboost.sdk.impl.a[d1.ordinal()];
        JVM INSTR tableswitch 1 3: default 44
    //                   1 167
    //                   2 297
    //                   3 405;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_405;
_L5:
        boolean flag1 = f();
        Object obj = b(true);
        ((View) (obj)).setEnabled(flag1);
        e.a(flag1, ((View) (obj)), flag);
        obj = b(false);
        ((View) (obj)).setEnabled(false);
        e.a(false, ((View) (obj)), flag);
        obj = e;
        if (!e.r())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((ai) (obj)).a(flag1, c, flag);
        obj = e;
        if (!e.r())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((ai) (obj)).a(flag1, f, flag);
        if (d1 != com.chartboost.sdk.impl.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
        return;
_L2:
        obj = e;
        if (!e.r())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((ai) (obj)).a(flag1, b, flag);
        if (ai.p(e).e == com.chartboost.sdk.Model.)
        {
            e.a(true, k, flag);
        }
        e.a(false, j, flag);
        e.a(false, i, flag);
        e.a(false, l, flag);
        b.setEnabled(false);
        i.setEnabled(false);
        j.setEnabled(false);
          goto _L5
_L3:
        e.a(false, b, flag);
        if (ai.q(e).e == com.chartboost.sdk.Model.)
        {
            e.a(false, k, flag);
        }
        e.a(true, j, flag);
        e.a(false, i, flag);
        e.a(false, l, flag);
        b.setEnabled(true);
        i.setEnabled(false);
        j.setEnabled(true);
          goto _L5
        e.a(true, b, flag);
        if (ai.r(e).e == com.chartboost.sdk.Model.)
        {
            e.a(false, k, flag);
        }
        e.a(false, j, flag);
        e.a(true, i, flag);
        if (e.B.e() && e.A.e() && e.r)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        e.a(flag1, l, flag);
        i.setEnabled(true);
        b.setEnabled(true);
        j.setEnabled(false);
        if (e.t)
        {
            e(false);
        }
          goto _L5
    }

    static ap b(e e1)
    {
        return e1.j;
    }

    static void b(j j1, boolean flag)
    {
        j1.c(flag);
    }

    private void c(boolean flag)
    {
        if (e.k != b)
        {
            if (e.q)
            {
                com.chartboost.sdk.Tracking.a.b("integrated", e.G);
                a(com.chartboost.sdk.impl.a, flag);
                return;
            }
            a(b, flag);
            if (e.l < 1 && e.F.("timer").("delay"))
            {
                String s;
                long l1;
                if (e.p)
                {
                    s = "visible";
                } else
                {
                    s = "hidden";
                }
                CBLogging.c("InterstitialVideoViewProtocol", String.format("controls starting %s, setting timer", new Object[] {
                    s
                }));
                j.a(e.p);
                l1 = Math.round(1000D * e.F.("timer").("delay"));
                com.chartboost.sdk.impl.ai.a(e, j, new Runnable() {

                    final ai.a a;

                    public void run()
                    {
                        Object obj;
                        boolean flag1;
                        if (a.e.p)
                        {
                            obj = "hidden";
                        } else
                        {
                            obj = "shown";
                        }
                        CBLogging.c("InterstitialVideoViewProtocol", String.format("controls %s automatically from timer", new Object[] {
                            obj
                        }));
                        obj = ai.a.b(a);
                        if (!a.e.p)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        ((ap) (obj)).a(flag1, true);
                        a.e.h.remove(Integer.valueOf(ai.a.b(a).hashCode()));
                    }

            
            {
                a = ai.a.this;
                super();
            }
                }, l1);
            } else
            {
                ap ap1 = j;
                if (!e.p)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                ap1.a(flag);
            }
            com.chartboost.sdk.Tracking.a.a(e.m, e.G, e.l);
            j.e();
            if (e.l <= 1)
            {
                ai.o(e).g();
                return;
            }
        }
    }

    private void d(boolean flag)
    {
        j.f();
        com.chartboost.sdk.Tracking.a.d(e.m, e.G);
        break MISSING_BLOCK_LABEL_24;
        if (e.k == b && flag)
        {
            if (e.l < 1 && e.F.("post-video-reward-toaster") && e.s && e.A.e() && e.B.e())
            {
                e(true);
            }
            a(c, true);
            if (CBUtility.c().b())
            {
                requestLayout();
                return;
            }
        }
        return;
    }

    private void e(boolean flag)
    {
        if (flag)
        {
            m.a(true);
        } else
        {
            m.setVisibility(0);
        }
        f.a.postDelayed(new Runnable() {

            final ai.a a;

            public void run()
            {
                com.chartboost.sdk.impl.ai.a.a(a).a(false);
            }

            
            {
                a = ai.a.this;
                super();
            }
        }, 2500L);
    }

    protected void a(float f1, float f2)
    {
        if (e.p && e.k == b || e.k == com.chartboost.sdk.impl.a)
        {
            return;
        } else
        {
            h();
            com.chartboost.sdk.Tracking.a.a("insterstitial", e.m, ai.v(e).p(), (int)f1, (int)f2);
            return;
        }
    }

    protected void a(int i1, int j1)
    {
        super.a(i1, j1);
        a(e.k, false);
        boolean flag = e.a().b();
        android.widget.iveLayout.LayoutParams layoutparams = new android.widget.iveLayout.LayoutParams(-2, -2);
        android.widget.iveLayout.LayoutParams layoutparams1 = new android.widget.iveLayout.LayoutParams(-1, -1);
        android.widget.iveLayout.LayoutParams layoutparams2 = new android.widget.iveLayout.LayoutParams(-1, -1);
        android.widget.iveLayout.LayoutParams layoutparams3 = new android.widget.iveLayout.LayoutParams(-1, -1);
        android.widget.iveLayout.LayoutParams layoutparams4 = (android.widget.iveLayout.LayoutParams)f.getLayoutParams();
        ai ai1 = e;
        float f1;
        Object obj;
        int k1;
        int l1;
        if (flag)
        {
            obj = e.w;
        } else
        {
            obj = e.v;
        }
        ai1.a(layoutparams, ((j) (obj)), 1.0F);
        ai1 = e;
        if (flag)
        {
            obj = "replay-portrait";
        } else
        {
            obj = "replay-landscape";
        }
        obj = ai1.b(((String) (obj)));
        k1 = Math.round(((float)layoutparams4.leftMargin + (float)layoutparams4.width / 2.0F + (float)((Point) (obj)).x) - (float)layoutparams.width / 2.0F);
        f1 = layoutparams4.topMargin;
        l1 = Math.round(((float)layoutparams4.height / 2.0F + f1 + (float)((Point) (obj)).y) - (float)layoutparams.height / 2.0F);
        layoutparams.leftMargin = Math.min(Math.max(0, k1), i1 - layoutparams.width);
        layoutparams.topMargin = Math.min(Math.max(0, l1), j1 - layoutparams.height);
        i.bringToFront();
        if (flag)
        {
            i.a(e.w);
        } else
        {
            i.a(e.v);
        }
        layoutparams4 = (android.widget.iveLayout.LayoutParams)b.getLayoutParams();
        if (!e.r())
        {
            layoutparams1.width = layoutparams4.width;
            layoutparams1.height = layoutparams4.height;
            layoutparams1.leftMargin = layoutparams4.leftMargin;
            layoutparams1.topMargin = layoutparams4.topMargin;
            layoutparams2.width = layoutparams4.width;
            layoutparams2.height = layoutparams4.height;
            layoutparams2.leftMargin = layoutparams4.leftMargin;
            layoutparams2.topMargin = layoutparams4.topMargin;
        } else
        {
            android.widget.iveLayout.LayoutParams layoutparams5 = new android.widget.iveLayout.LayoutParams(-2, -2);
            j j2;
            if (flag)
            {
                j2 = e.D;
            } else
            {
                j2 = e.E;
            }
            e.a(layoutparams5, j2, 1.0F);
            layoutparams5.leftMargin = 0;
            layoutparams5.topMargin = 0;
            layoutparams5.addRule(11);
            n.setLayoutParams(layoutparams5);
            n.a(j2);
        }
        layoutparams3.width = layoutparams4.width;
        layoutparams3.height = 72;
        layoutparams3.leftMargin = layoutparams4.leftMargin;
        i1 = layoutparams4.topMargin;
        layoutparams3.topMargin = (layoutparams4.height + i1) - 72;
        if (ai.m(e).e == com.chartboost.sdk.Model.)
        {
            k.setLayoutParams(layoutparams1);
        }
        j.setLayoutParams(layoutparams2);
        l.setLayoutParams(layoutparams3);
        i.setLayoutParams(layoutparams);
        if (ai.n(e).e == com.chartboost.sdk.Model.)
        {
            k.a();
        }
        j.a();
    }

    public bl b(boolean flag)
    {
        if (e.r() && flag || !e.r() && !flag)
        {
            return n;
        } else
        {
            return g;
        }
    }

    public void b()
    {
        e.l();
        super.b();
    }

    protected void d()
    {
        super.d();
        if (e.k == com.chartboost.sdk.impl.a && (!e.q || e.m()))
        {
            c(false);
            return;
        } else
        {
            a(e.k, false);
            return;
        }
    }

    public void e()
    {
        d(true);
        j.h();
        ai ai1 = e;
        ai1.l = ai1.l + 1;
        if (e.l <= 1 && !com.chartboost.sdk.impl.ai.j(e))
        {
            ai.k(e);
            if (e.n >= 1)
            {
                ai.l(e).f();
            }
        }
    }

    protected boolean f()
    {
        if (e.k == b && e.l < 1)
        {
            com.chartboost.sdk.Libraries.s s1 = ai.s(e);
            StringBuilder stringbuilder = (new StringBuilder()).append("close-");
            float f1;
            String s;
            int i1;
            if (e.a().b())
            {
                s = "portrait";
            } else
            {
                s = "landscape";
            }
            f1 = s1.(stringbuilder.append(s).toString()).("delay").(-1F);
            if (f1 >= 0.0F)
            {
                i1 = Math.round(f1 * 1000F);
            } else
            {
                i1 = -1;
            }
            e.u = i1;
            if (i1 >= 0)
            {
                if (i1 > j.b().d())
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    protected void g()
    {
        if (e.k == b && e.F.("cancel-popup").("title") && e.F.("cancel-popup").("text") && e.F.("cancel-popup").("cancel") && e.F.("cancel-popup").("confirm"))
        {
            j.g();
            if (e.l < 1)
            {
                e.n();
                return;
            }
        }
        if (e.k == b)
        {
            d(false);
            j.h();
            if (e.l < 1)
            {
                ai ai1 = e;
                ai1.l = ai1.l + 1;
                ai.k(e);
                ai.t(e).f();
            }
        }
        f.a.post(new Runnable() {

            final ai.a a;

            public void run()
            {
                ai.u(a.e);
            }

            
            {
                a = ai.a.this;
                super();
            }
        });
        com.chartboost.sdk.Tracking.a.b(e.m, e.G, e.u);
    }

    protected void h()
    {
        if (e.k == b)
        {
            d(false);
        }
        e.a(null, null);
    }

    protected void i()
    {
        com.chartboost.sdk.Tracking.a.d("integrated", e.G, true);
        e.q = false;
        c(true);
    }

    private ging(ai ai1, Context context)
    {
        e = ai1;
        super(ai1, context);
        if (com.chartboost.sdk.impl.ai.a(ai1).e == com.chartboost.sdk.Model.)
        {
            k = new am(context, ai1);
            k.setVisibility(8);
            addView(k);
        }
        j = new ap(context, ai1);
        j.setVisibility(8);
        addView(j);
        l = new ag(context, ai1);
        l.setVisibility(8);
        addView(l);
        if (ai.b(ai1).e == com.chartboost.sdk.Model.)
        {
            m = new ak(context, ai1);
            m.setVisibility(8);
            addView(m);
        }
        i = new bl(getContext(), ai1) {

            final ai a;
            final ai.a b;

            protected void a(MotionEvent motionevent)
            {
                if (ai.c(b.e).e == com.chartboost.sdk.Model.a.d.c)
                {
                    com.chartboost.sdk.impl.ai.a.a(b).a(false);
                }
                if (b.e.k == ai.b.b)
                {
                    com.chartboost.sdk.impl.ai.a.a(b, false);
                }
                com.chartboost.sdk.Tracking.a.c(b.e.m, ai.d(b.e).p());
                ai.a.b(b, true);
            }

            
            {
                b = ai.a.this;
                a = ai1;
                super(context);
            }
        };
        i.setVisibility(8);
        addView(i);
        n = new bl(getContext(), ai1) {

            final ai a;
            final ai.a b;

            protected void a(MotionEvent motionevent)
            {
                b.g();
            }

            
            {
                b = ai.a.this;
                a = ai1;
                super(context);
            }
        };
        n.setVisibility(8);
        addView(n);
        if (ai1.F.("progress").("background-color") && ai1.F.("progress").("border-color") && ai1.F.("progress").("progress-color") && ai1.F.("progress").("radius"))
        {
            context = j.c();
            context.a(com.chartboost.sdk.f.a(ai1.F.("progress").("background-color")));
            context.b(com.chartboost.sdk.f.a(ai1.F.("progress").("border-color")));
            context.c(com.chartboost.sdk.f.a(ai1.F.("progress").("progress-color")));
            context.b(ai1.F.("progress").("radius").());
        }
        if (ai1.F.("video-controls-background").("color"))
        {
            j.a(com.chartboost.sdk.f.a(ai1.F.("video-controls-background").("color")));
        }
        if (ai.e(ai1).e == com.chartboost.sdk.Model. && ai1.r)
        {
            l.a(ai1.F.("post-video-toaster").("title"), ai1.F.("post-video-toaster").("tagline"));
        }
        if (com.chartboost.sdk.impl.ai.f(ai1).e == com.chartboost.sdk.Model. && ai1.q)
        {
            k.a(ai1.F.("confirmation").("text"), com.chartboost.sdk.f.a(ai1.F.("confirmation").("color")));
        }
        if (ai.g(ai1).e == com.chartboost.sdk.Model. && ai1.s)
        {
            com.chartboost.sdk.Libraries.ging ging;
            boolean flag;
            if (ai1.F.("post-video-reward-toaster").("position").quals("inside-top"))
            {
                context = com.chartboost.sdk.impl.a;
            } else
            {
                context = b;
            }
            m.a(context);
            m.a(ai1.F.("post-video-reward-toaster").("text"));
            if (ai1.A.e())
            {
                m.a(ai1.C);
            }
        }
        if (ai.h(ai1).("video-click-button").())
        {
            j.d();
        }
        j.c(ai1.F.("video-progress-timer-enabled"));
        flag = ai1.a().b();
        ging = ai.i(ai1);
        if (flag)
        {
            context = "video-portrait";
        } else
        {
            context = "video-landscape";
        }
        ai1.m = ging.(context).("id");
        j.a(com.chartboost.sdk.impl.be.a(ai1.m));
    }

    j(ai ai1, Context context, j j1)
    {
        this(ai1, context);
    }
}
