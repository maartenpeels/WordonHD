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
import com.chartboost.sdk.Model.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            aj, bl

public class ah extends aj
{
    public class a extends aj.a
    {

        protected bl b;
        protected ImageView c;
        final ah d;

        protected void a(float f1, float f2)
        {
            d.a(null, null);
        }

        protected void a(int i, int i1)
        {
            super.a(i, i1);
            boolean flag = d.a().b();
            float f1;
            j j1;
            Object obj;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            ah ah1;
            if (flag)
            {
                j1 = com.chartboost.sdk.impl.ah.a(d);
            } else
            {
                j1 = ah.b(d);
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
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
            f1 = (float)(i1 - layoutparams.height) / 2.0F;
            layoutparams.topMargin = Math.round(((float)((Point) (obj)).y / j1.g()) * d.H + f1);
            c.setLayoutParams(layoutparams);
            b.setLayoutParams(layoutparams);
            b.a(android.widget.ImageView.ScaleType.FIT_CENTER);
            b.a(j1);
        }

        public void b()
        {
            super.b();
            b = null;
            c = null;
        }

        protected a(Context context)
        {
            d = ah.this;
            super(ah.this, context);
            b = new _cls1(this, context, ah.this);
            a(b);
            c = new ImageView(context);
            c.setBackgroundColor(0xff000000);
            addView(c);
            addView(b);
        }
    }


    private j k;
    private j l;

    public ah(com.chartboost.sdk.Model.a a1)
    {
        super(a1);
        k = new j(this);
        l = new j(this);
    }

    static j a(ah ah1)
    {
        return ah1.k;
    }

    static j b(ah ah1)
    {
        return ah1.l;
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (!super.a(a1))
        {
            return false;
        }
        if (e.b("ad-portrait"))
        {
            i = false;
        }
        if (e.b("ad-landscape"))
        {
            j = false;
        }
        l.a("ad-landscape");
        k.a("ad-portrait");
        return true;
    }

    protected com.chartboost.sdk.f.a b(Context context)
    {
        return new a(context);
    }

    public void d()
    {
        super.d();
        l.d();
        k.d();
        l = null;
        k = null;
    }

    // Unreferenced inner class com/chartboost/sdk/impl/ah$a$1

/* anonymous class */
    class a._cls1 extends bl
    {

        final ah a;
        final a b;

        protected void a(MotionEvent motionevent)
        {
            b.a(motionevent.getX(), motionevent.getY());
        }

            
            {
                b = a1;
                a = ah1;
                super(context);
            }
    }

}
