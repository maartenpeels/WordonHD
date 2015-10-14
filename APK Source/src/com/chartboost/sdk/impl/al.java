// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.DisplayMetrics;

// Referenced classes of package com.chartboost.sdk.impl:
//            bo

public class al extends bo
{

    private Paint a;
    private Paint b;
    private Path c;
    private RectF d;
    private RectF e;
    private int f;
    private float g;
    private float h;

    public al(Context context)
    {
        super(context);
        f = 0;
        a(context);
    }

    private void a(Context context)
    {
        float f1 = context.getResources().getDisplayMetrics().density;
        g = 4.5F * f1;
        a = new Paint();
        a.setColor(-1);
        a.setStyle(android.graphics.Paint.Style.STROKE);
        a.setStrokeWidth(f1 * 1.0F);
        a.setAntiAlias(true);
        b = new Paint();
        b.setColor(0xccffffff);
        b.setStyle(android.graphics.Paint.Style.FILL);
        b.setAntiAlias(true);
        c = new Path();
        e = new RectF();
        d = new RectF();
    }

    public void a(float f1)
    {
        h = f1;
        if (getVisibility() != 8)
        {
            invalidate();
        }
    }

    public void a(int i)
    {
        f = i;
        invalidate();
    }

    protected void a(Canvas canvas)
    {
        float f1 = getContext().getResources().getDisplayMetrics().density;
        d.set(0.0F, 0.0F, getWidth(), getHeight());
        int i = Math.min(1, Math.round(f1 * 0.5F));
        d.inset(i, i);
        c.reset();
        c.addRoundRect(d, g, g, android.graphics.Path.Direction.CW);
        canvas.save();
        canvas.clipPath(c);
        canvas.drawColor(f);
        e.set(d);
        e.right = (e.right - e.left) * h + e.left;
        canvas.drawRect(e, b);
        canvas.restore();
        canvas.drawRoundRect(d, g, g, a);
    }

    public void b(float f1)
    {
        g = f1;
    }

    public void b(int i)
    {
        a.setColor(i);
        invalidate();
    }

    public void c(int i)
    {
        b.setColor(i);
        invalidate();
    }
}
