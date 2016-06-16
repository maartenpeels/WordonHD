// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            TDLocationListener

public class TDLocationManager
{

    static final String TAG = com/threatmetrix/TrustDefenderMobile/TDLocationManager.getName();
    private int m_accuracy;
    private Context m_context;
    private long m_highPowerUpdateTime;
    private Location m_location;
    private TDLocationListener m_locationListener;
    private LocationManager m_locationManager;
    private long m_lowPowerUpdateTime;
    private boolean m_paused;

    public TDLocationManager()
    {
        m_paused = false;
    }

    private void getLastLocation()
    {
        float f = 3.402823E+38F;
        long l = 0L;
        Location location = null;
        String s = TAG;
        Iterator iterator = m_locationManager.getAllProviders().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (String)iterator.next();
            obj = m_locationManager.getLastKnownLocation(((String) (obj)));
            if (obj != null)
            {
                String s1 = TAG;
                (new StringBuilder("getLastLocation() : ")).append(((Location) (obj)).getProvider()).append(":").append(((Location) (obj)).getLatitude()).append(":").append(((Location) (obj)).getLongitude()).append(":").append(((Location) (obj)).getAccuracy());
                float f1 = ((Location) (obj)).getAccuracy();
                long l1 = ((Location) (obj)).getTime();
                if (l1 > m_lowPowerUpdateTime && f1 < f)
                {
                    location = ((Location) (obj));
                    f = f1;
                    l = l1;
                } else
                if (l1 < m_lowPowerUpdateTime && f == 3.402823E+38F && l1 > l)
                {
                    location = ((Location) (obj));
                    l = l1;
                }
            }
        } while (true);
        if (location != null)
        {
            setLocation(location);
        }
    }

    private boolean registerLocationServices()
    {
        Object obj;
        Object obj1;
        boolean flag;
        boolean flag2;
        obj = TAG;
        (new StringBuilder("registerLocationServices: low power ")).append(m_lowPowerUpdateTime).append(" high power ").append(m_highPowerUpdateTime).append(" with accuracy ").append(m_accuracy);
        m_locationManager = (LocationManager)m_context.getSystemService("location");
        if (m_locationManager == null)
        {
            Log.e(TAG, "Insufficient permissions to acquire location manager");
            return false;
        }
        if (m_locationListener != null)
        {
            m_locationManager.removeUpdates(m_locationListener);
        }
        obj = new Criteria();
        ((Criteria) (obj)).setAccuracy(m_accuracy);
        ((Criteria) (obj)).setAltitudeRequired(false);
        ((Criteria) (obj)).setBearingAccuracy(0);
        ((Criteria) (obj)).setCostAllowed(false);
        ((Criteria) (obj)).setSpeedAccuracy(0);
        ((Criteria) (obj)).setSpeedRequired(false);
        ((Criteria) (obj)).setVerticalAccuracy(0);
        obj1 = new Criteria();
        ((Criteria) (obj1)).setPowerRequirement(1);
        ((Criteria) (obj1)).setAccuracy(2);
        String s = m_locationManager.getBestProvider(((Criteria) (obj)), true);
        if (s != null)
        {
            String s2 = TAG;
            (new StringBuilder("fine provider: ")).append(s);
        }
        String s3 = m_locationManager.getBestProvider(((Criteria) (obj1)), true);
        if (s3 != null)
        {
            String s4 = TAG;
            (new StringBuilder("course provider: ")).append(s3);
        }
        if (s == null && s3 == null)
        {
            m_locationListener = null;
            m_locationManager = null;
            Log.e(TAG, "Unable to find location provider, possibly incorrect permissions. Check that android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION is set");
            return false;
        }
        getLastLocation();
        flag = false;
        flag2 = flag;
        if (s != null)
        {
            flag2 = flag;
            if (s3 != null)
            {
                flag2 = s.equals(s3);
            }
        }
        flag = false;
        m_locationListener = new TDLocationListener();
        m_locationManager.requestLocationUpdates(m_lowPowerUpdateTime, 0.0F, ((Criteria) (obj1)), m_locationListener, null);
        boolean flag1;
        boolean flag3;
        flag3 = true;
        flag1 = true;
        flag = flag3;
        String s1 = TAG;
        flag = flag3;
        (new StringBuilder("LocationManager created: ")).append(m_locationManager.getBestProvider(((Criteria) (obj1)), true));
        flag = flag1;
_L2:
        flag1 = flag;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_435;
        }
        m_locationManager.requestLocationUpdates(m_highPowerUpdateTime, 0.0F, ((Criteria) (obj)), m_locationListener, null);
        flag2 = true;
        flag1 = true;
        flag = flag2;
        obj1 = TAG;
        flag = flag2;
        SecurityException securityexception1;
        try
        {
            (new StringBuilder("LocationManager created: ")).append(m_locationManager.getBestProvider(((Criteria) (obj)), true));
        }
        catch (SecurityException securityexception)
        {
            Log.e(TAG, (new StringBuilder("Security settings error:")).append(securityexception.getLocalizedMessage()).toString());
            flag1 = flag;
        }
        if (!flag1)
        {
            m_locationListener = null;
            m_locationManager = null;
        }
        return flag1;
        securityexception1;
        Log.e(TAG, (new StringBuilder("Security settings error:")).append(securityexception1.getLocalizedMessage()).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean enabled()
    {
        return m_locationManager != null && m_locationListener != null;
    }

    public Location getLocation()
    {
        Location location1 = m_location;
        Location location = location1;
        if (location1 == null)
        {
            location = location1;
            if (m_locationListener != null)
            {
                location = m_locationListener.getLastLocation();
            }
        }
        return location;
    }

    public void pause()
    {
        if (!m_paused && enabled())
        {
            String s = TAG;
            m_locationManager.removeUpdates(m_locationListener);
            m_paused = true;
        }
    }

    public boolean registerLocationServices(Context context, long l, long l1, int i)
    {
        m_context = context;
        m_lowPowerUpdateTime = l;
        m_highPowerUpdateTime = l1;
        m_accuracy = i;
        return registerLocationServices();
    }

    public void resume()
    {
        if (m_paused)
        {
            String s = TAG;
            registerLocationServices();
            m_paused = false;
        }
    }

    final void setLocation(Location location)
    {
        m_location = new Location(location);
    }

    public void unregister()
    {
        if (enabled())
        {
            m_locationManager.removeUpdates(m_locationListener);
        }
    }

}
