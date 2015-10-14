// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.location.Criteria;
import android.location.Location;
import android.os.AsyncTask;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.LocationOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.LocationEvent;
import java.util.Locale;

// Referenced classes of package com.urbanairship.location:
//            LocationService, LastLocationFinder

class a extends AsyncTask
{

    final LocationService a;

    protected Object doInBackground(Object aobj[])
    {
        aobj = UAirship.a().h().n;
        aobj = LocationService.a(a).a(((LocationOptions) (aobj)).d * 1000L, a.a);
        if (aobj != null)
        {
            Logger.d(String.format(Locale.US, "Last best location found at lat: %f, long: %f with provider: %s", new Object[] {
                Double.valueOf(((Location) (aobj)).getLatitude()), Double.valueOf(((Location) (aobj)).getLongitude()), ((Location) (aobj)).getProvider()
            }));
            LocationEvent locationevent = new LocationEvent(((Location) (aobj)), com.urbanairship.analytics.teType.a, a.a.getAccuracy(), UAirship.a().h().n.c);
            UAirship.a().k().a(locationevent);
            LocationService.a(a, ((Location) (aobj)));
        } else
        {
            Logger.d("No last best location found.");
        }
        return null;
    }

    ateType(LocationService locationservice)
    {
        a = locationservice;
        super();
    }
}
