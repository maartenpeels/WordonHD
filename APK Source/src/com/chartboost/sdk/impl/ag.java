// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Tracking.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            an, bk, ai, bl

public final class ag extends an
{

    private LinearLayout b;
    private LinearLayout c;
    private bk d;
    private bl e;
    private TextView f;
    private TextView g;

    public ag(Context context, ai ai1)
    {
        super(context, ai1);
    }

    protected View a()
    {
        Context context = getContext();
        int i = Math.round(getContext().getResources().getDisplayMetrics().density * 6F);
        b = new LinearLayout(context);
        b.setOrientation(0);
        b.setGravity(17);
        c = new LinearLayout(context);
        c.setOrientation(1);
        c.setGravity(19);
        d = new bk(context);
        d.setPadding(i, i, i, i);
        if (a.A.e())
        {
            d.a(a.A);
        }
        e = new bl(context) {

            final ag a;

            protected void a(MotionEvent motionevent)
            {
                a.a.p().h();
                com.chartboost.sdk.Tracking.a.a("install-click", a.a.m, a.a.G, Math.round(motionevent.getX()), Math.round(motionevent.getY()));
            }

            
            {
                a = ag.this;
                super(context);
            }
        };
        e.setPadding(i, i, i, i);
        if (a.B.e())
        {
            e.a(a.B);
        }
        f = new TextView(getContext());
        f.setTextColor(0xff171515);
        f.setTypeface(null, 1);
        f.setGravity(3);
        f.setPadding(i, i, i, i / 2);
        g = new TextView(getContext());
        g.setTextColor(0xff171515);
        g.setTypeface(null, 1);
        g.setGravity(3);
        g.setPadding(i, 0, i, i);
        f.setTextSize(2, 14F);
        g.setTextSize(2, 11F);
        c.addView(f);
        c.addView(g);
        b.addView(d);
        b.addView(c, new android.widget.LinearLayout.LayoutParams(0, -2, 1.0F));
        b.addView(e);
        return b;
    }

    public void a(String s, String s1)
    {
        f.setText(s);
        g.setText(s1);
    }

    protected int b()
    {
        return 72;
    }
}
