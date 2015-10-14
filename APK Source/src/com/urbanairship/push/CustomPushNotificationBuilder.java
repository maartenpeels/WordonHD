// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.app.Notification;
import android.content.Context;
import android.net.Uri;
import android.widget.RemoteViews;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.NotificationIDGenerator;
import java.util.Map;

// Referenced classes of package com.urbanairship.push:
//            PushNotificationBuilder, PushManager, PushPreferences

public class CustomPushNotificationBuilder
    implements PushNotificationBuilder
{

    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public Uri h;

    public CustomPushNotificationBuilder()
    {
        e = UAirship.f();
        f = UAirship.f();
        g = -1;
    }

    public final Notification a(String s, Map map)
    {
        if (s == null || s.length() == 0)
        {
            s = null;
        } else
        {
            map = new Notification(f, s, System.currentTimeMillis());
            map.flags = 16;
            map.defaults = 0;
            Object obj = new RemoteViews(UAirship.a().g().getPackageName(), a);
            if (b == 0 || c == 0 || d == 0)
            {
                Logger.e((new StringBuilder("The CustomPushNotificationBuilder object contains an invalid identifier (value of 0). layoutIconId: ")).append(b).append(" layoutSubjectId: ").append(c).append(" layoutMessageId: ").append(d).toString());
                throw new IllegalArgumentException("Unable to build notification. NotificationBuilder missing required parameter.");
            }
            ((RemoteViews) (obj)).setTextViewText(c, UAirship.e());
            ((RemoteViews) (obj)).setTextViewText(d, s);
            ((RemoteViews) (obj)).setImageViewResource(b, e);
            map.contentView = ((RemoteViews) (obj));
            obj = PushManager.b().g();
            s = map;
            if (!((PushPreferences) (obj)).g())
            {
                if (((PushPreferences) (obj)).c())
                {
                    map.defaults = ((Notification) (map)).defaults | 2;
                }
                s = map;
                if (((PushPreferences) (obj)).b())
                {
                    if (h != null)
                    {
                        map.sound = h;
                        return map;
                    } else
                    {
                        map.defaults = ((Notification) (map)).defaults | 1;
                        return map;
                    }
                }
            }
        }
        return s;
    }

    public final int b()
    {
        if (g > 0)
        {
            return g;
        } else
        {
            return NotificationIDGenerator.a();
        }
    }
}
