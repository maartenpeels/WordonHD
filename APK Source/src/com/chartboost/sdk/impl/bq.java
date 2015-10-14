// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Model.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            bj, bp, bi

public final class bq extends RelativeLayout
{

    private com.chartboost.sdk.f.a a;
    private bj b;
    private bj c;
    private bp d;
    private a e;

    public bq(Context context, a a1)
    {
        super(context);
        e = null;
        e = a1;
        b = new bj(context);
        addView(b, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        c = new bj(context);
        addView(c, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        c.setVisibility(8);
    }

    public void a()
    {
        if (a == null)
        {
            a = e.l();
            if (a != null)
            {
                addView(a, new android.widget.RelativeLayout.LayoutParams(-1, -1));
                a.a();
            }
        }
        c();
    }

    public void b()
    {
        boolean flag;
        if (!e.j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e.j = true;
        if (d == null)
        {
            d = new bp(getContext());
            d.setVisibility(8);
            addView(d, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        } else
        {
            c.bringToFront();
            c.setVisibility(0);
            c.a();
            com.chartboost.sdk.impl.bi.a(false, b);
            d.bringToFront();
            d.a();
        }
        if (!g())
        {
            d.setVisibility(0);
            if (flag)
            {
                e().a();
                com.chartboost.sdk.impl.bi.a(true, d);
            }
        }
    }

    public void c()
    {
        if (d != null)
        {
            d.clearAnimation();
            d.setVisibility(8);
        }
    }

    public void d()
    {
    }

    public bj e()
    {
        return b;
    }

    public View f()
    {
        return a;
    }

    public boolean g()
    {
        return d != null && d.getVisibility() == 0;
    }

    public a h()
    {
        return e;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }
}
