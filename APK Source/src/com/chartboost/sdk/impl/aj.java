// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.f;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk, bl

public abstract class aj extends f
{
    public abstract class a extends com.chartboost.sdk.f.a
    {

        private boolean b;
        protected bk f;
        protected bl g;
        final aj h;

        protected void a(int i, int i1)
        {
            if (!b)
            {
                d();
                b = true;
            }
            boolean flag = h.a().b();
            float f1;
            j j1;
            j j2;
            Object obj;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            aj aj1;
            int k1;
            int l1;
            if (flag)
            {
                j1 = com.chartboost.sdk.impl.aj.a(h);
            } else
            {
                j1 = aj.b(h);
            }
            if (flag)
            {
                j2 = h.D;
            } else
            {
                j2 = h.E;
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            h.a(layoutparams, j1, 1.0F);
            f1 = Math.min((float)i / (float)layoutparams.width, (float)i1 / (float)layoutparams.height);
            h.H = Math.min(f1, 1.0F);
            layoutparams.width = (int)((float)layoutparams.width * h.H);
            layoutparams.height = (int)((float)layoutparams.height * h.H);
            aj1 = h;
            if (flag)
            {
                obj = "frame-portrait";
            } else
            {
                obj = "frame-landscape";
            }
            obj = aj1.b(((String) (obj)));
            layoutparams.leftMargin = Math.round((float)(i - layoutparams.width) / 2.0F + ((float)((Point) (obj)).x / j1.g()) * h.H);
            f1 = (float)(i1 - layoutparams.height) / 2.0F;
            layoutparams.topMargin = Math.round(((float)((Point) (obj)).y / j1.g()) * h.H + f1);
            h.a(layoutparams1, j2, 1.0F);
            aj1 = h;
            if (flag)
            {
                obj = "close-portrait";
            } else
            {
                obj = "close-landscape";
            }
            obj = aj1.b(((String) (obj)));
            if (((Point) (obj)).x == 0 && ((Point) (obj)).y == 0)
            {
                l1 = layoutparams.leftMargin;
                int k2 = layoutparams.width;
                int l2 = Math.round((float)(-layoutparams1.width) / 2.0F);
                k1 = layoutparams.topMargin;
                int i2 = Math.round((float)(-layoutparams1.height) / 2.0F);
                l1 = l1 + k2 + l2;
                k1 += i2;
            } else
            {
                l1 = Math.round(((float)layoutparams.leftMargin + (float)layoutparams.width / 2.0F + (float)((Point) (obj)).x) - (float)layoutparams1.width / 2.0F);
                float f2 = layoutparams.topMargin;
                float f3 = (float)layoutparams.height / 2.0F;
                k1 = Math.round(((float)((Point) (obj)).y + (f2 + f3)) - (float)layoutparams1.height / 2.0F);
            }
            layoutparams1.leftMargin = Math.min(Math.max(0, l1), i - layoutparams1.width);
            layoutparams1.topMargin = Math.min(Math.max(0, k1), i1 - layoutparams1.height);
            f.setLayoutParams(layoutparams);
            g.setLayoutParams(layoutparams1);
            f.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            f.a(j1);
            g.a(j2);
        }

        public void b()
        {
            super.b();
            f = null;
            g = null;
        }

        protected void d()
        {
            g = new bl(this, getContext()) {

                final a a;

                protected void a(MotionEvent motionevent)
                {
                    a.g();
                }

            
            {
                a = a1;
                super(context);
            }
            };
            addView(g);
        }

        protected void g()
        {
            aj.c(h);
        }

        protected a(Context context)
        {
            h = aj.this;
            super(aj.this, context);
            b = false;
            setBackgroundColor(0);
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
            f = new bk(context);
            addView(f, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        }
    }


    protected j D;
    protected j E;
    protected com.chartboost.sdk.Libraries.e.a F;
    protected String G;
    protected float H;
    private j k;
    private j l;

    public aj(com.chartboost.sdk.Model.a a1)
    {
        super(a1);
        H = 1.0F;
        k = new j(this);
        l = new j(this);
        D = new j(this);
        E = new j(this);
    }

    static j a(aj aj1)
    {
        return aj1.k;
    }

    static j b(aj aj1)
    {
        return aj1.l;
    }

    static void c(aj aj1)
    {
        aj1.h();
    }

    public void a(android.view.ViewGroup.LayoutParams layoutparams, j j1, float f1)
    {
        layoutparams.width = (int)(((float)j1.b() / j1.g()) * f1);
        layoutparams.height = (int)(((float)j1.c() / j1.g()) * f1);
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (!super.a(a1))
        {
            return false;
        }
        G = a1.e("ad_id");
        F = a1.a("ux");
        if (e.b("frame-portrait") || e.b("close-portrait"))
        {
            i = false;
        }
        if (e.b("frame-landscape") || e.b("close-landscape"))
        {
            j = false;
        }
        l.a("frame-landscape");
        k.a("frame-portrait");
        E.a("close-landscape");
        D.a("close-portrait");
        return true;
    }

    protected Point b(String s)
    {
        s = e.a(s).a("offset");
        if (s.c())
        {
            return new Point(s.f("x"), s.f("y"));
        } else
        {
            return new Point(0, 0);
        }
    }

    public void d()
    {
        super.d();
        l.d();
        k.d();
        E.d();
        D.d();
        l = null;
        k = null;
        E = null;
        D = null;
    }
}
