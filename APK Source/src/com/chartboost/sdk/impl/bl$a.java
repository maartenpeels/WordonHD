// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.chartboost.sdk.Libraries.j;

// Referenced classes of package com.chartboost.sdk.impl:
//            bk, bl

public class nit> extends bk
{

    final bl b;

    public void a(j j1, android.view.roup.LayoutParams layoutparams)
    {
        a(j1);
        layoutparams.width = j1.h();
        layoutparams.height = j1.i();
    }

    protected void a(boolean flag)
    {
        if (!bl.b(b) || !flag) goto _L2; else goto _L1
_L1:
        if (bl.c(b)) goto _L4; else goto _L3
_L3:
        if (getDrawable() == null) goto _L6; else goto _L5
_L5:
        getDrawable().setColorFilter(0x77000000, android.graphics.rDuff.Mode.SRC_ATOP);
_L13:
        invalidate();
        bl.a(b, true);
_L4:
        return;
_L6:
        if (getBackground() != null)
        {
            getBackground().setColorFilter(0x77000000, android.graphics.rDuff.Mode.SRC_ATOP);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!bl.c(b)) goto _L4; else goto _L7
_L7:
        if (getDrawable() == null) goto _L9; else goto _L8
_L8:
        getDrawable().clearColorFilter();
_L11:
        invalidate();
        bl.a(b, false);
        return;
_L9:
        if (getBackground() != null)
        {
            getBackground().clearColorFilter();
        }
        if (true) goto _L11; else goto _L10
_L10:
        if (true) goto _L13; else goto _L12
_L12:
    }

    public Params(bl bl1, Context context)
    {
        b = bl1;
        super(context);
        bl.a(bl1, false);
    }
}
