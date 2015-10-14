// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Handler;
import com.chartboost.sdk.Libraries.k;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.m;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, b

static final class a
    implements Runnable
{

    final Activity a;

    public void run()
    {
        Chartboost.a.removeCallbacks(Chartboost.f());
        if (Chartboost.b != null && !Chartboost.b.b(a) && Chartboost.g())
        {
            Chartboost.e(Chartboost.b);
            Chartboost.a(Chartboost.b, false);
        }
        Chartboost.a(a, true);
        Chartboost.b = k.a(a);
        Chartboost.a();
        Chartboost.a(a);
        Chartboost.h().b(b.a);
        Chartboost.i().a();
        Chartboost.j().f();
    }

    (Activity activity)
    {
        a = activity;
        super();
    }
}
