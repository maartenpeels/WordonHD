// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.LinearLayout;

public abstract class aq extends LinearLayout
{

    private Rect a;
    private Paint b;
    private Paint c;

    public aq(Context context)
    {
        super(context);
        a = new Rect();
        b = null;
        c = null;
    }

    private void a(Canvas canvas, Rect rect)
    {
        if (c == null)
        {
            c = new Paint();
            c.setStyle(android.graphics.Paint.Style.FILL);
            c.setColor(-1);
        }
        canvas.drawRect(rect, c);
    }

    private void b(Canvas canvas, Rect rect)
    {
        if (b == null)
        {
            b = new Paint();
            b.setStyle(android.graphics.Paint.Style.FILL);
            b.setAntiAlias(true);
        }
        b.setColor(0xffd7d7d7);
        canvas.drawRect(rect.left, rect.bottom - 1, rect.right, rect.bottom, b);
    }

    public abstract int a();

    public abstract void a(com.chartboost.sdk.Libraries.e.a a1, int i);

    protected void onDraw(Canvas canvas)
    {
        a.set(0, 0, canvas.getWidth(), canvas.getHeight());
        a(canvas, a);
        b(canvas, a);
    }
}
