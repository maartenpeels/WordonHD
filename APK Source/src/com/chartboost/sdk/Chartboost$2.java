// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Handler;
import com.chartboost.sdk.Libraries.k;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        if (Chartboost.b == null || Chartboost.b.b(a))
        {
            Chartboost.a.removeCallbacks(Chartboost.f());
            Chartboost.b(new <init>(null));
            Chartboost.a.postDelayed(Chartboost.f(), 10000L);
        }
        Chartboost.b(a);
    }

    (Activity activity)
    {
        a = activity;
        super();
    }
}
