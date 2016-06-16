// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.f;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk, ai, bl

public final class am extends LinearLayout
{

    private ai a;
    private LinearLayout b;
    private bk c;
    private TextView d;
    private bl e;
    private int f;

    public am(Context context, ai ai1)
    {
        super(context);
        f = 0x80000000;
        a = ai1;
        a(context);
    }

    static bl a(am am1)
    {
        return am1.e;
    }

    private void a(Context context)
    {
        Object obj = getContext();
        int i = Math.round(getContext().getResources().getDisplayMetrics().density * 8F);
        setOrientation(1);
        setGravity(17);
        b = new LinearLayout(((Context) (obj)));
        b.setGravity(17);
        b.setOrientation(0);
        b.setPadding(i, i, i, i);
        c = new bk(((Context) (obj)));
        c.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        c.setPadding(0, 0, i, 0);
        obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        a.a(((android.view.ViewGroup.LayoutParams) (obj)), a.y, 1.0F);
        d = new TextView(getContext());
        d.setTextColor(-1);
        d.setTypeface(null, 1);
        d.setGravity(17);
        TextView textview = d;
        float f1;
        if (com.chartboost.sdk.f.a(context))
        {
            f1 = 26F;
        } else
        {
            f1 = 16F;
        }
        textview.setTextSize(2, f1);
        b.addView(c, ((android.view.ViewGroup.LayoutParams) (obj)));
        b.addView(d, new android.widget.LinearLayout.LayoutParams(-2, -2));
        e = new bl(getContext()) {

            final am a;

            protected void a(MotionEvent motionevent)
            {
                am.a(a).setEnabled(false);
                am.b(a).p().i();
            }

            
            {
                a = am.this;
                super(context);
            }
        };
        e.setPadding(0, 0, 0, i);
        e.a(android.widget.ImageView.ScaleType.FIT_CENTER);
        e.setPadding(i, i, i, i);
        context = new android.widget.LinearLayout.LayoutParams(-2, -2);
        a.a(context, a.x, 1.0F);
        if (a.y.e())
        {
            c.a(a.y);
        }
        if (a.x.e())
        {
            e.a(a.x);
        }
        addView(b, new android.widget.LinearLayout.LayoutParams(-2, -2));
        addView(e, context);
        a();
    }

    static ai b(am am1)
    {
        return am1.a;
    }

    public void a()
    {
        a(a.r());
    }

    public void a(String s, int i)
    {
        d.setText(s);
        f = i;
        a(a.r());
    }

    public void a(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0xff000000;
        } else
        {
            i = f;
        }
        setBackgroundColor(i);
    }
}
