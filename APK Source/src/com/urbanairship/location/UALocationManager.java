// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;

// Referenced classes of package com.urbanairship.location:
//            LocationPreferences, LocationService, ILocationService

public class UALocationManager
{

    private static final UALocationManager a = new UALocationManager();
    private static boolean b = false;
    private static Context c;
    private static ILocationService d;
    private BroadcastReceiver e;
    private ServiceConnection f;
    private LocationPreferences g;
    private Class h;

    private UALocationManager()
    {
    }

    static ILocationService a(ILocationService ilocationservice)
    {
        d = ilocationservice;
        return ilocationservice;
    }

    static LocationPreferences a(UALocationManager ualocationmanager)
    {
        return ualocationmanager.g;
    }

    public static void a()
    {
        if (UAirship.a().i())
        {
            c = UAirship.a().g();
            a.g = new LocationPreferences();
            IntentFilter intentfilter;
            if (a.g.a() && a.g.b())
            {
                j();
            } else
            {
                Logger.c("Location or background location are not enabled - deferring service start until foreground event.");
            }
            a.e = new _cls1();
            a.f = new _cls2();
            intentfilter = new IntentFilter();
            intentfilter.addAction(Analytics.b);
            intentfilter.addAction(Analytics.a);
            intentfilter.addCategory(UAirship.b());
            UAirship.a().g().registerReceiver(a.e, intentfilter);
            return;
        } else
        {
            throw new IllegalStateException("UAirship.takeOff must be called before UALocationManager.init!");
        }
    }

    static boolean a(boolean flag)
    {
        b = flag;
        return flag;
    }

    public static UALocationManager b()
    {
        return a;
    }

    static Class b(UALocationManager ualocationmanager)
    {
        return ualocationmanager.h;
    }

    public static void e()
    {
        if (b)
        {
            c.unbindService(a.f);
        }
        if (a.h != null)
        {
            c.sendBroadcast((new Intent(c, a.h)).setAction("com.urbanairship.location.LOCATION_SERVICE_UNBOUND"));
        }
        b = false;
    }

    static UALocationManager f()
    {
        return a;
    }

    static void g()
    {
        e();
        Logger.c("UALocationManager stopService");
        Intent intent = new Intent(c, com/urbanairship/location/LocationService);
        intent.setAction("com.urbanairship.location.STOP");
        c.stopService(intent);
    }

    static void h()
    {
        j();
        if (!b)
        {
            b = true;
            Intent intent = new Intent(c, com/urbanairship/location/LocationService);
            c.bindService(intent, a.f, 1);
        }
    }

    static Context i()
    {
        return c;
    }

    private static void j()
    {
        Logger.c("UALocationManager startService");
        Intent intent = new Intent(c, com/urbanairship/location/LocationService);
        intent.setAction("com.urbanairship.location.START");
        c.startService(intent);
    }

    public final LocationPreferences c()
    {
        return g;
    }

    public final Class d()
    {
        return h;
    }


    private class _cls1 extends BroadcastReceiver
    {

        public final void onReceive(Context context, Intent intent)
        {
            boolean flag = UALocationManager.a(UALocationManager.f()).a();
            boolean flag1 = UALocationManager.a(UALocationManager.f()).b();
            boolean flag2 = UALocationManager.a(UALocationManager.f()).c();
            if (flag && !flag1)
            {
                if (Analytics.b.equals(intent.getAction()))
                {
                    UALocationManager.g();
                    return;
                }
                if (Analytics.a.equals(intent.getAction()) && flag2)
                {
                    UALocationManager.h();
                    return;
                }
            }
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements ServiceConnection
    {

        public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            UALocationManager.a(ILocationService.Stub.a(ibinder));
            UALocationManager.a(true);
            if (UALocationManager.b(UALocationManager.f()) != null)
            {
                UALocationManager.i().sendBroadcast((new Intent(UALocationManager.i(), UALocationManager.b(UALocationManager.f()))).setAction("com.urbanairship.location.LOCATION_SERVICE_BOUND"));
            }
        }

        public final void onServiceDisconnected(ComponentName componentname)
        {
            UALocationManager.a(null);
            UALocationManager.a(false);
            if (UALocationManager.b(UALocationManager.f()) != null)
            {
                UALocationManager.i().sendBroadcast((new Intent(UALocationManager.i(), UALocationManager.b(UALocationManager.f()))).setAction("com.urbanairship.location.LOCATION_SERVICE_UNBOUND"));
            }
            Logger.d("LocationService unbound.");
        }

        _cls2()
        {
        }
    }

}
