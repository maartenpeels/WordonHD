// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            AdvertisingIdClient

public static final class limitAdTrackingEnabled
{

    private final String advertisingId;
    private final boolean limitAdTrackingEnabled;

    public String getId()
    {
        return advertisingId;
    }

    public boolean isLimitAdTrackingEnabled()
    {
        return limitAdTrackingEnabled;
    }

    (String s, boolean flag)
    {
        advertisingId = s;
        limitAdTrackingEnabled = flag;
    }
}
