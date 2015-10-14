// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.location;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.text.format.Time;

// Referenced classes of package com.adobe.air.location:
//            AIRLocationListener

public class Geolocation
{

    private AIRLocationListener mGPSListener;
    private LocationManager mLocationManager;
    private AIRLocationListener mNetworkListener;
    protected boolean m_EventSourceExists;
    protected double m_altitude;
    private Context m_context;
    protected Time m_currentTime;
    protected double m_gpsAltitude;
    protected float m_gpsHorizontalAaccuracy;
    protected double m_gpsLatitude;
    protected double m_gpsLongitude;
    protected float m_gpsSpeed;
    protected long m_gpsTimestamp;
    protected float m_gpsVerticalAccuracy;
    protected float m_horizontalAaccuracy;
    protected boolean m_ignoreLastGPSValue;
    protected boolean m_isGPSProviderEnabled;
    protected boolean m_isNetworkProviderEnabled;
    protected double m_latitude;
    protected double m_longitude;
    protected double m_networkAltitude;
    protected float m_networkHorizontalAaccuracy;
    protected double m_networkLatitude;
    protected double m_networkLongitude;
    protected float m_networkSpeed;
    protected long m_networkTimestamp;
    protected float m_networkVerticalAccuracy;
    protected long m_objectPointer;
    protected float m_speed;
    protected long m_timestamp;
    private long m_upateInterval;
    protected float m_verticalAccuracy;

    public Geolocation(Context context)
    {
        try
        {
            m_context = context;
            m_EventSourceExists = true;
            mGPSListener = new AIRLocationListener(this);
            mNetworkListener = new AIRLocationListener(this);
            mLocationManager = (LocationManager)m_context.getSystemService("location");
            m_isGPSProviderEnabled = mLocationManager.isProviderEnabled("gps");
            m_isNetworkProviderEnabled = mLocationManager.isProviderEnabled("network");
            m_currentTime = new Time();
            m_currentTime.setToNow();
            m_ignoreLastGPSValue = false;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    protected void addGPSListener()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location.gps"))
        {
            android.location.Location location = mLocationManager.getLastKnownLocation("gps");
            mGPSListener.onLocationChanged(location);
            mLocationManager.requestLocationUpdates("gps", m_upateInterval, 0.0F, mGPSListener);
        }
    }

    protected void addLocationListeners()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location"))
        {
            addGPSListener();
            addNetworkListener();
        }
    }

    protected void addNetworkListener()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location.network"))
        {
            mLocationManager.requestLocationUpdates("network", m_upateInterval, 0.0F, mNetworkListener);
        }
    }

    public boolean isGeolocationMuted()
    {
        return !m_isGPSProviderEnabled && !m_isNetworkProviderEnabled;
    }

    protected void releaseAllResources()
    {
        m_EventSourceExists = false;
        removeLocationListeners();
    }

    protected void removeGPSListener()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location.gps"))
        {
            mLocationManager.removeUpdates(mGPSListener);
        }
    }

    protected void removeLocationListeners()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location"))
        {
            removeGPSListener();
            removeNetworkListener();
        }
    }

    protected void removeNetworkListener()
    {
        if (m_context.getPackageManager().hasSystemFeature("android.hardware.location.network"))
        {
            mLocationManager.removeUpdates(mNetworkListener);
        }
    }

    public void setGeolocationEventSource(long l)
    {
        try
        {
            m_objectPointer = l;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected native void setGeolocationStatus(boolean flag, long l);

    public void setUpdateTimeAndRegister(long l, long l1)
    {
        try
        {
            m_objectPointer = l1;
            m_upateInterval = l;
            addLocationListeners();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected native void updateGeolocationCache(long l);
}
