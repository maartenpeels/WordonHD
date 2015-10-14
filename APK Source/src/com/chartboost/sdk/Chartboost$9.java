// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import com.chartboost.sdk.Libraries.k;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        k k1 = k.a(a);
        if (Chartboost.d(k1))
        {
            Chartboost.e(k1);
        }
    }

    (Activity activity)
    {
        a = activity;
        super();
    }
}
