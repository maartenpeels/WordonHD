// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Tracking.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            ai, bh, ao, bl, 
//            al

public final class ap extends RelativeLayout
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    private static final CharSequence a = "00:00";
    private static Handler l = CBUtility.e();
    private RelativeLayout b;
    private ao c;
    private ao d;
    private bl e;
    private TextView f;
    private al g;
    private bh h;
    private ai i;
    private boolean j;
    private boolean k;
    private Runnable m;
    private Runnable n;
    private Runnable o;

    public ap(Context context, ai ai1)
    {
        super(context);
        j = false;
        k = false;
        m = new Runnable() {

            final ap a;

            public void run()
            {
                com.chartboost.sdk.impl.ap.a(a, false);
            }

            
            {
                a = ap.this;
                super();
            }
        };
        n = new Runnable() {

            final ap a;

            public void run()
            {
                if (ap.b(a) != null)
                {
                    ap.b(a).setVisibility(8);
                }
                ap.c(a).setVisibility(8);
                ap.d(a).setVisibility(8);
                if (com.chartboost.sdk.impl.ap.e(a) != null)
                {
                    com.chartboost.sdk.impl.ap.e(a).setEnabled(false);
                }
            }

            
            {
                a = ap.this;
                super();
            }
        };
        o = new Runnable() {

            final ap a;
            private int b;

            public void run()
            {
                if (com.chartboost.sdk.impl.ap.f(a).b().e())
                {
                    int i1 = com.chartboost.sdk.impl.ap.f(a).b().d();
                    if (i1 > 0)
                    {
                        com.chartboost.sdk.impl.ap.a(a).n = i1;
                        float f1 = com.chartboost.sdk.impl.ap.a(a).n;
                        if (com.chartboost.sdk.impl.ap.f(a).b().e() && f1 / 1000F > 0.0F && !com.chartboost.sdk.impl.ap.a(a).s())
                        {
                            com.chartboost.sdk.impl.ap.a(a).q();
                            com.chartboost.sdk.impl.ap.a(a).a(true);
                        }
                    }
                    float f2 = (float)i1 / (float)com.chartboost.sdk.impl.ap.f(a).b().c();
                    ap.c(a).a(f2);
                    i1 /= 1000;
                    if (b != i1)
                    {
                        b = i1;
                        int j1 = i1 / 60;
                        ap.g(a).setText(String.format("%02d:%02d", new Object[] {
                            Integer.valueOf(j1), Integer.valueOf(i1 % 60)
                        }));
                    }
                }
                Object obj = com.chartboost.sdk.impl.ap.a(a).p();
                if (((ai.a) (obj)).f())
                {
                    obj = ((ai.a) (obj)).b(true);
                    if (((bl) (obj)).getVisibility() == 8)
                    {
                        com.chartboost.sdk.impl.ap.a(a).a(true, ((android.view.View) (obj)));
                        ((bl) (obj)).setEnabled(true);
                    }
                }
                com.chartboost.sdk.impl.ap.j().removeCallbacks(ap.h(a));
                com.chartboost.sdk.impl.ap.j().postDelayed(ap.h(a), 16L);
            }

            
            {
                a = ap.this;
                super();
                b = 0;
            }
        };
        i = ai1;
        a(context);
    }

    static ai a(ap ap1)
    {
        return ap1.i;
    }

    private void a(Context context)
    {
        context = getContext();
        Object obj = i.g();
        float f1 = getContext().getResources().getDisplayMetrics().density;
        int i1 = Math.round(f1 * 10F);
        h = new bh(context);
        i.p().a(h);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(13);
        addView(h, layoutparams);
        b = new RelativeLayout(context);
        if (((com.chartboost.sdk.Libraries.e.a) (obj)).c() && ((com.chartboost.sdk.Libraries.e.a) (obj)).a("video-click-button").c())
        {
            c = new ao(context);
            c.setVisibility(8);
            e = new bl(context) {

                final ap a;

                protected void a(MotionEvent motionevent)
                {
                    com.chartboost.sdk.Libraries.e.a a1 = com.chartboost.sdk.Libraries.e.a(new com.chartboost.sdk.Libraries.e.b[] {
                        com.chartboost.sdk.Libraries.e.a("paused", Integer.valueOf(1))
                    });
                    com.chartboost.sdk.impl.ap.a(a).a(null, a1);
                    com.chartboost.sdk.Tracking.a.a("install-button", com.chartboost.sdk.impl.ap.a(a).m, com.chartboost.sdk.impl.ap.a(a).G, Math.round(motionevent.getX()), Math.round(motionevent.getY()));
                }

            
            {
                a = ap.this;
                super(context);
            }
            };
            e.a(android.widget.ImageView.ScaleType.FIT_CENTER);
            obj = i.z;
            Point point = i.b("video-click-button");
            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams1.leftMargin = Math.round((float)point.x / ((j) (obj)).g());
            layoutparams1.topMargin = Math.round((float)point.y / ((j) (obj)).g());
            i.a(layoutparams1, ((j) (obj)), 1.0F);
            e.a(((j) (obj)));
            c.addView(e, layoutparams1);
            obj = new android.widget.RelativeLayout.LayoutParams(-1, Math.round((float)layoutparams1.height + 10F * f1));
            ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
            b.addView(c, ((android.view.ViewGroup.LayoutParams) (obj)));
        }
        d = new ao(context);
        d.setVisibility(8);
        obj = new android.widget.RelativeLayout.LayoutParams(-1, Math.round(32.5F * f1));
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(12);
        b.addView(d, ((android.view.ViewGroup.LayoutParams) (obj)));
        d.setGravity(16);
        d.setPadding(i1, i1, i1, i1);
        f = new TextView(context);
        f.setTextColor(-1);
        f.setTextSize(2, 11F);
        f.setText(a);
        f.setPadding(0, 0, i1, 0);
        f.setSingleLine();
        f.measure(0, 0);
        i1 = f.getMeasuredWidth();
        f.setGravity(17);
        obj = new android.widget.LinearLayout.LayoutParams(i1, -1);
        d.addView(f, ((android.view.ViewGroup.LayoutParams) (obj)));
        g = new al(context);
        g.setVisibility(8);
        context = new android.widget.LinearLayout.LayoutParams(-1, Math.round(10F * f1));
        context.setMargins(0, CBUtility.a(1, getContext()), 0, 0);
        d.addView(g, context);
        context = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        context.addRule(6, h.getId());
        context.addRule(8, h.getId());
        context.addRule(5, h.getId());
        context.addRule(7, h.getId());
        addView(b, context);
        a();
    }

    static void a(ap ap1, boolean flag)
    {
        ap1.d(flag);
    }

    static ao b(ap ap1)
    {
        return ap1.c;
    }

    static al c(ap ap1)
    {
        return ap1.g;
    }

    static ao d(ap ap1)
    {
        return ap1.d;
    }

    private void d(boolean flag)
    {
        boolean flag1;
        if (!j)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a(flag1, flag);
    }

    static bl e(ap ap1)
    {
        return ap1.e;
    }

    static bh f(ap ap1)
    {
        return ap1.h;
    }

    static TextView g(ap ap1)
    {
        return ap1.f;
    }

    static Runnable h(ap ap1)
    {
        return ap1.o;
    }

    static Handler j()
    {
        return l;
    }

    public void a()
    {
        b(CBUtility.c().b());
    }

    public void a(int i1)
    {
        if (c != null)
        {
            c.setBackgroundColor(i1);
        }
        d.setBackgroundColor(i1);
    }

    public void a(String s)
    {
        h.b().a(this);
        h.b().a(this);
        h.b().a(this);
        h.b().a(Uri.parse(s));
    }

    public void a(boolean flag)
    {
        l.removeCallbacks(m);
        l.removeCallbacks(n);
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!k && c != null)
        {
            c.setVisibility(0);
        }
        g.setVisibility(0);
        d.setVisibility(0);
        if (e != null)
        {
            e.setEnabled(true);
        }
