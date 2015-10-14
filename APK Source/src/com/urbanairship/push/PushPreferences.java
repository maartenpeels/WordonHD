// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import com.urbanairship.Logger;
import com.urbanairship.Preferences;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.PushPreferencesChangedEvent;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;

public class PushPreferences extends Preferences
{

    public PushPreferences()
    {
        super(UAirship.a().g());
        a("com.urbanairship.push");
    }

    private static void r()
    {
        UAirship.a().k().a(new PushPreferencesChangedEvent());
    }

    public final void a(int i1)
    {
        a("com.urbanairship.push.APP_VERSION", Integer.valueOf(i1));
    }

    final void a(long l1)
    {
        a("com.urbanairship.push.LAST_APID_REGISTRATION_TIME", Long.valueOf(l1));
    }

    public final void a(Date date, Date date1)
    {
        int i1 = a("com.urbanairship.push.QuietTime.START_HOUR", -1);
        int j1 = a("com.urbanairship.push.QuietTime.START_MINUTE", -1);
        int k1 = a("com.urbanairship.push.QuietTime.END_HOUR", -1);
        int l1 = a("com.urbanairship.push.QuietTime.END_MINUTE", -1);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i2 = calendar.get(11);
        int j2 = calendar.get(12);
        date = Calendar.getInstance();
        date.setTime(date1);
        int k2 = date.get(11);
        int l2 = date.get(12);
        if (i1 != i2 || j1 != j2 || k1 != k2 || l1 != l2)
        {
            a("com.urbanairship.push.QuietTime.START_HOUR", Integer.valueOf(i2));
            a("com.urbanairship.push.QuietTime.START_MINUTE", Integer.valueOf(j2));
            a("com.urbanairship.push.QuietTime.END_HOUR", Integer.valueOf(k2));
            a("com.urbanairship.push.QuietTime.END_MINUTE", Integer.valueOf(l2));
            r();
        }
    }

    public final void a(List list)
    {
        a("com.urbanairship.push.LAST_CANONICAL_IDS", (new JSONArray(list)).toString());
    }

    public final void a(Set set)
    {
        if (set == null)
        {
            return;
        } else
        {
            a("com.urbanairship.push.TAGS", (new JSONArray(set)).toString());
            return;
        }
    }

    final void a(boolean flag)
    {
        if (a("com.urbanairship.push.PUSH_ENABLED", false) != flag)
        {
            a("com.urbanairship.push.PUSH_ENABLED", Boolean.valueOf(flag));
            r();
        }
    }

    public final boolean a()
    {
        return a("com.urbanairship.push.PUSH_ENABLED", false);
    }

    public final void b(boolean flag)
    {
        if (a("com.urbanairship.push.SOUND_ENABLED", true) != flag)
        {
            a("com.urbanairship.push.SOUND_ENABLED", Boolean.valueOf(flag));
            r();
        }
    }

    public final boolean b()
    {
        return a("com.urbanairship.push.SOUND_ENABLED", true);
    }

    public final boolean b(String s)
    {
        Pattern pattern = Pattern.compile("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}");
        if (s == null || pattern.matcher(s).matches())
        {
            return a("com.urbanairship.push.APID", s);
        } else
        {
            Logger.a("PushPreferences - attempted to save malformed APID.");
            return false;
        }
    }

    final void c(boolean flag)
    {
        a("com.urbanairship.push.APID_READY", Boolean.valueOf(flag));
    }

    public final boolean c()
    {
        return a("com.urbanairship.push.VIBRATE_ENABLED", true);
    }

    public final boolean c(String s)
    {
        if (s == null || s.length() > 0)
        {
            a("com.urbanairship.push.BOX_OFFICE_SECRET", s);
            return true;
        } else
        {
            Logger.a("PushPreferences - attempted to save malformed secret.");
            return false;
        }
    }

    public final void d(String s)
    {
        a("com.urbanairship.push.ALIAS", s);
    }

    final void d(boolean flag)
    {
        a("com.urbanairship.push.APID_UPDATE_NEEDED", Boolean.valueOf(flag));
    }

    final boolean d()
    {
        return a("com.urbanairship.push.APID_READY", false);
    }

    public final String e()
    {
        return a("com.urbanairship.push.APID", null);
    }

