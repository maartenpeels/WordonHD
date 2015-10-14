// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import java.util.Iterator;
import java.util.List;

public class LastLocationFinder
{

    private LocationManager a;

    public LastLocationFinder(Context context)
    {
        this((LocationManager)context.getSystemService("location"));
    }

    private LastLocationFinder(LocationManager locationmanager)
    {
        a = locationmanager;
    }

    public final Location a(long l, Criteria criteria)
    {
        criteria = a.getProviders(criteria, true);
        if (criteria == null) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        iterator = criteria.iterator();
        criteria = null;
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        String s = (String)iterator.next();
        Location location = a.getLastKnownLocation(s);
        if (location != null)
        {
            Object obj = location;
            if (criteria != null)
            {
                if (location.getTime() > criteria.getTime())
                {
                    obj = location;
                } else
                {
                    obj = criteria;
                }
            }
            criteria = ((Criteria) (obj));
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (criteria != null) goto _L7; else goto _L6
_L6:
        obj = null;
_L9:
        return ((Location) (obj));
_L7:
        obj = criteria;
        if (l >= System.currentTimeMillis() - criteria.getTime()) goto _L9; else goto _L8
_L8:
        return null;
_L2:
        criteria = null;
        if (true) goto _L4; else goto _L10
_L10:
    }
}
