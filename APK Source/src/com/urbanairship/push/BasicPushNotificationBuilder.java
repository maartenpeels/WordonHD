// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.app.Notification;
import com.urbanairship.UAirship;
import com.urbanairship.util.NotificationIDGenerator;
import java.util.Map;

// Referenced classes of package com.urbanairship.push:
//            PushNotificationBuilder, PushManager, PushPreferences

public class BasicPushNotificationBuilder
    implements PushNotificationBuilder
{

    public int a;
    public String b;
    public int c;

    public BasicPushNotificationBuilder()
    {
        a = UAirship.f();
        b = UAirship.e();
        c = -1;
    }

    public final Notification a(String s, Map map)
    {
        if (s == null || s.length() == 0)
        {
            s = null;
        } else
        {
            map = new Notification(a, s, System.currentTimeMillis());
            map.flags = 16;
            map.setLatestEventInfo(UAirship.a().g(), b, s, null);
            map.defaults = 0;
            PushPreferences pushpreferences = PushManager.b().g();
            s = map;
            if (!pushpreferences.g())
            {
                if (pushpreferences.c())
                {
                    map.defaults = ((Notification) (map)).defaults | 2;
                }
                s = map;
                if (pushpreferences.b())
                {
                    map.defaults = ((Notification) (map)).defaults | 1;
                    return map;
                }
            }
        }
        return s;
    }

    public final int b()
    {
        if (c > 0)
        {
            return c;
        } else
        {
            return NotificationIDGenerator.a();
        }
    }
}
