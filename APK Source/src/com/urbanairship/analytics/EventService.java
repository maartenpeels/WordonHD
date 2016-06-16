// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.AlarmManager;
import android.app.Application;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.LocationOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.restclient.Response;
import java.util.Map;
import org.apache.http.Header;

// Referenced classes of package com.urbanairship.analytics:
//            EventAPIClient, AnalyticsPreferences, Event, Analytics, 
//            EventDataManager

public class EventService extends IntentService
{

    private static long a = 0L;
    private EventAPIClient b;
    private EventDataManager c;
    private AnalyticsPreferences d;

    public EventService()
    {
        this("EventService");
    }

    private EventService(String s)
    {
        this(s, new EventAPIClient());
    }

    private EventService(String s, EventAPIClient eventapiclient)
    {
        super(s);
        b = new EventAPIClient();
        b = eventapiclient;
    }

    private long a()
    {
        return d.e() + (long)d.d() + a;
    }

    private static Integer a(Response response, String s)
    {
        response = response.a(s);
        if (response == null || response.getValue() == null)
        {
            return null;
        }
        int i;
        try
        {
            i = Integer.parseInt(response.getValue());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Logger.c((new StringBuilder("Unable to parse String: ")).append(response.getValue()).append("as an int.").toString());
            return null;
        }
        return Integer.valueOf(i);
    }

    private static void a(long l)
    {
        Context context = UAirship.a().g();
        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
        Intent intent = new Intent(context, com/urbanairship/analytics/EventService);
        intent.setAction("com.urbanairship.analytics.SEND");
        alarmmanager.set(1, l, PendingIntent.getService(context, 0, intent, 0x8000000));
    }

    public static void a(Event event)
    {
        Context context = UAirship.a().g();
        Intent intent = new Intent("com.urbanairship.analytics.ADD");
        intent.setClass(context, com/urbanairship/analytics/EventService);
        intent.putExtra("com.urbanairship.analytics.TYPE_EXTRA", event.a());
        intent.putExtra("com.urbanairship.analytics.CONTENT_VALUES_EXTRA", event.c());
        try
        {
            context.startService(intent);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Event event)
        {
            Logger.c("Unable to start analytics service. Check that the event service is added to the manifest.", event);
        }
    }

    public void onCreate()
    {
        super.onCreate();
        Autopilot.b((Application)getApplicationContext());
        c = UAirship.a().k().d();
        d = UAirship.a().k().e();
    }

    protected void onHandleIntent(Intent intent)
    {
        if (intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!"com.urbanairship.analytics.ADD".equals(intent.getAction())) goto _L4; else goto _L3
_L3:
        String s;
        s = intent.getStringExtra("com.urbanairship.analytics.TYPE_EXTRA");
        intent = (ContentValues)intent.getParcelableExtra("com.urbanairship.analytics.CONTENT_VALUES_EXTRA");
        if (c.c() <= d.a()) goto _L6; else goto _L5
_L5:
        if (!"activity_started".equals(s) && !"activity_stopped".equals(s)) goto _L8; else goto _L7
_L7:
        Logger.d("Database full. Not logging activity start/stop events");
_L4:
        if (a() > System.currentTimeMillis())
        {
            a(a());
            return;
        }
        break; /* Loop/switch isn't completed */
_L8:
        Logger.d("DB size exceeded. Deleting non-critical events.");
        Logger.d("Deleting activity start and stop events");
        c.a("activity_started");
        c.a("activity_stopped");
        if (c.c() > d.a())
        {
            Logger.d("Deleting oldest session.");
            String s1 = c.a();
            if (s1 != null && s1.length() > 0)
            {
                c.b(s1);
            }
        }
_L6:
        if (c.a(intent) <= 0L)
        {
            Logger.e("Unable to insert event into database.");
        }
        if ("location_updated".equals(s))
        {
            long l = System.currentTimeMillis() - d.e();
            long l1 = UAirship.a().h().n.e * 1000L;
            if (!UAirship.a().k().a() && l < l1)
            {
                Logger.d((new StringBuilder("LocationEvent was inserted, but may not be updated until ")).append(l1 - l).append(" ms have passed").toString());
            }
        }
        if (true) goto _L4; else goto _L9
_L9:
        d.a(System.currentTimeMillis());
        int j = c.b();
        if (j <= 0)
        {
            Logger.c("No events to send. Ending analytics upload.");
            return;
        }
        int i = c.c() / j;
        Map map = c.a(d.b() / i);
        intent = b;
        intent = EventAPIClient.a(map.values());
        Logger.d((new StringBuilder("Uploading events: ")).append(map.values()).toString());
        boolean flag;
        if (intent != null && intent.a() == 200)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            c.a(map.keySet());
            a = 0L;
        } else
        if (a == 0L)
        {
            a = d.d();
        } else
        {
            a = Math.min(a * 2L, d.c());
        }
        if (!flag || j - map.size() > 0)
        {
            Logger.b("Scheduling next event batch upload.");
            a(a());
        }
        if (intent != null)
        {
            Logger.d((new StringBuilder("Warp 9 response: ")).append(intent.a()).toString());
            Integer integer = a(intent, "X-UA-Max-Total");
            Integer integer1 = a(intent, "X-UA-Max-Batch");
            Integer integer2 = a(intent, "X-UA-Max-Wait");
            intent = a(intent, "X-UA-Min-Batch-Interval");
            if (integer != null)
            {
                d.a(integer.intValue());
            }
            if (integer1 != null)
            {
                d.b(integer1.intValue());
            }
            if (integer2 != null)
            {
                d.c(integer2.intValue());
            }
            if (intent != null)
            {
                d.d(intent.intValue());
                return;
            }
        }
        if (true) goto _L1; else goto _L10
_L10:
    }

}
