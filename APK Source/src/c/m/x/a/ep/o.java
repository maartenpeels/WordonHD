// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.util.Log;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushNotificationBuilder;
import com.urbanairship.push.PushPreferences;
import com.urbanairship.util.NotificationIDGenerator;
import java.lang.reflect.Field;
import java.util.Map;

// Referenced classes of package c.m.x.a.ep:
//            e, d, n, p

public final class o
    implements PushNotificationBuilder
{

    private static o b;
    public int a;

    private o()
    {
        a = -1;
    }

    public static Notification a(Context context, String s, String s1, String s2, String s3)
    {
        int i;
        ApplicationInfo applicationinfo = context.getApplicationInfo();
        i = applicationinfo.icon;
        Object obj;
        try
        {
            obj = Class.forName("com.milkmangames.resource.R$drawable");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.d("[PushNotifyEx]", "No embedded icon res.");
            classnotfoundexception = null;
        }
        if (obj != null)
        {
            try
            {
                i = ((Class) (obj)).getField("ic_stat_notification").getInt(null);
            }
            catch (Exception exception)
            {
                i = applicationinfo.icon;
                Log.e("[PushNotifyEx]", "Notify status icon resource not valid.");
                exception.printStackTrace();
            }
        }
        obj = new e(context);
        ((e) (obj)).a(i).a(BitmapFactory.decodeResource(context.getResources(), applicationinfo.icon)).c().a(s).c(s1).b(s1).a((new d()).b(s1).a(s1));
        i = 7;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        s = (new n(context)).a(s2);
        RingtoneManager.getRingtone(context, Uri.fromFile(s)).play();
        i = 6;
_L1:
        ((e) (obj)).b(i);
        ((e) (obj)).b();
        ((e) (obj)).a();
        ((e) (obj)).c();
        s1 = context.getPackageName();
        s = context.getPackageManager().getLaunchIntentForPackage(s1).getComponent().getClassName();
        if (s3 == null)
        {
            try
            {
                s = new Intent(context, Class.forName(s));
                s.putExtra((new StringBuilder()).append(s1).append(".EPLAUNCH").toString(), true);
                s.setData(Uri.parse("mmg://easypush"));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("[PushNotifyEx]", "Failed to locate the air main intent.");
                context.printStackTrace();
                return null;
            }
            s.setFlags(0x24000000);
        } else
        {
            s = new Intent("android.intent.action.VIEW");
            s.setFlags(0x10000000);
            s.setData(Uri.parse(s3));
        }
        ((e) (obj)).a(PendingIntent.getActivity(context, 0, s, 0));
        context = ((e) (obj)).d();
        context.flags = ((Notification) (context)).flags | 0x1e;
        context.flags = ((Notification) (context)).flags & -5;
        context.flags = ((Notification) (context)).flags & -3;
        context.defaults = i | ((Notification) (context)).defaults;
        return context;
        s;
        Log.d("[PushNotifyEx]", "invalid sound file");
        i = 6;
          goto _L1
    }

    public static o a()
    {
        if (b == null)
        {
            b = new o();
        }
        return b;
    }

    public final Notification a(String s, Map map)
    {
        if (s == null || s.length() == 0)
        {
            return null;
        }
        if (p.e)
        {
            Log.d("[PushNotifyEx]", "UA notified in foreground; no notification view created.");
            return null;
        }
        String s2 = UAirship.e();
        PushPreferences pushpreferences = PushManager.b().g();
        String s1;
        int i;
        byte byte0;
        if (map.containsKey("sound") && pushpreferences.b() && !pushpreferences.g())
        {
            s1 = (String)map.get("sound");
        } else
        {
            s1 = null;
        }
        if (map.containsKey("aTitle"))
        {
            s2 = (String)map.get("aTitle");
        }
        if (map.containsKey("url"))
        {
            map = (String)map.get("url");
            if (!map.startsWith("http://") && !map.startsWith("https://"))
            {
                map = (new StringBuilder("http://")).append(map).toString();
            }
        } else
        {
            map = null;
        }
        s = a(UAirship.a().g(), s2, s, s1, ((String) (map)));
        byte0 = 4;
        i = byte0;
        if (!pushpreferences.g())
        {
            i = byte0;
            if (pushpreferences.c())
            {
                i = 6;
            }
        }
        if (pushpreferences.b() && !pushpreferences.g())
        {
            s.defaults = ((Notification) (s)).defaults | 1;
        }
        s.defaults = i;
        return s;
    }

    public final int b()
    {
        if (a > 0)
        {
            return a;
        } else
        {
            return NotificationIDGenerator.a();
        }
    }
}
