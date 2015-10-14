// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.analytics:
//            Analytics

class > extends BroadcastReceiver
{

    final Analytics a;

    public void onReceive(Context context, Intent intent)
    {
        Logger.b(intent.getAction());
        if (Analytics.b.equals(intent.getAction()))
        {
            Analytics.a(a, true);
        } else
        if (Analytics.a.equals(intent.getAction()))
        {
            Analytics.a(a, false);
            return;
        }
    }

    (Analytics analytics)
    {
        a = analytics;
        super();
    }
}