    public final void e(String s)
    {
        a("com.urbanairship.push.GCM_REGISTRATION_ID_KEY", s);
    }

    public final void f(String s)
    {
        a("com.urbanairship.push.DEVICE_ID", s);
    }

    public final boolean f()
    {
        return a("com.urbanairship.push.QuietTime.ENABLED", false);
    }

    public final void g(String s)
    {
        a("com.urbanairship.push.LAST_RECEIVED_SEND_ID", s);
    }

    public final boolean g()
    {
        if (!a("com.urbanairship.push.QuietTime.ENABLED", false))
        {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        int i1 = a("com.urbanairship.push.QuietTime.START_HOUR", -1);
        int j1 = a("com.urbanairship.push.QuietTime.START_MINUTE", -1);
        int k1 = a("com.urbanairship.push.QuietTime.END_HOUR", -1);
        int l1 = a("com.urbanairship.push.QuietTime.END_MINUTE", -1);
        if (-1 == i1 || -1 == j1 || -1 == k1 || -1 == l1)
        {
            return false;
        }
        Calendar calendar1 = Calendar.getInstance();
        calendar1.set(11, i1);
        calendar1.set(12, j1);
        calendar1.set(13, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(11, k1);
        calendar2.set(12, l1);
        calendar2.set(13, 0);
        if (calendar1.after(calendar) && calendar2.before(calendar1))
        {
            calendar1.add(6, -1);
        }
        if (calendar2.before(calendar1))
        {
            calendar2.add(6, 1);
        }
        return calendar.after(calendar1) && calendar.before(calendar2);
    }

    public final Date[] h()
    {
        int i1 = a("com.urbanairship.push.QuietTime.START_HOUR", -1);
        int j1 = a("com.urbanairship.push.QuietTime.START_MINUTE", -1);
        int k1 = a("com.urbanairship.push.QuietTime.END_HOUR", -1);
        int l1 = a("com.urbanairship.push.QuietTime.END_MINUTE", -1);
        if (i1 == -1 || j1 == -1 || k1 == -1 || l1 == -1)
        {
            return null;
        }
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).set(11, i1);
        ((Calendar) (obj)).set(12, j1);
        ((Calendar) (obj)).set(13, 0);
        obj = ((Calendar) (obj)).getTime();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, k1);
        calendar.set(12, l1);
        calendar.set(13, 0);
        if (k1 < i1)
        {
            calendar.add(5, 1);
        }
        return (new Date[] {
            obj, calendar.getTime()
        });
    }

    public final String i()
    {
        return a("com.urbanairship.push.ALIAS", null);
    }

    public final Set j()
    {
        HashSet hashset;
        Object obj;
        hashset = new HashSet();
        obj = a("com.urbanairship.push.TAGS", "[]");
        if (obj == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        try
        {
            obj = new JSONArray(((String) (obj)));
            j1 = ((JSONArray) (obj)).length();
        }
        catch (JSONException jsonexception)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = 0;
_L3:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashset.add(((JSONArray) (obj)).getString(i1));
        i1++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L3; else goto _L2
_L2:
        return hashset;
    }

    public final String k()
    {
        return a("com.urbanairship.push.GCM_REGISTRATION_ID_KEY", null);
    }

    final boolean l()
    {
        return a("com.urbanairship.push.APID_UPDATE_NEEDED", true);
    }

    public final int m()
    {
        return a("com.urbanairship.push.APP_VERSION", -1);
    }

    public final String n()
    {
        return a("com.urbanairship.push.DEVICE_ID", null);
    }

    final long o()
    {
        return a("com.urbanairship.push.LAST_APID_REGISTRATION_TIME", 0L);
    }

    public final String p()
    {
        return a("com.urbanairship.push.LAST_RECEIVED_SEND_ID", null);
    }

    public final List q()
    {
        ArrayList arraylist;
        Object obj;
        arraylist = new ArrayList();
        obj = a("com.urbanairship.push.LAST_CANONICAL_IDS", null);
        if (obj == null) goto _L2; else goto _L1
_L1:
        int i1;
        try
        {
            obj = new JSONArray(((String) (obj)));
        }
        catch (JSONException jsonexception)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = 0;
_L3:
        if (i1 >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(((JSONArray) (obj)).getString(i1));
        i1++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L3; else goto _L2
_L2:
        return arraylist;
    }
}
