// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.app.Application;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.LocationOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.LocationEvent;
import com.urbanairship.util.UAStringUtil;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.urbanairship.location:
//            UALocationManager, LastLocationFinder, LocationPreferences

public class LocationService extends Service
{

    private static final String b;
    private static boolean m = false;
    private static boolean n = false;
    Criteria a;
    private Context c;
    private LastLocationFinder d;
    private Location e;
    private LocationManager f;
    private PendingIntent g;
    private PendingIntent h;
    private ProviderListener i;
    private ProviderListener j;
    private String k;
    private String l;
    private final ILocationService.Stub o = new _cls2();

    public LocationService()
    {
    }

    static LastLocationFinder a(LocationService locationservice)
    {
        return locationservice.d;
    }

    static String a(LocationService locationservice, String s)
    {
        locationservice.k = s;
        return s;
    }

    private void a(int i1)
    {
        Intent intent = (new Intent(getApplicationContext(), com/urbanairship/location/LocationService)).setAction("com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED").putExtra("com.urbanairship.location.REQUESTED_ACCURACY", i1);
        h = PendingIntent.getService(c, 0, intent, 0x10000000);
    }

    private void a(Location location)
    {
        Class class1 = UALocationManager.b().d();
        if (class1 != null)
        {
            location = (new Intent(c, class1)).setAction(".urbanairship.location.LOCATION_UPDATE").putExtra("com.urbanairship.location.LOCATION", location);
            c.sendBroadcast(location);
        }
    }

    static void a(LocationService locationservice, int i1)
    {
        locationservice.a(i1);
    }

    static void a(LocationService locationservice, Location location)
    {
        locationservice.a(location);
    }

