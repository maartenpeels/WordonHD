// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.j;

public class bk extends ImageView
{

    protected TextView a;
    private j b;

    public bk(Context context)
    {
        super(context);
        b = null;
        a = null;
    }

    protected void a(Canvas canvas)
    {
        if (a != null)
        {
            a.layout(0, 0, canvas.getWidth(), canvas.getHeight());
            a.setEnabled(isEnabled());
            a.setSelected(isSelected());
            if (isFocused())
            {
                a.requestFocus();
            } else
            {
                a.clearFocus();
            }
            a.setPressed(isPressed());
            a.draw(canvas);
        }
    }

    public void a(j j1)
    {
        if (b == j1)
        {
            return;
        } else
        {
            b = j1;
            setImageDrawable(new BitmapDrawable(j1.f()));
            return;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        a(canvas);
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        b = null;
        setImageDrawable(new BitmapDrawable(bitmap));
    }
}
