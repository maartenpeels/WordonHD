// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

// Referenced classes of package com.urbanairship.analytics:
//            Environment, Analytics

public class DefaultEnvironment extends Environment
{

    String a;
    String b;
    String c;

    public DefaultEnvironment()
    {
        a = UAirship.a().k().b();
        b = UAirship.a().k().c();
        if (UAirship.a().h().k)
        {
            c = PushManager.b().g().p();
        }
    }

    public final String a()
    {
        byte byte0 = -1;
        Object obj = (ConnectivityManager)UAirship.a().g().getSystemService("connectivity");
        int i1 = byte0;
        if (obj != null)
        {
            obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
            i1 = byte0;
            if (obj != null)
            {
                i1 = ((NetworkInfo) (obj)).getType();
            }
        }
        switch (i1)
        {
        default:
            return "none";

        case 0: // '\0'
            return "cell";

        case 1: // '\001'
            return "wifi";

        case 6: // '\006'
            return "wimax";
        }
    }

    public final String b()
    {
        Object obj = (ConnectivityManager)UAirship.a().g().getSystemService("connectivity");
        if (obj != null)
        {
            obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
            if (obj != null)
            {
                return ((NetworkInfo) (obj)).getSubtypeName();
            }
        }
        return "";
    }

    public final String c()
    {
        return ((TelephonyManager)UAirship.a().g().getSystemService("phone")).getNetworkOperatorName();
    }

    public final String d()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public final String e()
    {
        return UAirship.j();
    }

    public final String f()
    {
        return UAirship.d().versionName;
    }

    public final long g()
    {
        return (long)(Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
    }

    public final boolean h()
    {
        return Calendar.getInstance().getTimeZone().inDaylightTime(new Date());
    }

    public final ArrayList i()
    {
        ArrayList arraylist = new ArrayList();
        PushPreferences pushpreferences = PushManager.b().g();
        if (pushpreferences != null && pushpreferences.a())
        {
            if (pushpreferences.b())
            {
                arraylist.add("sound");
            }
            if (pushpreferences.c())
            {
                arraylist.add("vibrate");
            }
        }
        return arraylist;
    }

    public final String j()
    {
        return b;
    }

    public final String k()
    {
        return a;
    }

    public final String l()
    {
        return UAirship.a().h().a().toString();
    }

    public final String m()
    {
        PushPreferences pushpreferences = PushManager.b().g();
        if (pushpreferences != null)
        {
            return pushpreferences.e();
        } else
        {
            return null;
        }
    }

    public final boolean n()
    {
        PushPreferences pushpreferences = PushManager.b().g();
        if (pushpreferences != null)
        {
            return pushpreferences.a();
        } else
        {
            return false;
        }
    }

    public final long o()
    {
        return System.currentTimeMillis();
    }

    public final boolean p()
    {
        return UAirship.a().k().a();
    }

    public final String q()
    {
        return c;
    }

    public final boolean r()
    {
        PushPreferences pushpreferences = PushManager.b().g();
        if (pushpreferences != null)
        {
            return pushpreferences.a();
        } else
        {
            return false;
        }
    }

    public final Date[] s()
    {
        PushPreferences pushpreferences = PushManager.b().g();
        if (pushpreferences != null)
        {
            return pushpreferences.h();
        } else
        {
            return null;
        }
    }
}
