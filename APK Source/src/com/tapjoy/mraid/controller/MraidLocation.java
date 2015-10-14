// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.listener.Loc;
import com.tapjoy.mraid.view.MraidView;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract

public class MraidLocation extends Abstract
{

    private static final String TAG = "MRAID Location";
    final int INTERVAL = 1000;
    private boolean allowLocationServices;
    private boolean hasPermission;
    private Loc mGps;
    private int mLocListenerCount;
    private LocationManager mLocationManager;
    private Loc mNetwork;

    public MraidLocation(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        hasPermission = false;
        allowLocationServices = false;
        try
        {
            mLocationManager = (LocationManager)context.getSystemService("location");
            if (mLocationManager.getProvider("gps") != null)
            {
                mGps = new Loc(context, 1000, this, "gps");
            }
            if (mLocationManager.getProvider("network") != null)
            {
                mNetwork = new Loc(context, 1000, this, "network");
            }
            hasPermission = true;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MraidView mraidview)
        {
            return;
        }
    }

    private static String formatLocation(Location location)
    {
        return (new StringBuilder()).append("{ lat: ").append(location.getLatitude()).append(", lon: ").append(location.getLongitude()).append(", acc: ").append(location.getAccuracy()).append("}").toString();
    }

    public void allowLocationServices(boolean flag)
    {
        allowLocationServices = flag;
    }

    public boolean allowLocationServices()
    {
        return allowLocationServices;
    }

    public void fail()
    {
        TapjoyLog.e("MRAID Location", "Location can't be determined");
        mMraidView.injectMraidJavaScript("window.mraidview.fireErrorEvent(\"Location cannot be identified\", \"OrmmaLocationController\")");
    }

    public String getLocation()
    {
        TapjoyLog.d("MRAID Location", (new StringBuilder()).append("getLocation: hasPermission: ").append(hasPermission).toString());
        if (!hasPermission)
        {
            return null;
        }
        Iterator iterator = mLocationManager.getProviders(true).iterator();
        Location location = null;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Location location1 = mLocationManager.getLastKnownLocation((String)iterator.next());
            location = location1;
            if (location1 == null)
            {
                continue;
            }
            location = location1;
            break;
        } while (true);
        TapjoyLog.d("MRAID Location", (new StringBuilder()).append("getLocation: ").append(location).toString());
        if (location != null)
        {
            return formatLocation(location);
        } else
        {
            return null;
        }
    }

    public void startLocationListener()
    {
        if (mLocListenerCount == 0)
        {
            if (mNetwork != null)
            {
                mNetwork.start();
            }
            if (mGps != null)
            {
                mGps.start();
            }
        }
        mLocListenerCount = mLocListenerCount + 1;
    }

    public void stopAllListeners()
    {
        mLocListenerCount = 0;
        try
        {
            mGps.stop();
        }
        catch (Exception exception1) { }
        try
        {
            mNetwork.stop();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void stopLocationListener()
    {
        mLocListenerCount = mLocListenerCount - 1;
        if (mLocListenerCount == 0)
        {
            if (mNetwork != null)
            {
                mNetwork.stop();
            }
            if (mGps != null)
            {
                mGps.stop();
            }
        }
    }

    public void success(Location location)
    {
        location = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ location: ").append(formatLocation(location)).append("})").toString();
        TapjoyLog.d("MRAID Location", location);
        mMraidView.injectMraidJavaScript(location);
    }
}
