// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.j;

// Referenced classes of package com.chartboost.sdk.impl:
//            ah, bl

public class b extends b
{

    protected bl b;
    protected ImageView c;
    final ah d;

    protected void a(float f1, float f2)
    {
        d.a(null, null);
    }

    protected void a(int i, int k)
    {
        super.a(i, k);
        boolean flag = d.a().b();
        float f1;
        j j1;
        Object obj;
        android.widget.iveLayout.LayoutParams layoutparams;
        ah ah1;
        if (flag)
        {
            j1 = ah.a(d);
        } else
        {
            j1 = ah.b(d);
        }
        layoutparams = new android.widget.iveLayout.LayoutParams(-2, -2);
        d.a(layoutparams, j1, d.H);
        ah1 = d;
        if (flag)
        {
            obj = "ad-portrait";
        } else
        {
            obj = "ad-landscape";
        }
        obj = ah1.b(((String) (obj)));
        layoutparams.leftMargin = Math.round((float)(i - layoutparams.width) / 2.0F + ((float)((Point) (obj)).x / j1.g()) * d.H);
        f1 = (float)(k - layoutparams.height) / 2.0F;
        layoutparams.topMargin = Math.round(((float)((Point) (obj)).y / j1.g()) * d.H + f1);
        c.setLayoutParams(layoutparams);
        b.setLayoutParams(layoutparams);
        b.a(android.widget.View.ScaleType.FIT_CENTER);
        b.a(j1);
    }

    public void b()
    {
        super.b();
        b = null;
        c = null;
    }

    protected nit>(ah ah1, Context context)
    {
        d = ah1;
        super(ah1, context);
        b = new bl(context, ah1) {

            final ah a;
            final ah.a b;

            protected void a(MotionEvent motionevent)
            {
                b.a(motionevent.getX(), motionevent.getY());
            }

            
            {
                b = ah.a.this;
                a = ah1;
                super(context);
            }
        };
        a(b);
        c = new ImageView(context);
        c.setBackgroundColor(0xff000000);
        addView(c);
        addView(b);
    }
}
