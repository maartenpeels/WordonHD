// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.text.format.Time;

// Referenced classes of package com.adobe.air.location:
//            Geolocation

public class AIRLocationListener
    implements LocationListener
{

    private static final int TIMEOUT_INTERVAL = 15000;
    private Geolocation m_geoObj;

    public AIRLocationListener(Geolocation geolocation)
    {
        m_geoObj = geolocation;
    }

    private boolean isRegionFullyContained(double d, double d1, float f, double d2, 
            double d3, float f1)
    {
        float af[] = new float[5];
        Location.distanceBetween(d, d1, d2, d3, af);
        return af[0] <= Math.abs(f1 - f);
    }

    public void onLocationChanged(Location location)
    {
        if (location == null) goto _L2; else goto _L1
_L1:
        double d;
        double d1;
        double d2;
        float f;
        float f1;
        float f2;
        String s;
        long l;
        s = location.getProvider();
        m_geoObj.m_currentTime.setToNow();
        d = location.getLatitude();
        d1 = location.getLongitude();
        d2 = location.getAltitude();
        f = location.getAccuracy();
        f1 = location.getAccuracy();
        f2 = location.getSpeed();
        l = m_geoObj.m_currentTime.toMillis(false);
        if (s.compareTo("gps") != 0) goto _L4; else goto _L3
_L3:
        m_geoObj.m_ignoreLastGPSValue = false;
        m_geoObj.m_gpsLatitude = d;
        m_geoObj.m_gpsLongitude = d1;
        m_geoObj.m_gpsAltitude = d2;
        m_geoObj.m_gpsHorizontalAaccuracy = f;
        m_geoObj.m_gpsVerticalAccuracy = f1;
        m_geoObj.m_gpsSpeed = f2;
        m_geoObj.m_gpsTimestamp = m_geoObj.m_currentTime.toMillis(false);
_L7:
        m_geoObj.m_latitude = d;
        m_geoObj.m_longitude = d1;
        m_geoObj.m_altitude = d2;
        m_geoObj.m_horizontalAaccuracy = f;
        m_geoObj.m_verticalAccuracy = f1;
        m_geoObj.m_speed = f2;
        m_geoObj.m_timestamp = l;
        if (m_geoObj.m_EventSourceExists)
        {
            m_geoObj.updateGeolocationCache(m_geoObj.m_objectPointer);
        }
_L2:
        return;
_L4:
        if (s.compareTo("network") != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        m_geoObj.m_networkLatitude = d;
        m_geoObj.m_networkLongitude = d1;
        m_geoObj.m_networkAltitude = d2;
        m_geoObj.m_networkHorizontalAaccuracy = f;
        m_geoObj.m_networkVerticalAccuracy = f1;
        m_geoObj.m_networkSpeed = f2;
        m_geoObj.m_networkTimestamp = m_geoObj.m_currentTime.toMillis(false);
        if (!m_geoObj.m_ignoreLastGPSValue && m_geoObj.m_networkTimestamp - m_geoObj.m_gpsTimestamp < 15000L && m_geoObj.m_networkHorizontalAaccuracy > m_geoObj.m_gpsHorizontalAaccuracy && isRegionFullyContained(m_geoObj.m_gpsLatitude, m_geoObj.m_gpsLongitude, m_geoObj.m_gpsHorizontalAaccuracy, m_geoObj.m_networkLatitude, m_geoObj.m_networkLongitude, m_geoObj.m_networkHorizontalAaccuracy)) goto _L2; else goto _L5
_L5:
        m_geoObj.m_ignoreLastGPSValue = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onProviderDisabled(String s)
    {
        boolean flag;
        boolean flag1;
        flag = m_geoObj.m_isGPSProviderEnabled;
        flag1 = m_geoObj.m_isNetworkProviderEnabled;
        if (s.compareTo("gps") != 0) goto _L2; else goto _L1
_L1:
        m_geoObj.m_isGPSProviderEnabled = false;
          goto _L3
_L2:
        if (s.compareTo("network") != 0) goto _L3; else goto _L4
_L4:
        m_geoObj.m_isNetworkProviderEnabled = false;
_L3:
        if (flag == m_geoObj.m_isGPSProviderEnabled && flag1 == m_geoObj.m_isNetworkProviderEnabled || !m_geoObj.m_EventSourceExists || m_geoObj.m_isGPSProviderEnabled || m_geoObj.m_isNetworkProviderEnabled)
        {
            return;
        } else
        {
            m_geoObj.setGeolocationStatus(false, m_geoObj.m_objectPointer);
            return;
        }
    }

    public void onProviderEnabled(String s)
    {
        boolean flag = m_geoObj.m_isGPSProviderEnabled;
        boolean flag1 = m_geoObj.m_isNetworkProviderEnabled;
        if (s.compareTo("gps") == 0)
        {
            m_geoObj.m_isGPSProviderEnabled = true;
            if (m_geoObj.m_EventSourceExists && !m_geoObj.m_isNetworkProviderEnabled && flag != m_geoObj.m_isGPSProviderEnabled)
            {
                m_geoObj.setGeolocationStatus(true, m_geoObj.m_objectPointer);
            }
        } else
        if (s.compareTo("network") == 0)
        {
            m_geoObj.m_isNetworkProviderEnabled = true;
            if (m_geoObj.m_EventSourceExists && !m_geoObj.m_isGPSProviderEnabled && flag1 != m_geoObj.m_isNetworkProviderEnabled)
            {
                m_geoObj.setGeolocationStatus(true, m_geoObj.m_objectPointer);
                return;
            }
        }
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }
}
