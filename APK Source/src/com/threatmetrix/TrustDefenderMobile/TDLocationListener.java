// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

public class TDLocationListener
    implements LocationListener
{

    static final String TAG = com/threatmetrix/TrustDefenderMobile/TDLocationListener.getName();
    private static final int TWO_MINUTES = 0x1d4c0;
    Location m_currentBestLocation;

    public TDLocationListener()
    {
        m_currentBestLocation = null;
    }

    private static boolean isSameProvider(String s, String s1)
    {
        if (s == null)
        {
            return s1 == null;
        } else
        {
            return s.equals(s1);
        }
    }

    public Location getLastLocation()
    {
        if (m_currentBestLocation != null)
        {
            return new Location(m_currentBestLocation);
        } else
        {
            return null;
        }
    }

    protected boolean isBetterLocation(Location location, Location location1)
    {
        if (location1 == null)
        {
            return true;
        }
        long l = location.getTime() - location1.getTime();
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (l > 0x1d4c0L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (l < 0xfffffffffffe2b40L)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag1)
        {
            return true;
        }
        if (flag2)
        {
            return false;
        }
        int i = (int)(location.getAccuracy() - location1.getAccuracy());
        boolean flag3;
        boolean flag4;
        if (i > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (i < 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (i > 200)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        location = location.getProvider();
        location1 = location1.getProvider();
        if (location == null)
        {
            if (location1 == null)
            {
                flag4 = true;
            } else
            {
                flag4 = false;
            }
        } else
        {
            flag4 = location.equals(location1);
        }
        if (flag2)
        {
            return true;
        }
        if (flag && !flag1)
        {
            return true;
        }
        return flag && !flag3 && flag4;
    }

    public void onLocationChanged(Location location)
    {
        String s = TAG;
        (new StringBuilder("onLocationChanged() : ")).append(location.getProvider()).append(":").append(location.getLatitude()).append(":").append(location.getLongitude()).append(":").append(location.getAccuracy());
        if (isBetterLocation(location, m_currentBestLocation))
        {
            m_currentBestLocation = location;
        }
    }

    public void onProviderDisabled(String s)
    {
        String s1 = TAG;
        (new StringBuilder("onProviderDisabled: ")).append(s);
    }

    public void onProviderEnabled(String s)
    {
        String s1 = TAG;
        (new StringBuilder("onProviderEnabled: ")).append(s);
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        bundle = TAG;
        bundle = (new StringBuilder("onStatusChanged: ")).append(s).append(" status: ");
        if (i == 2)
        {
            s = "available ";
        } else
        if (i == 1)
        {
            s = "temporarily unavailable";
        } else
        if (i == 0)
        {
            s = "Out of Service";
        } else
        {
            s = "unknown";
        }
        bundle.append(s);
    }

}
