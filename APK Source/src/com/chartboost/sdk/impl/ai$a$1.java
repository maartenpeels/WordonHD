// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import com.chartboost.sdk.Model.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            bl, ai, ak

class t> extends bl
{

    final ai a;
    final b b;

    protected void a(MotionEvent motionevent)
    {
        if (ai.c(b.b).e == com.chartboost.sdk.Model.)
        {
            com.chartboost.sdk.impl.b(b).a(false);
        }
        if (b.b.k == b)
        {
            com.chartboost.sdk.impl.b(b, false);
        }
        com.chartboost.sdk.Tracking.a.c(b.b.m, ai.d(b.b).p());
        b(b, true);
    }

    ( , Context context, ai ai1)
    {
        b = ;
        a = ai1;
        super(context);
    }
}
