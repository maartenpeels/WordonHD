// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;

public class ao extends LinearLayout
{

    private Paint a;
    private float b;
    private int c;

    public ao(Context context)
    {
        super(context);
        b = 1.0F;
        c = 0;
        int i = Math.round(context.getResources().getDisplayMetrics().density * 5F);
        setPadding(i, i, i, i);
        setBaselineAligned(false);
        a = new Paint();
        a.setStyle(android.graphics.Paint.Style.FILL);
    }

    public void a(int i)
    {
        a.setColor(i);
        invalidate();
    }

    public void b(int i)
    {
        c = i;
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        float f = getContext().getResources().getDisplayMetrics().density;
        if ((c & 1) > 0)
        {
            canvas.drawRect(0.0F, 0.0F, canvas.getWidth(), b * f, a);
        }
        if ((c & 2) > 0)
        {
            canvas.drawRect((float)canvas.getWidth() - b * f, 0.0F, canvas.getWidth(), canvas.getHeight(), a);
        }
        if ((c & 4) > 0)
        {
            canvas.drawRect(0.0F, (float)canvas.getHeight() - b * f, canvas.getWidth(), canvas.getHeight(), a);
        }
        if ((c & 8) > 0)
        {
            canvas.drawRect(0.0F, 0.0F, b * f, canvas.getHeight(), a);
        }
    }
}
