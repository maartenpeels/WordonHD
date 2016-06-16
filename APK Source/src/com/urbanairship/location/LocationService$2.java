// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.LocationEvent;
import com.urbanairship.util.UAStringUtil;

// Referenced classes of package com.urbanairship.location:
//            LocationService

class tub extends tub
{

    final LocationService a;

    public final Location a()
    {
        return LocationService.f(a);
    }

    public final void a(Criteria criteria)
    {
        a.a = criteria;
        LocationService.g(a);
    }

    public final void a(Location location, int i, int j)
    {
        LocationService.b(a, location);
        UAirship.a().k().a(new LocationEvent(LocationService.f(a), com.urbanairship.analytics.teType.b, i, j));
    }

    public final Criteria b()
    {
        return a.a;
    }

    public final void b(Criteria criteria)
    {
        Logger.d("Requesting a single update.");
        if (criteria == null && UAStringUtil.a(LocationService.b(a)))
        {
            LocationService.h(a);
            LocationService.c(a);
        }
        int i;
        if (criteria == null)
        {
            i = a.a.getAccuracy();
        } else
        {
            i = criteria.getAccuracy();
        }
        if (criteria == null)
        {
            criteria = LocationService.b(a);
        } else
        {
            criteria = LocationService.i(a).getBestProvider(criteria, true);
        }
        if (!UAStringUtil.a(criteria))
        {
            LocationService.a(a, i);
            LocationService.i(a).requestLocationUpdates(criteria, 0L, 0.0F, LocationService.j(a));
            return;
        } else
        {
            Logger.c("There are no available location providers. Retrieving last known location.");
            LocationService.k(a);
            return;
        }
    }

    public final void c()
    {
        LocationService.c(a);
        if (LocationService.a())
        {
            LocationService.d(a);
        }
    }

    public final String d()
    {
        return LocationService.b(a);
    }

    public final String e()
    {
        return LocationService.e(a);
    }

    ateType(LocationService locationservice)
    {
        a = locationservice;
        super();
    }
}
