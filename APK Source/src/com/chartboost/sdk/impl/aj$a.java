// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.j;

// Referenced classes of package com.chartboost.sdk.impl:
//            aj, bk, bl

public abstract class utParams extends com.chartboost.sdk.aj.a
{

    private boolean b;
    protected bk f;
    protected bl g;
    final aj h;

    protected void a(int i, int k)
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
        android.widget.iveLayout.LayoutParams layoutparams;
        android.widget.iveLayout.LayoutParams layoutparams1;
        aj aj1;
        int l;
        int i1;
        if (flag)
        {
            j1 = aj.a(h);
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
        layoutparams = new android.widget.iveLayout.LayoutParams(-2, -2);
        layoutparams1 = new android.widget.iveLayout.LayoutParams(-2, -2);
        h.a(layoutparams, j1, 1.0F);
        f1 = Math.min((float)i / (float)layoutparams.width, (float)k / (float)layoutparams.height);
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
        f1 = (float)(k - layoutparams.height) / 2.0F;
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
            i1 = layoutparams.leftMargin;
            int l1 = layoutparams.width;
            int i2 = Math.round((float)(-layoutparams1.width) / 2.0F);
            l = layoutparams.topMargin;
            int k1 = Math.round((float)(-layoutparams1.height) / 2.0F);
            i1 = i1 + l1 + i2;
            l += k1;
        } else
        {
            i1 = Math.round(((float)layoutparams.leftMargin + (float)layoutparams.width / 2.0F + (float)((Point) (obj)).x) - (float)layoutparams1.width / 2.0F);
            float f2 = layoutparams.topMargin;
            float f3 = (float)layoutparams.height / 2.0F;
            l = Math.round(((float)((Point) (obj)).y + (f2 + f3)) - (float)layoutparams1.height / 2.0F);
        }
        layoutparams1.leftMargin = Math.min(Math.max(0, i1), i - layoutparams1.width);
        layoutparams1.topMargin = Math.min(Math.max(0, l), k - layoutparams1.height);
        f.setLayoutParams(layoutparams);
        g.setLayoutParams(layoutparams1);
        f.setScaleType(android.widget.View.ScaleType.FIT_CENTER);
        f.a(j1);
        g.a(j2);
    }

    public void b()
    {
        super.();
        f = null;
        g = null;
    }

    protected void d()
    {
        g = new bl(getContext()) {

            final aj.a a;

            protected void a(MotionEvent motionevent)
            {
                a.g();
            }

            
            {
                a = aj.a.this;
                super(context);
            }
        };
        addView(g);
    }

    protected void g()
    {
        aj.c(h);
    }

    protected s(aj aj1, Context context)
    {
        h = aj1;
        super(aj1, context);
        b = false;
        setBackgroundColor(0);
        setLayoutParams(new android.widget.iveLayout.LayoutParams(-1, -1));
        f = new bk(context);
        addView(f, new android.widget.iveLayout.LayoutParams(-1, -1));
    }
}
