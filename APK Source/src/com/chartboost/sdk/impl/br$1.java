// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package com.chartboost.sdk.impl:
//            br

class a
    implements Runnable
{

    final br a;

    public void run()
    {
        float f = a.getContext().getResources().getDisplayMetrics().density;
        br.a(a, 60F * f * 0.01666667F);
        f = (float)a.getHeight() - f * 9F;
        if (br.a(a) > f)
        {
            br.b(a, f * 2.0F);
        }
        if (a.getWindowVisibility() == 0)
        {
            a.invalidate();
        }
    }

    (br br1)
    {
        a = br1;
        super();
    }
}
