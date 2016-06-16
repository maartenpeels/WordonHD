// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import java.util.concurrent.Callable;

// Referenced classes of package com.heyzap.internal:
//            AdvertisingIdClient, Logger, Utils

class AdvertisingIdCallable
    implements Callable
{

    private Context context;

    public AdvertisingIdCallable(Context context1)
    {
        context = context1;
    }

    public Boolean call()
        throws Exception
    {
        String s;
        boolean flag;
        Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        AdvertisingIdClient.AdInfo adinfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
        Logger.log("Using Google Play Services...");
        s = adinfo.getId();
        flag = adinfo.isLimitAdTrackingEnabled();
        Object obj = Boolean.valueOf(flag);
_L1:
        Exception exception;
        boolean flag1;
        try
        {
            Utils.setAdvertisingId(s);
            Utils.setLimitAdTracking(((Boolean) (obj)));
        }
        catch (Exception exception1)
        {
            Logger.trace(exception1);
            Utils.setAdvertisingId(null);
            Utils.setLimitAdTracking(Boolean.valueOf(false));
        }
        return Boolean.valueOf(true);
        exception;
        Logger.trace(exception);
        Logger.log("Using Heyzap Google Play Services Client as fallback...");
        exception = AdvertisingIdClient.getAdvertisingIdInfo(context);
        s = exception.getId();
        flag1 = exception.isLimitAdTrackingEnabled();
        exception = Boolean.valueOf(flag1);
          goto _L1
    }

    public volatile Object call()
        throws Exception
    {
        return call();
    }
}
