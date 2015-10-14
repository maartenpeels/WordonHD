// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import java.lang.reflect.Method;

// Referenced classes of package com.tapjoy:
//            TapjoyConnectCore, TapjoyLog

class this._cls0
    implements Runnable
{

    final TapjoyConnectCore this$0;

    public void run()
    {
        Object obj;
        Method method;
        Method method1;
        obj = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        method = ((Class) (obj)).getMethod("getAdvertisingIdInfo", new Class[] {
            android/content/Context
        });
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found method: ").append(method).toString());
        obj = method.invoke(obj, new Object[] {
            TapjoyConnectCore.access$200()
        });
        method = obj.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]);
        method1 = obj.getClass().getMethod("getId", new Class[0]);
        boolean flag;
        if (!((Boolean)method.invoke(obj, new Object[0])).booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            TapjoyConnectCore.adTrackingEnabled = flag;
            TapjoyConnectCore.advertisingID = (String)method1.invoke(obj, new Object[0]);
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Found advertising ID: ").append(TapjoyConnectCore.advertisingID).toString());
            TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("Is ad tracking enabled: ").append(Boolean.toString(TapjoyConnectCore.adTrackingEnabled)).toString());
        }
        catch (Exception exception)
        {
            TapjoyLog.i("TapjoyConnect", "Error getting advertisingID from Google Play Services");
        }
        if (TapjoyConnectCore.access$300())
        {
            TapjoyLog.i("TapjoyConnect", "Disabling persistent IDs. Do this only if you are not using Tapjoy to manage currency.");
        }
        completeConnectCall();
        return;
    }

    ()
    {
        this$0 = TapjoyConnectCore.this;
        super();
    }
}
