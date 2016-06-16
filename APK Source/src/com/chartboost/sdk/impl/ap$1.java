// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Tracking.a;

// Referenced classes of package com.chartboost.sdk.impl:
//            bl, ap, ai

class nit> extends bl
{

    final ap a;

    protected void a(MotionEvent motionevent)
    {
        com.chartboost.sdk.Libraries.  = e.a(new com.chartboost.sdk.Libraries.[] {
            e.a("paused", Integer.valueOf(1))
        });
        com.chartboost.sdk.impl.ap.a(a).a(null, );
        com.chartboost.sdk.Tracking.a.a("install-button", com.chartboost.sdk.impl.ap.a(a).m, com.chartboost.sdk.impl.ap.a(a).G, Math.round(motionevent.getX()), Math.round(motionevent.getY()));
    }

    (ap ap1, Context context)
    {
        a = ap1;
        super(context);
    }
}
