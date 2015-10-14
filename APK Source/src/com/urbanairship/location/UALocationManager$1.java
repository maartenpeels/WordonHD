// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.analytics.Analytics;

// Referenced classes of package com.urbanairship.location:
//            UALocationManager, LocationPreferences

final class  extends BroadcastReceiver
{

    public final void onReceive(Context context, Intent intent)
    {
        boolean flag = UALocationManager.a(UALocationManager.f()).a();
        boolean flag1 = UALocationManager.a(UALocationManager.f()).b();
        boolean flag2 = UALocationManager.a(UALocationManager.f()).c();
        if (flag && !flag1)
        {
            if (Analytics.b.equals(intent.getAction()))
            {
                UALocationManager.g();
                return;
            }
            if (Analytics.a.equals(intent.getAction()) && flag2)
            {
                UALocationManager.h();
                return;
            }
        }
    }

    ()
    {
    }
}
