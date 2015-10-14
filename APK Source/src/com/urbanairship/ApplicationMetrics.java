// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.Context;
import android.content.IntentFilter;
import com.urbanairship.analytics.Analytics;

// Referenced classes of package com.urbanairship:
//            Preferences, UAirship

public class ApplicationMetrics
{

    private final Preferences a;

    ApplicationMetrics(Context context)
    {
        a = new Preferences(context);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Analytics.a);
        intentfilter.addCategory(UAirship.b());
        context.registerReceiver(new _cls1(), intentfilter);
    }

    static Preferences a(ApplicationMetrics applicationmetrics)
    {
        return applicationmetrics.a;
    }

    public final long a()
    {
        return a.a("com.urbanairship.application.metrics.LAST_OPEN", -1L);
    }

    private class _cls1 extends BroadcastReceiver
    {

        final ApplicationMetrics a;

        public void onReceive(Context context, Intent intent)
        {
            ApplicationMetrics.a(a).a("com.urbanairship.application.metrics.LAST_OPEN", Long.valueOf(System.currentTimeMillis()));
        }

        _cls1()
        {
            a = ApplicationMetrics.this;
            super();
        }
    }

}
