// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.urbanairship:
//            ApplicationMetrics, Preferences

class t> extends BroadcastReceiver
{

    final ApplicationMetrics a;

    public void onReceive(Context context, Intent intent)
    {
        ApplicationMetrics.a(a).a("com.urbanairship.application.metrics.LAST_OPEN", Long.valueOf(System.currentTimeMillis()));
    }

    (ApplicationMetrics applicationmetrics)
    {
        a = applicationmetrics;
        super();
    }
}
