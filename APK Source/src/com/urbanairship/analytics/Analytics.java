// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// Referenced classes of package com.urbanairship.analytics:
//            EventDataManager, AnalyticsPreferences, LifeCycleCallbacks, ActivityMonitor, 
//            ActivityStartedEvent, ActivityStoppedEvent, Event

public class Analytics
{

    public static final String a = (new StringBuilder()).append(UAirship.b()).append(".urbanairship.analytics.APP_FOREGROUND").toString();
    public static final String b = (new StringBuilder()).append(UAirship.b()).append(".urbanairship.analytics.APP_BACKGROUND").toString();
    Executor c;
    private boolean d;
    private String e;
    private String f;
    private final ActivityMonitor g;
    private final EventDataManager h;
    private final AnalyticsPreferences i;
    private boolean j;
    private boolean k;
    private int l;
    private boolean m;
    private BroadcastReceiver n;

    public Analytics(Application application)
    {
        this(application, (byte)0);
    }

    private Analytics(Application application, byte byte0)
    {
        c = Executors.newSingleThreadExecutor();
        j = false;
        k = false;
        n = new _cls4();
        h = new EventDataManager();
        i = new AnalyticsPreferences();
        l = UAirship.a().h().q;
        m = UAirship.a().h().m;
        d = true;
        String s = UAirship.a().h().f;
        if (m && UAStringUtil.a(s))
        {
            Logger.e("Unable to send analytics to an empty server. Disabling analytics.");
            m = false;
        }
        f();
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            LifeCycleCallbacks.a(application, new _cls2());
            k = true;
        }
        g = new ActivityMonitor(l, android.os.Build.VERSION.SDK_INT, m);
        g.a(new _cls1());
        if (UAirship.c().checkPermission("android.permission.BROADCAST_STICKY", UAirship.b()) == 0)
        {
            j = true;
        }
        application = new IntentFilter();
        application.addAction(b);
        application.addAction(a);
        application.addCategory(UAirship.b());
        UAirship.a().g().registerReceiver(n, application);
    }

    static void a(Analytics analytics)
    {
        analytics.f();
    }

    static boolean a(Analytics analytics, boolean flag)
    {
        analytics.d = flag;
        return flag;
    }

    static void b(Analytics analytics)
    {
        Intent intent = new Intent(a);
        intent.addCategory(UAirship.b());
        if (analytics.j)
        {
            UAirship.a().g().sendStickyBroadcast(intent);
            return;
        } else
        {
            UAirship.a().g().sendBroadcast(intent);
            return;
        }
    }

    static void c(Analytics analytics)
    {
        Intent intent = new Intent(b);
        intent.addCategory(UAirship.b());
        if (analytics.j)
        {
            UAirship.a().g().sendStickyBroadcast(intent);
            return;
        } else
        {
            UAirship.a().g().sendBroadcast(intent);
            return;
        }
    }

    static String d(Analytics analytics)
    {
        analytics.e = null;
        return null;
    }

    static ActivityMonitor e(Analytics analytics)
    {
        return analytics.g;
    }

    private void f()
    {
        f = UUID.randomUUID().toString();
        Logger.b((new StringBuilder("New session: ")).append(f).toString());
    }

    public final void a(Activity activity)
    {
        if (k) goto _L2; else goto _L1
_L1:
        a(((Event) (new ActivityStartedEvent(activity))));
_L4:
        g.a(activity, ActivityMonitor.Source.a);
        return;
_L2:
        if (l >= 14 && m)
        {
            Logger.a("activityStarted call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you.");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(Event event)
    {
        if (m && event != null)
        {
            c.execute(new _cls3(event));
        }
    }

    public final void a(String s)
    {
        Logger.c((new StringBuilder("Setting push conversion id: ")).append(s).toString());
        e = s;
    }

    public final boolean a()
    {
        return !d;
    }

    public final String b()
    {
        return e;
    }

    public final void b(Activity activity)
    {
        if (k) goto _L2; else goto _L1
_L1:
        a(new ActivityStoppedEvent(activity));
_L4:
        g.b(activity, ActivityMonitor.Source.a);
        return;
_L2:
        if (l >= 14 && m)
        {
            Logger.a("activityStopped call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you.");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    final String c()
    {
        return f;
    }

    final EventDataManager d()
    {
        return h;
    }

    final AnalyticsPreferences e()
    {
        return i;
    }


    private class _cls4 extends BroadcastReceiver
    {

        final Analytics a;

        public void onReceive(Context context, Intent intent)
        {
            Logger.b(intent.getAction());
            if (Analytics.b.equals(intent.getAction()))
            {
                Analytics.a(a, true);
            } else
            if (Analytics.a.equals(intent.getAction()))
            {
                Analytics.a(a, false);
                return;
            }
        }

        _cls4()
        {
            a = Analytics.this;
            super();
        }
    }


    private class _cls2
        implements LifeCycleCallbacks.Callback
    {

        final Analytics a;

        public final void a(Activity activity)
        {
            a.a(new ActivityStoppedEvent(activity));
            Analytics.e(a).b(activity, ActivityMonitor.Source.b);
        }

        public final void b(Activity activity)
        {
            a.a(new ActivityStartedEvent(activity));
            Analytics.e(a).a(activity, ActivityMonitor.Source.b);
        }

        _cls2()
        {
            a = Analytics.this;
            super();
        }
    }


    private class _cls1 extends ActivityMonitor.Listener
    {

        final Analytics a;

        public final void a()
        {
            Analytics.a(a);
            Analytics.a(a, false);
            Analytics.b(a);
            a.a(new AppForegroundEvent());
        }

        public final void b()
        {
            Analytics.a(a, true);
            a.a(new AppBackgroundEvent());
            Analytics.c(a);
            Analytics.d(a);
        }

        _cls1()
        {
            a = Analytics.this;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final Event a;
        final Analytics b;

        public void run()
        {
            Logger.b((new StringBuilder("Adding event: ")).append(a).toString());
            EventService.a(a);
        }

        _cls3(Event event)
        {
            b = Analytics.this;
            a = event;
            super();
        }
    }

}
