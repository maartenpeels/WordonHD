// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            gr

public final class ex extends Drawable
    implements android.graphics.drawable.Drawable.Callback
{
    private static final class a extends Drawable
    {

        private static final a CK = new a();
        private static final a CL = new a();

        static a eA()
        {
            return CK;
        }

        public void draw(Canvas canvas)
        {
        }

        public android.graphics.drawable.Drawable.ConstantState getConstantState()
        {
            return CL;
        }

        public int getOpacity()
        {
            return -2;
        }

        public void setAlpha(int i)
        {
        }

        public void setColorFilter(ColorFilter colorfilter)
        {
        }


        private a()
        {
        }
    }

    private static final class a.a extends android.graphics.drawable.Drawable.ConstantState
    {

        public int getChangingConfigurations()
        {
            return 0;
        }

        public Drawable newDrawable()
        {
            return a.eA();
        }

        private a.a()
        {
        }

    }

    static final class b extends android.graphics.drawable.Drawable.ConstantState
    {

        int CM;
        int CN;

        public int getChangingConfigurations()
        {
            return CM;
        }

        public Drawable newDrawable()
        {
            return new ex(this);
        }

        b(b b1)
        {
            if (b1 != null)
            {
                CM = b1.CM;
                CN = b1.CN;
            }
        }
    }


    private int CA;
    private int CB;
    private boolean CC;
    private b CD;
    private Drawable CE;
    private Drawable CF;
    private boolean CG;
    private boolean CH;
    private boolean CI;
    private int CJ;
    private boolean Cp;
    private int Cv;
    private long Cw;
    private int Cx;
    private int Cy;
    private int Cz;

    public ex(Drawable drawable, Drawable drawable1)
    {
        this(null);
        if (drawable == null)
        {
            drawable = a.eA();
        }
        CE = drawable;
        drawable.setCallback(this);
        b b1 = CD;
        int i = b1.CN;
        b1.CN = drawable.getChangingConfigurations() | i;
        if (drawable1 == null)
        {
            drawable = a.eA();
        } else
        {
            drawable = drawable1;
        }
        CF = drawable;
        drawable.setCallback(this);
        drawable1 = CD;
        i = ((b) (drawable1)).CN;
        drawable1.CN = drawable.getChangingConfigurations() | i;
    }

    ex(b b1)
    {
        Cv = 0;
        Cz = 255;
        CB = 0;
        Cp = true;
        CD = new b(b1);
    }

    public boolean canConstantState()
    {
        if (!CG)
        {
            boolean flag;
            if (CE.getConstantState() != null && CF.getConstantState() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            CH = flag;
            CG = true;
        }
        return CH;
    }

    public void draw(Canvas canvas)
    {
        Cv;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 101
    //                   2 119;
           goto _L1 _L2 _L3
_L1:
        boolean flag = true;
_L4:
        Drawable drawable;
        Drawable drawable1;
        int i;
        boolean flag1;
        i = CB;
        flag1 = Cp;
        drawable = CE;
        drawable1 = CF;
        if (flag)
        {
            if (!flag1 || i == 0)
            {
                drawable.draw(canvas);
            }
            if (i == Cz)
            {
                drawable1.setAlpha(Cz);
                drawable1.draw(canvas);
            }
            return;
        }
        break MISSING_BLOCK_LABEL_203;
_L2:
        Cw = SystemClock.uptimeMillis();
        Cv = 2;
        flag = false;
          goto _L4
_L3:
        if (Cw < 0L) goto _L1; else goto _L5
_L5:
        float f = (float)(SystemClock.uptimeMillis() - Cw) / (float)CA;
        float f1;
        if (f >= 1.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            Cv = 0;
        }
        f = Math.min(f, 1.0F);
        f1 = Cx;
        CB = (int)(f * (float)(Cy - Cx) + f1);
          goto _L4
        if (flag1)
        {
            drawable.setAlpha(Cz - i);
        }
        drawable.draw(canvas);
        if (flag1)
        {
            drawable.setAlpha(Cz);
        }
        if (i > 0)
        {
            drawable1.setAlpha(i);
            drawable1.draw(canvas);
            drawable1.setAlpha(Cz);
        }
        invalidateSelf();
        return;
          goto _L4
    }

    public Drawable ez()
    {
        return CF;
    }

    public int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | CD.CM | CD.CN;
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (canConstantState())
        {
            CD.CM = getChangingConfigurations();
            return CD;
        } else
        {
            return null;
        }
    }

    public int getIntrinsicHeight()
    {
        return Math.max(CE.getIntrinsicHeight(), CF.getIntrinsicHeight());
    }

    public int getIntrinsicWidth()
    {
        return Math.max(CE.getIntrinsicWidth(), CF.getIntrinsicWidth());
    }

    public int getOpacity()
    {
        if (!CI)
        {
            CJ = Drawable.resolveOpacity(CE.getOpacity(), CF.getOpacity());
            CI = true;
        }
        return CJ;
    }

    public void invalidateDrawable(Drawable drawable)
    {
        if (gr.fu())
        {
            drawable = getCallback();
            if (drawable != null)
            {
                drawable.invalidateDrawable(this);
            }
        }
    }

    public Drawable mutate()
    {
        if (!CC && super.mutate() == this)
        {
            if (!canConstantState())
            {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            CE.mutate();
            CF.mutate();
            CC = true;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        CE.setBounds(rect);
        CF.setBounds(rect);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        if (gr.fu())
        {
            drawable = getCallback();
            if (drawable != null)
            {
                drawable.scheduleDrawable(this, runnable, l);
            }
        }
    }

    public void setAlpha(int i)
    {
        if (CB == Cz)
        {
            CB = i;
        }
        Cz = i;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        CE.setColorFilter(colorfilter);
        CF.setColorFilter(colorfilter);
    }

    public void startTransition(int i)
    {
        Cx = 0;
        Cy = Cz;
        CB = 0;
        CA = i;
        Cv = 1;
        invalidateSelf();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        if (gr.fu())
        {
            drawable = getCallback();
            if (drawable != null)
            {
                drawable.unscheduleDrawable(this, runnable);
            }
        }
    }
}
