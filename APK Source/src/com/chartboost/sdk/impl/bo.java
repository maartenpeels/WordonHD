// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import java.lang.reflect.Method;

public abstract class bo extends View
{

    private Bitmap a;
    private Canvas b;

    public bo(Context context)
    {
        super(context);
        a = null;
        b = null;
        a(context);
    }

    private void a(Context context)
    {
        try
        {
            getClass().getMethod("setLayerType", new Class[] {
                Integer.TYPE, android/graphics/Paint
            }).invoke(this, new Object[] {
                Integer.valueOf(1), null
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private boolean b(Canvas canvas)
    {
        boolean flag;
        try
        {
            flag = ((Boolean)android/graphics/Canvas.getMethod("isHardwareAccelerated", new Class[0]).invoke(canvas, new Object[0])).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Canvas canvas)
        {
            return false;
        }
        return flag;
    }

    protected abstract void a(Canvas canvas);

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (a != null && !a.isRecycled())
        {
            a.recycle();
        }
        a = null;
    }

    protected final void onDraw(Canvas canvas)
    {
        boolean flag = b(canvas);
        Canvas canvas1;
        Canvas canvas2;
        if (flag)
        {
            if (a == null || a.getWidth() != canvas.getWidth() || a.getHeight() != canvas.getHeight())
            {
                if (a != null && !a.isRecycled())
                {
                    a.recycle();
                }
                try
                {
                    a = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                    b = new Canvas(a);
                }
                // Misplaced declaration of an exception variable
                catch (Canvas canvas)
                {
                    return;
                }
            }
            a.eraseColor(0);
            canvas2 = b;
            canvas1 = canvas;
        } else
        {
            canvas1 = null;
            canvas2 = canvas;
        }
        a(canvas2);
        if (flag && canvas1 != null)
        {
            canvas1.drawBitmap(a, 0.0F, 0.0F, null);
        }
    }
}