_L4:
        j = flag;
        return;
_L2:
        if (c != null)
        {
            c.clearAnimation();
            c.setVisibility(8);
        }
        d.clearAnimation();
        g.setVisibility(8);
        d.setVisibility(8);
        if (e != null)
        {
            e.setEnabled(false);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void a(boolean flag, boolean flag1)
    {
        l.removeCallbacks(m);
        l.removeCallbacks(n);
        while (!i.p || !i.o() || flag == j) 
        {
            return;
        }
        j = flag;
        AlphaAnimation alphaanimation;
        long l1;
        if (j)
        {
            alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        } else
        {
            alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        }
        if (flag1)
        {
            l1 = 100L;
        } else
        {
            l1 = 200L;
        }
        alphaanimation.setDuration(l1);
        alphaanimation.setFillAfter(true);
        if (!k && c != null)
        {
            c.setVisibility(0);
            c.startAnimation(alphaanimation);
            if (e != null)
            {
                e.setEnabled(true);
            }
        }
        g.setVisibility(0);
        d.setVisibility(0);
        d.startAnimation(alphaanimation);
        if (j)
        {
            l.postDelayed(m, 3000L);
            return;
        } else
        {
            l.postDelayed(n, alphaanimation.getDuration());
            return;
        }
    }

    public bh.a b()
    {
        return h.b();
    }

    public void b(boolean flag)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams;
        int i1;
        if (flag)
        {
            i1 = 0xff000000;
        } else
        {
            i1 = 0;
        }
        setBackgroundColor(i1);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        if (!flag)
        {
            layoutparams.addRule(6, h.getId());
            layoutparams.addRule(8, h.getId());
            layoutparams.addRule(5, h.getId());
            layoutparams.addRule(7, h.getId());
        }
        b.setLayoutParams(layoutparams);
        if (c != null)
        {
            ao ao1 = c;
            if (flag)
            {
                i1 = 3;
            } else
            {
                i1 = 5;
            }
            ao1.setGravity(i1 | 0x10);
            c.requestLayout();
        }
    }

    public al c()
    {
        return g;
    }

    public void c(boolean flag)
    {
        TextView textview = f;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        textview.setVisibility(i1);
    }

    public void d()
    {
        if (c != null)
        {
            c.setVisibility(8);
        }
        k = true;
        if (e != null)
        {
            e.setEnabled(false);
        }
    }

    public void e()
    {
        if (!h.a())
        {
            l.postDelayed(new Runnable() {

                final ap a;

                public void run()
                {
                    com.chartboost.sdk.impl.ap.f(a).setVisibility(0);
                }

            
            {
                a = ap.this;
                super();
            }
            }, 250L);
        }
        h.b().a();
        l.removeCallbacks(o);
        l.postDelayed(o, 16L);
    }

    public void f()
    {
        if (h.b().e())
        {
            i.n = h.b().d();
            h.b().b();
        }
        if (i.p().b.getVisibility() == 0)
        {
            i.p().b.postInvalidate();
        }
        l.removeCallbacks(o);
    }

    public void g()
    {
        if (h.b().e())
        {
            i.n = h.b().d();
        }
        h.b().b();
        l.removeCallbacks(o);
    }

    public void h()
    {
        if (!h.a())
        {
            h.setVisibility(8);
            invalidate();
        }
    }

    public boolean i()
    {
        return h.b().e();
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        i.n = h.b().c();
        if (i.p() != null)
        {
            i.p().e();
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        l.removeCallbacks(o);
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        i.t();
        return false;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        i.o = h.b().c();
        i.p().a(true);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (h.b().e() && motionevent.getActionMasked() == 0)
        {
            if (i != null)
            {
                com.chartboost.sdk.Tracking.a.e(i.m, i.G, j);
            }
            d(true);
            return true;
        } else
        {
            return false;
        }
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        if (e != null)
        {
            e.setEnabled(flag);
        }
        if (flag)
        {
            a(false);
        }
    }

}
