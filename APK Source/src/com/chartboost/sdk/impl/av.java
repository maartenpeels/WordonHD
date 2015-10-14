// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import com.chartboost.sdk.Libraries.CBUtility;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk

public final class av extends bk
{

    private RectF b;
    private Paint c;
    private Paint d;
    private BitmapShader e;
    private float f;

    public av(Context context)
    {
        super(context);
        f = 0.0F;
        a(context);
    }

    private void a(Context context)
    {
        float f1 = getContext().getResources().getDisplayMetrics().density;
        b = new RectF();
        c = new Paint();
        c.setStyle(android.graphics.Paint.Style.STROKE);
        c.setStrokeWidth(Math.max(1.0F, f1 * 1.0F));
        c.setAntiAlias(true);
    }

    public void a(float f1)
    {
        f = f1;
        invalidate();
    }

    public void a(int i)
    {
        c.setColor(i);
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        float f1;
        Object obj;
        f1 = CBUtility.a(1.0F, getContext());
        obj = getDrawable();
        if (!(obj instanceof BitmapDrawable)) goto _L2; else goto _L1
_L1:
        obj = ((BitmapDrawable)obj).getBitmap();
        if (e != null) goto _L4; else goto _L3
_L3:
        if (obj == null) goto _L6; else goto _L5
_L5:
        e = new BitmapShader(((Bitmap) (obj)), android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        d = new Paint();
        d.setAntiAlias(true);
        d.setShader(e);
_L4:
        float f2 = Math.max((float)getWidth() / (float)((Bitmap) (obj)).getWidth(), (float)getHeight() / (float)((Bitmap) (obj)).getHeight());
        canvas.save();
        canvas.scale(f2, f2);
        b.set(0.0F, 0.0F, (float)getWidth() / f2, (float)getHeight() / f2);
        b.inset(f1 / (f2 * 2.0F), f1 / (f2 * 2.0F));
        canvas.drawRoundRect(b, b.width() * f, b.height() * f, d);
        canvas.restore();
_L8:
        b.set(0.0F, 0.0F, getWidth(), getHeight());
        b.inset(f1 / 2.0F, f1 / 2.0F);
        canvas.drawRoundRect(b, b.width() * f, b.height() * f, c);
        return;
_L6:
        postInvalidate();
        return;
_L2:
        super.onDraw(canvas);
        if (true) goto _L8; else goto _L7
_L7:
    }
}
