// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;

// Referenced classes of package com.urbanairship.location:
//            LocationService

class <init>
    implements LocationListener
{

    final LocationService a;

    public void onLocationChanged(Location location)
    {
    }

    public void onProviderDisabled(String s)
    {
        Logger.d((new StringBuilder("Location provider disabled: ")).append(s).toString());
        if (s.equals(LocationService.b(a)))
        {
            Logger.d((new StringBuilder("Current provider (")).append(s).append(") disabled, resetting providers.").toString());
            LocationService.c(a);
            LocationService.d(a);
        }
    }

    public void onProviderEnabled(String s)
    {
        Logger.d((new StringBuilder("Location provider enabled: ")).append(s).toString());
        if (!s.equals(LocationService.b(a)) && s.equals(LocationService.e(a)) || UAStringUtil.a(LocationService.b(a)))
        {
            Logger.d((new StringBuilder("Best provider (")).append(s).append(") now available; resetting providers.").toString());
            LocationService.a(a, s);
            LocationService.d(a);
        }
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    private (LocationService locationservice)
    {
        a = locationservice;
        super();
    }

    a(LocationService locationservice, byte byte0)
    {
        this(locationservice);
    }
}
