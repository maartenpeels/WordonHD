// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import com.urbanairship.Preferences;
import com.urbanairship.UAirship;

public class LocationPreferences extends Preferences
{

    public LocationPreferences()
    {
        super(UAirship.a().g());
        a("com.urbanairship.location");
    }

    public final boolean a()
    {
        return a("com.urbanairship.location.LOCATION_ENABLED", false);
    }

    public final boolean b()
    {
        return a("com.urbanairship.location.BACKGROUND_LOCATION_ENABLED", false);
    }

    public final boolean c()
    {
        if (a("com.urbanairship.location.BACKGROUND_LOCATION_ENABLED", false))
        {
            return true;
        } else
        {
            return a("com.urbanairship.location.FOREGROUND_LOCATION_ENABLED", true);
        }
    }
}