    private void a(String s, LocationOptions locationoptions, ProviderListener providerlistener)
    {
        try
        {
            f.requestLocationUpdates(s, locationoptions.d * 1000L, locationoptions.c, providerlistener);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (LocationOptions locationoptions)
        {
            Logger.e((new StringBuilder("Unable to request location updates for provider ")).append(s).toString());
        }
    }

    static boolean a()
    {
        return m;
    }

    private boolean a(String s)
    {
        return b(s) && f.isProviderEnabled(s);
    }

    static Location b(LocationService locationservice, Location location)
    {
        locationservice.e = location;
        return location;
    }

    static String b(LocationService locationservice)
    {
        return locationservice.k;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        n = true;
        c = UAirship.a().g();
        f = (LocationManager)c.getSystemService("location");
        e();
        a(a.getAccuracy());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean b(String s)
    {
        if (s == null || s.length() == 0)
        {
            return false;
        }
        List list = f.getProviders(false);
        return list != null && list.contains(s);
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        if (!m) goto _L2; else goto _L1
_L1:
        Logger.c("Location service already started.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        m = true;
        f();
        g();
        h();
        LocationOptions locationoptions = UAirship.a().h().n;
        if (locationoptions.b && b(l))
        {
            j = new ProviderListener((byte)0);
            a(l, locationoptions, j);
        }
        if (b(b))
        {
            i = new ProviderListener((byte)0);
            a(b, locationoptions, i);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void c(LocationService locationservice)
    {
        locationservice.f();
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        if (i != null)
        {
            f.removeUpdates(i);
        }
        if (j != null)
        {
            f.removeUpdates(j);
        }
        if (m)
        {
            f.removeUpdates(g);
        }
        m = false;
        n = false;
        stopSelf();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void d(LocationService locationservice)
    {
        locationservice.i();
    }

    static String e(LocationService locationservice)
    {
        return locationservice.l;
    }

    private void e()
    {
        LocationOptions locationoptions = UAirship.a().h().n;
        locationoptions.a();
        a = new Criteria();
        if (locationoptions.g == 0)
        {
            a.setAccuracy(locationoptions.f);
        } else
        {
            a.setAccuracy(locationoptions.g);
        }
        a.setPowerRequirement(locationoptions.h);
        a.setCostAllowed(locationoptions.l);
        a.setAltitudeRequired(locationoptions.i);
        a.setSpeedRequired(locationoptions.k);
        a.setBearingRequired(locationoptions.j);
    }

    static Location f(LocationService locationservice)
    {
        return locationservice.e;
    }

    private void f()
    {
        if (UAirship.a().h().n.b)
        {
            l = f.getBestProvider(a, false);
            String s;
            if (a(l))
            {
                s = l;
            } else
            {
                s = f.getBestProvider(a, true);
            }
            k = s;
        } else
        {
            l = b;
            String s1;
            if (a(l))
            {
                s1 = l;
            } else
            {
                s1 = null;
            }
            k = s1;
        }
        Logger.d(String.format("Current location provider: %s, best location provider: %s", new Object[] {
            k, l
        }));
    }

    private void g()
    {
        Logger.c("Invoking last location finder.");
        d = new LastLocationFinder(c);
        _cls1 _lcls1 = new _cls1();
        try
        {
            _lcls1.execute(new Void[0]);
            return;
        }
        catch (Exception exception)
        {
            Logger.c("Unable to execute findLastLocationTask.", exception);
        }
    }

    static void g(LocationService locationservice)
    {
        locationservice.h();
    }

    private void h()
    {
        Intent intent = (new Intent(getApplicationContext(), com/urbanairship/location/LocationService)).setAction("com.urbanairship.location.ACTION_LOCATION_CHANGED").putExtra("com.urbanairship.location.REQUESTED_ACCURACY", a.getAccuracy());
        g = PendingIntent.getBroadcast(c, 0, intent, 0x10000000);
    }

    static void h(LocationService locationservice)
    {
        locationservice.e();
    }

    static LocationManager i(LocationService locationservice)
    {
        return locationservice.f;
    }

    private void i()
    {
        Logger.d("Removing location update requests with the old provider");
        f.removeUpdates(g);
        if (a(k))
        {
            LocationOptions locationoptions = UAirship.a().h().n;
            Logger.d((new StringBuilder("Requesting location updates with the new provider: ")).append(k).toString());
            String s = k;
            PendingIntent pendingintent = g;
            try
            {
                f.requestLocationUpdates(s, locationoptions.d * 1000L, locationoptions.c, pendingintent);
                return;
            }
            catch (Exception exception)
            {
                Logger.e((new StringBuilder("Unable to request location updates for provider ")).append(s).toString());
            }
            return;
        } else
        {
            Logger.d("There are no available providers, waiting to request updates.");
            return;
        }
    }

    static PendingIntent j(LocationService locationservice)
    {
        return locationservice.h;
    }

    static void k(LocationService locationservice)
    {
        locationservice.g();
    }

    public IBinder onBind(Intent intent)
    {
        return o;
    }

    public void onCreate()
    {
        Autopilot.b((Application)getApplicationContext());
        if (!UAirship.a().i())
        {
            Logger.e("LocationService started prior to a UAirship.takeOff() call.");
            throw new IllegalStateException("UAirship.takeOff() must be called every time Application.onCreate() is invoked.");
        }
        super.onCreate();
        if (!n)
        {
            b();
        }
    }

    public void onDestroy()
    {
        Logger.d("Location service destroyed");
        d();
    }

    public void onStart(Intent intent, int i1)
    {
        super.onStart(intent, i1);
        if (intent != null && !UAStringUtil.a(intent.getAction())) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        s = intent.getAction();
        if (!s.equals("com.urbanairship.location.STOP"))
        {
            break; /* Loop/switch isn't completed */
        }
        Logger.c("Location Service stopping.");
        if (m)
        {
            d();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!s.equals("com.urbanairship.location.START"))
        {
            break; /* Loop/switch isn't completed */
        }
        Logger.c("Location Service starting.");
        if (!m)
        {
            c();
        }
        if (UALocationManager.b().c().c())
        {
            i();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        if (!s.equals("com.urbanairship.location.RECORD_CURRENT_LOCATION"))
        {
            break MISSING_BLOCK_LABEL_170;
        }
        Logger.c("Location Service recording current location.");
        if (!m)
        {
            c();
        }
        try
        {
            if (intent.getParcelableExtra("com.urbanairship.location.REQUESTED_CRITERIA") != null)
            {
                intent = (Criteria)intent.getParcelableExtra("com.urbanairship.location.REQUESTED_CRITERIA");
                o.b(intent);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            Logger.e(intent.getMessage());
            return;
        }
        o.b(null);
        return;
        if (s.equals("com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED") || s.equals("com.urbanairship.location.ACTION_LOCATION_CHANGED"))
        {
            Location location = (Location)intent.getExtras().get("location");
            if (location != null)
            {
                Logger.d("Received a location update.");
                Logger.b((new StringBuilder("Location: ")).append(location.toString()).toString());
                com.urbanairship.analytics.LocationEvent.UpdateType updatetype = com.urbanairship.analytics.LocationEvent.UpdateType.a;
                if ("com.urbanairship.location.ACTION_SINGLE_LOCATION_CHANGED".equals(intent.getAction()))
                {
                    Logger.d("Received a single-shot location update.");
                    f.removeUpdates(h);
                    updatetype = com.urbanairship.analytics.LocationEvent.UpdateType.b;
                    if (!UALocationManager.b().c().c())
                    {
                        UALocationManager.e();
                        Intent intent1 = new Intent(c, com/urbanairship/location/LocationService);
                        intent1.setAction("com.urbanairship.location.STOP");
                        Logger.c("LocationService stopService");
                        c.stopService(intent1);
                        i1 = 0;
                    } else
                    {
                        i1 = 0;
                    }
                } else
                {
                    i1 = UAirship.a().h().n.c;
                }
                e = location;
                UAirship.a().k().a(new LocationEvent(location, updatetype, intent.getIntExtra("com.urbanairship.location.REQUESTED_ACCURACY", -1), i1));
                a(e);
                return;
            }
        } else
        {
            Logger.a((new StringBuilder("Unknown action: ")).append(intent.getAction()).toString());
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    static 
    {
        b = com.urbanairship.analytics.LocationEvent.AllowableProvider.b.toString().toLowerCase(Locale.US);
    }

    private class _cls2 extends ILocationService.Stub
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

        public final void a(Location location, int i1, int j1)
        {
            LocationService.b(a, location);
            UAirship.a().k().a(new LocationEvent(LocationService.f(a), com.urbanairship.analytics.LocationEvent.UpdateType.b, i1, j1));
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
            int i1;
            if (criteria == null)
            {
                i1 = a.a.getAccuracy();
            } else
            {
                i1 = criteria.getAccuracy();
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
                LocationService.a(a, i1);
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

        _cls2()
        {
            a = LocationService.this;
            super();
        }
    }


    private class ProviderListener
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

        public void onStatusChanged(String s, int i1, Bundle bundle)
        {
        }

        private ProviderListener()
        {
            a = LocationService.this;
            super();
        }

        ProviderListener(byte byte0)
        {
            this();
        }
    }


    private class _cls1 extends AsyncTask
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
                LocationEvent locationevent = new LocationEvent(((Location) (aobj)), com.urbanairship.analytics.LocationEvent.UpdateType.a, a.a.getAccuracy(), UAirship.a().h().n.c);
                UAirship.a().k().a(locationevent);
                LocationService.a(a, ((Location) (aobj)));
            } else
            {
                Logger.d("No last best location found.");
            }
            return null;
        }

        _cls1()
        {
            a = LocationService.this;
            super();
        }
    }

}
