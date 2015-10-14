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
import android.os.Handler;
import android.util.DisplayMetrics;
import com.chartboost.sdk.Libraries.CBUtility;

// Referenced classes of package com.chartboost.sdk.impl:
//            bo

public final class br extends bo
{

    private static Handler a = CBUtility.e();
    private float b;
    private long c;
    private Paint d;
    private Paint e;
    private Path f;
    private Path g;
    private RectF h;
    private RectF i;
    private Runnable j;

    public br(Context context)
    {
        super(context);
        j = new Runnable() {

            final br a;

            public void run()
            {
                float f1 = a.getContext().getResources().getDisplayMetrics().density;
                br.a(a, 60F * f1 * 0.01666667F);
                f1 = (float)a.getHeight() - f1 * 9F;
                if (br.a(a) > f1)
                {
                    br.b(a, f1 * 2.0F);
                }
                if (a.getWindowVisibility() == 0)
                {
                    a.invalidate();
                }
            }

            
            {
                a = br.this;
                super();
            }
        };
        a(context);
    }

    static float a(br br1)
    {
        return br1.b;
    }

    static float a(br br1, float f1)
    {
        f1 = br1.b + f1;
        br1.b = f1;
        return f1;
    }

    private void a(Context context)
    {
        float f1 = context.getResources().getDisplayMetrics().density;
        b = 0.0F;
        c = (long)((double)System.nanoTime() / 1000000D);
        d = new Paint();
        d.setColor(-1);
        d.setStyle(android.graphics.Paint.Style.STROKE);
        d.setStrokeWidth(f1 * 3F);
        d.setAntiAlias(true);
        e = new Paint();
        e.setColor(-1);
        e.setStyle(android.graphics.Paint.Style.FILL);
        e.setAntiAlias(true);
        f = new Path();
        g = new Path();
        i = new RectF();
        h = new RectF();
    }

    static float b(br br1, float f1)
    {
        f1 = br1.b - f1;
        br1.b = f1;
        return f1;
    }

    protected void a(Canvas canvas)
    {
        float f1 = getContext().getResources().getDisplayMetrics().density;
        h.set(0.0F, 0.0F, getWidth(), getHeight());
        h.inset(1.5F * f1, 1.5F * f1);
        float f3 = (float)getHeight() / 2.0F;
        canvas.drawRoundRect(h, f3, f3, d);
        i.set(h);
        i.inset(3F * f1, f1 * 3F);
        f1 = i.height() / 2.0F;
        f.reset();
        f.addRoundRect(i, f1, f1, android.graphics.Path.Direction.CW);
        f3 = i.height();
        g.reset();
        g.moveTo(0.0F, f3);
        g.lineTo(f3, f3);
        g.lineTo(f3 * 2.0F, 0.0F);
        g.lineTo(f3, 0.0F);
        g.close();
        canvas.save();
        boolean flag = true;
        try
        {
            canvas.clipPath(f);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            flag = false;
        }
        if (flag)
        {
            for (float f2 = -f3 + b; f2 < i.width() + f3; f2 += 2.0F * f3)
            {
                float f4 = i.left;
                canvas.save();
                canvas.translate(f4 + f2, i.top);
                canvas.drawPath(g, e);
                canvas.restore();
            }

        }
        canvas.restore();
        long l = Math.max(0L, 16L - ((long)((double)System.nanoTime() / 1000000D) - c));
        a.removeCallbacks(j);
        a.postDelayed(j, l);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        a.removeCallbacks(j);
        a.post(j);
    }

    protected void onDetachedFromWindow()
    {
        a.removeCallbacks(j);
        super.onDetachedFromWindow();
    }

    protected void onWindowVisibilityChanged(int k)
    {
        super.onWindowVisibilityChanged(k);
        a.removeCallbacks(j);
        if (k == 0)
        {
            a.post(j);
        }
    }

}
