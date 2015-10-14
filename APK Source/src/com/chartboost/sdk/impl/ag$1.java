// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import com.chartboost.sdk.Tracking.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            bl, ag, ai

class nit> extends bl
{

    final ag a;

    protected void a(MotionEvent motionevent)
    {
        a.a.p().h();
        com.chartboost.sdk.Tracking.a.a("install-click", a.a.m, a.a.G, Math.round(motionevent.getX()), Math.round(motionevent.getY()));
    }

    (ag ag1, Context context)
    {
        a = ag1;
        super(context);
    }
}
