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
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Model.a;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            ah, ba, bl, ap, 
//            be, am, ag, ak, 
//            al, bk, bm

public class ai extends ah
{
    public class a extends ah.a
    {

        final ai e;
        private bl i;
        private ap j;
        private am k;
        private ag l;
        private ak m;
        private bl n;

        static ak a(a a1)
        {
            return a1.m;
        }

        static void a(a a1, boolean flag)
        {
            a1.d(flag);
        }

        private void a(b b1, boolean flag)
        {
            e.k = b1;
            static class _cls2
            {

                static final int a[];

                static 
                {
                    a = new int[b.values().length];
                    try
                    {
                        a[com.chartboost.sdk.impl.b.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[b.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[b.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            com.chartboost.sdk.impl._cls2.a[b1.ordinal()];
            JVM INSTR tableswitch 1 3: default 44
        //                       1 167
        //                       2 297
        //                       3 405;
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
            if (b1 != com.chartboost.sdk.impl.b.a)
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
            if (ai.p(e).e == com.chartboost.sdk.Model.a.d.c)
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
            if (ai.q(e).e == com.chartboost.sdk.Model.a.d.c)
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
            if (ai.r(e).e == com.chartboost.sdk.Model.a.d.c)
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

        static ap b(a a1)
        {
            return a1.j;
        }

        static void b(a a1, boolean flag)
        {
            a1.c(flag);
        }

        private void c(boolean flag)
        {
            if (e.k != b.b)
            {
                if (e.q)
                {
                    com.chartboost.sdk.Tracking.a.b("integrated", e.G);
                    a(com.chartboost.sdk.impl.b.a, flag);
                    return;
                }
                a(b.b, flag);
                if (e.l < 1 && e.F.a("timer").c("delay"))
                {
                    String s1;
                    long l1;
                    if (e.p)
                    {
                        s1 = "visible";
                    } else
                    {
                        s1 = "hidden";
                    }
                    CBLogging.c("InterstitialVideoViewProtocol", String.format("controls starting %s, setting timer", new Object[] {
                        s1
                    }));
                    j.a(e.p);
                    l1 = Math.round(1000D * e.F.a("timer").g("delay"));
                    com.chartboost.sdk.impl.ai.a(e, j, new Runnable(this) {

                        final a a;

                        public void run()
                        {
                            Object obj;
                            boolean flag;
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
                            obj = a.b(a);
                            if (!a.e.p)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            ((ap) (obj)).a(flag, true);
                            a.e.h.remove(Integer.valueOf(a.b(a).hashCode()));
                        }

            
            {
                a = a1;
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
            if (e.k == b.b && flag)
            {
                if (e.l < 1 && e.F.c("post-video-reward-toaster") && e.s && e.A.e() && e.B.e())
                {
                    e(true);
                }
                a(b.c, true);
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
            com.chartboost.sdk.f.a.postDelayed(new Runnable(this) {

                final a a;

                public void run()
                {
                    com.chartboost.sdk.impl.a.a(a).a(false);
                }

            
            {
                a = a1;
                super();
            }
            }, 2500L);
        }

        protected void a(float f1, float f2)
        {
            if (e.p && e.k == b.b || e.k == com.chartboost.sdk.impl.b.a)
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
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            android.widget.RelativeLayout.LayoutParams layoutparams4 = (android.widget.RelativeLayout.LayoutParams)f.getLayoutParams();
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
            layoutparams4 = (android.widget.RelativeLayout.LayoutParams)b.getLayoutParams();
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
                android.widget.RelativeLayout.LayoutParams layoutparams5 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
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
            if (ai.m(e).e == com.chartboost.sdk.Model.a.d.c)
            {
                k.setLayoutParams(layoutparams1);
            }
            j.setLayoutParams(layoutparams2);
            l.setLayoutParams(layoutparams3);
            i.setLayoutParams(layoutparams);
            if (ai.n(e).e == com.chartboost.sdk.Model.a.d.c)
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
            if (e.k == com.chartboost.sdk.impl.b.a && (!e.q || e.m()))
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
            if (e.k == b.b && e.l < 1)
            {
                com.chartboost.sdk.Libraries.e.a a1 = ai.s(e);
                StringBuilder stringbuilder = (new StringBuilder()).append("close-");
                float f1;
                String s1;
                int i1;
                if (e.a().b())
                {
                    s1 = "portrait";
                } else
                {
                    s1 = "landscape";
                }
                f1 = a1.a(stringbuilder.append(s1).toString()).a("delay").a(-1F);
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
            if (e.k == b.b && e.F.a("cancel-popup").c("title") && e.F.a("cancel-popup").c("text") && e.F.a("cancel-popup").c("cancel") && e.F.a("cancel-popup").c("confirm"))
            {
                j.g();
                if (e.l < 1)
                {
                    e.n();
                    return;
                }
            }
            if (e.k == b.b)
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
            com.chartboost.sdk.f.a.post(new Runnable(this) {

                final a a;

                public void run()
                {
                    ai.u(a.e);
                }

            
            {
                a = a1;
                super();
            }
            });
            com.chartboost.sdk.Tracking.a.b(e.m, e.G, e.u);
        }

        protected void h()
        {
            if (e.k == b.b)
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

        private a(Context context)
        {
            e = ai.this;
            super(ai.this, context);
            if (com.chartboost.sdk.impl.ai.a(ai.this).e == com.chartboost.sdk.Model.a.d.c)
            {
                k = new am(context, ai.this);
                k.setVisibility(8);
                addView(k);
            }
            j = new ap(context, ai.this);
            j.setVisibility(8);
            addView(j);
            l = new ag(context, ai.this);
            l.setVisibility(8);
            addView(l);
            if (ai.b(ai.this).e == com.chartboost.sdk.Model.a.d.c)
            {
                m = new ak(context, ai.this);
                m.setVisibility(8);
                addView(m);
            }
            i = new _cls1(this, getContext(), ai.this);
            i.setVisibility(8);
            addView(i);
            n = new _cls2(this, getContext(), ai.this);
            n.setVisibility(8);
            addView(n);
            if (F.a("progress").c("background-color") && F.a("progress").c("border-color") && F.a("progress").c("progress-color") && F.a("progress").c("radius"))
            {
                context = j.c();
                context.a(com.chartboost.sdk.f.a(F.a("progress").e("background-color")));
                context.b(com.chartboost.sdk.f.a(F.a("progress").e("border-color")));
                context.c(com.chartboost.sdk.f.a(F.a("progress").e("progress-color")));
                context.b(F.a("progress").a("radius").j());
            }
            if (F.a("video-controls-background").c("color"))
            {
                j.a(com.chartboost.sdk.f.a(F.a("video-controls-background").e("color")));
            }
            if (ai.e(ai.this).e == com.chartboost.sdk.Model.a.d.c && r)
            {
                l.a(F.a("post-video-toaster").e("title"), F.a("post-video-toaster").e("tagline"));
            }
            if (com.chartboost.sdk.impl.ai.f(ai.this).e == com.chartboost.sdk.Model.a.d.c && q)
            {
                k.a(F.a("confirmation").e("text"), com.chartboost.sdk.f.a(F.a("confirmation").e("color")));
            }
            if (ai.g(ai.this).e == com.chartboost.sdk.Model.a.d.c && s)
            {
                com.chartboost.sdk.Libraries.e.a a1;
                boolean flag;
                if (F.a("post-video-reward-toaster").a("position").equals("inside-top"))
                {
                    context = com.chartboost.sdk.impl.an.a.a;
                } else
                {
                    context = an.a.b;
                }
                m.a(context);
                m.a(F.a("post-video-reward-toaster").e("text"));
                if (A.e())
                {
                    m.a(C);
                }
            }
            if (com.chartboost.sdk.impl.ai.h(ai.this).a("video-click-button").b())
            {
                j.d();
            }
            j.c(F.i("video-progress-timer-enabled"));
            flag = ai.this.a().b();
            a1 = ai.i(ai.this);
            if (flag)
            {
                context = "video-portrait";
            } else
            {
                context = "video-landscape";
            }
            ai.this.m = a1.a(context).e("id");
            j.a(com.chartboost.sdk.impl.be.a(ai.this.m));
        }

    }

    protected static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        private static final b d[];

        public static b valueOf(String s1)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/ai$b, s1);
        }

        public static b[] values()
        {
            return (b[])d.clone();
        }

        static 
        {
            a = new b("REWARD_OFFER", 0);
            b = new b("VIDEO_PLAYING", 1);
            c = new b("POST_VIDEO", 2);
            d = (new b[] {
                a, b, c
            });
        }

        private b(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    protected j A;
    protected j B;
    protected j C;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    protected b k;
    protected int l;
    protected String m;
    protected int n;
    protected int o;
    protected boolean p;
    protected boolean q;
    protected boolean r;
    protected boolean s;
    protected boolean t;
    protected int u;
    protected j v;
    protected j w;
    protected j x;
    protected j y;
    protected j z;

    public ai(com.chartboost.sdk.Model.a a1)
    {
        super(a1);
        k = com.chartboost.sdk.impl.b.a;
        I = true;
        J = false;
        K = false;
        n = 0;
        o = 0;
        L = false;
        M = false;
        t = false;
        u = 0;
        k = com.chartboost.sdk.impl.b.a;
        v = new j(this);
        w = new j(this);
        x = new j(this);
        y = new j(this);
        z = new j(this);
        A = new j(this);
        B = new j(this);
        C = new j(this);
        l = 0;
    }

    static com.chartboost.sdk.Model.a a(ai ai1)
    {
        return ai1.f;
    }

    static void a(ai ai1, View view, Runnable runnable, long l1)
    {
        ai1.a(view, runnable, l1);
    }

    static com.chartboost.sdk.Model.a b(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a c(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a d(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a e(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a f(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a g(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Libraries.e.a h(ai ai1)
    {
        return ai1.e;
    }

    static com.chartboost.sdk.Libraries.e.a i(ai ai1)
    {
        return ai1.e;
    }

    static boolean j(ai ai1)
    {
        return ai1.M;
    }

    static void k(ai ai1)
    {
        ai1.w();
    }

    static com.chartboost.sdk.Model.a l(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a m(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a n(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a o(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a p(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a q(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Model.a r(ai ai1)
    {
        return ai1.f;
    }

    static com.chartboost.sdk.Libraries.e.a s(ai ai1)
    {
        return ai1.e;
    }

    static com.chartboost.sdk.Model.a t(ai ai1)
    {
        return ai1.f;
    }

    static void u(ai ai1)
    {
        ai1.h();
    }

    static com.chartboost.sdk.Model.a v(ai ai1)
    {
        return ai1.f;
    }

    private void w()
    {
        com.chartboost.sdk.Libraries.h.c().b(Integer.toString(f.hashCode()));
    }

    static void w(ai ai1)
    {
        ai1.h();
    }

    private void x()
    {
        float f1 = n;
        float f2 = o;
        ba ba1 = new ba("/api/video-complete");
        ba1.b(null);
        ba1.a("location", f.d);
        ba1.a("reward", f.w().e("reward"));
        ba1.a("currency-name", f.w().e("currency-name"));
        ba1.a("ad_id", f.p());
        ba1.a("total_time", Float.valueOf(f2 / 1000F));
        ba1.a("playback_time", Float.valueOf(f1 / 1000F));
        ba1.a("force_close", Boolean.valueOf(true));
        com.chartboost.sdk.Libraries.h.c().a(Integer.toString(f.hashCode()), ba1.t());
    }

    public void a(boolean flag)
    {
        L = flag;
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (!super.a(a1))
        {
            return false;
        }
        if (e.b("video-landscape") || e.b("replay-landscape"))
        {
            j = false;
        }
        v.a("replay-landscape");
        w.a("replay-portrait");
        z.a("video-click-button");
        A.a("post-video-reward-icon");
        B.a("post-video-button");
        x.a("video-confirmation-button");
        y.a("video-confirmation-icon");
        C.a("post-video-reward-icon");
        p = a1.a("ux").i("video-controls-togglable");
        if (f.e == com.chartboost.sdk.Model.a.d.c && F.a("post-video-toaster").c("title") && F.a("post-video-toaster").c("tagline"))
        {
            r = true;
        }
        if (f.e == com.chartboost.sdk.Model.a.d.c && F.a("confirmation").c("text") && F.a("confirmation").c("color"))
        {
            q = true;
        }
        if (f.e == com.chartboost.sdk.Model.a.d.c && F.c("post-video-reward-toaster"))
        {
            s = true;
        }
        return true;
    }

    protected com.chartboost.sdk.f.a b(Context context)
    {
        return new a(context);
    }

    public void d()
    {
        super.d();
        v.d();
        w.d();
        z.d();
        A.d();
        B.d();
        x.d();
        y.d();
        C.d();
        v = null;
        w = null;
        z = null;
        A = null;
        B = null;
        x = null;
        y = null;
        C = null;
    }

    public com.chartboost.sdk.f.a e()
    {
        return p();
    }

    protected void i()
    {
        if (q && (!x.e() || !y.e()))
        {
            q = false;
        }
        if (I)
        {
            super.i();
            return;
        } else
        {
            a(com.chartboost.sdk.Model.CBError.CBImpressionError.ERROR_DISPLAYING_VIEW);
            return;
        }
    }

    public boolean j()
    {
        if (p().b(true).getVisibility() == 4 || p().b(true).getVisibility() == 8)
        {
            return true;
        } else
        {
            p().g();
            return true;
        }
    }

    public void k()
    {
        super.k();
        if (k == b.b && J)
        {
            a.b(p()).b().a(n);
            if (!K)
            {
                a.b(p()).e();
            }
        }
        K = false;
        J = false;
    }

    public void l()
    {
        super.l();
        if (k == b.b && !J)
        {
            if (!a.b(p()).i())
            {
                K = true;
            }
            J = true;
            a.b(p()).g();
            if (l < 1 && L)
            {
                x();
            }
        }
    }

    public boolean m()
    {
        return f.e == com.chartboost.sdk.Model.a.d.b;
    }

    public void n()
    {
        bm.a a1 = new bm.a();
        a1.a(F.a("cancel-popup").e("title")).b(F.a("cancel-popup").e("text")).d(F.a("cancel-popup").e("confirm")).c(F.a("cancel-popup").e("cancel"));
        a1.a(p().getContext(), new bm.b() {

            final ai a;

            public void a(bm bm)
            {
                bm = a.p();
                if (bm != null)
                {
                    a.b(bm).e();
                }
            }

            public void a(bm bm, int i1)
            {
                bm = a.p();
                if (i1 == 1)
                {
                    if (bm != null)
                    {
                        a.b(bm).e();
                    }
                    return;
                }
                if (bm != null)
                {
                    com.chartboost.sdk.impl.a.a(bm, false);
                    a.b(bm).h();
                }
                ai.w(a);
            }

            
            {
                a = ai.this;
                super();
            }
        });
    }

    public boolean o()
    {
        return k == b.b;
    }

    public a p()
    {
        return (a)super.e();
    }

    protected void q()
    {
        f.r();
    }

    protected boolean r()
    {
        return CBUtility.c().b() && k != b.c;
    }

    public boolean s()
    {
        return L;
    }

    public void t()
    {
        M = true;
        be.b(m);
        a(com.chartboost.sdk.Model.CBError.CBImpressionError.ERROR_PLAYING_VIDEO);
    }

    public int u()
    {
        return o;
    }

    public int v()
    {
        return n;
    }

    // Unreferenced inner class com/chartboost/sdk/impl/ai$a$1

/* anonymous class */
    class a._cls1 extends bl
    {

        final ai a;
        final a b;

        protected void a(MotionEvent motionevent)
        {
            if (ai.c(b.e).e == com.chartboost.sdk.Model.a.d.c)
            {
                com.chartboost.sdk.impl.a.a(b).a(false);
            }
            if (b.e.k == b.b)
            {
                com.chartboost.sdk.impl.a.a(b, false);
            }
            com.chartboost.sdk.Tracking.a.c(b.e.m, ai.d(b.e).p());
            a.b(b, true);
        }

            
            {
                b = a1;
                a = ai1;
                super(context);
            }
    }


    // Unreferenced inner class com/chartboost/sdk/impl/ai$a$2

/* anonymous class */
    class a._cls2 extends bl
    {

        final ai a;
        final a b;

        protected void a(MotionEvent motionevent)
        {
            b.g();
        }

            
            {
                b = a1;
                a = ai1;
                super(context);
            }
    }

}
