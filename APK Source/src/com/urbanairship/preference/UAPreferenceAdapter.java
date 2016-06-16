// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.os.Handler;
import android.preference.Preference;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.LocationOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.location.LocationPreferences;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushUser;
import java.util.Date;
import java.util.Map;

// Referenced classes of package com.urbanairship.preference:
//            UAPreference

public class UAPreferenceAdapter
{

    private static int a = 4;
    private static int b = 1000;
    private PushPreferences c;
    private LocationPreferences d;
    private Map e;
    private int f;

    static Map a(UAPreferenceAdapter uapreferenceadapter)
    {
        return uapreferenceadapter.e;
    }

    static void a(UAPreferenceAdapter uapreferenceadapter, UAPreference uapreference)
    {
        UAPreference.PreferenceType preferencetype = uapreference.a();
        if (preferencetype != null) goto _L2; else goto _L1
_L1:
        Logger.a((new StringBuilder("Preference returned a null preference type. Ignoring preference ")).append(uapreference).toString());
_L8:
        return;
_L2:
        _cls3.a[preferencetype.ordinal()];
        JVM INSTR tableswitch 1 11: default 96
    //                   1 202
    //                   2 202
    //                   3 202
    //                   4 254
    //                   5 254
    //                   6 254
    //                   7 254
    //                   8 254
    //                   9 254
    //                   10 254
    //                   11 303;
           goto _L3 _L4 _L4 _L4 _L5 _L5 _L5 _L5 _L5 _L5 _L5 _L6
_L3:
        boolean flag = true;
_L24:
        if (!flag) goto _L8; else goto _L7
_L7:
        _cls3.a[preferencetype.ordinal()];
        JVM INSTR tableswitch 1 11: default 172
    //                   1 340
    //                   2 354
    //                   3 368
    //                   4 382
    //                   5 396
    //                   6 410
    //                   7 440
    //                   8 470
    //                   9 484
    //                   10 498
    //                   11 508;
           goto _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L9:
        Object obj = null;
_L27:
        if (obj == null) goto _L22; else goto _L21
_L21:
        try
        {
            uapreference.a(obj);
        }
        // Misplaced declaration of an exception variable
        catch (UAPreferenceAdapter uapreferenceadapter)
        {
            Logger.a((new StringBuilder("Exception setting value ")).append(obj).append(". Ignoring preference ").append(uapreference).toString(), uapreferenceadapter);
            return;
        }
_L29:
        ((Preference)uapreference).setOnPreferenceChangeListener(uapreferenceadapter. new _cls2(preferencetype));
        return;
_L4:
        if (UAirship.a().h().n.a && uapreferenceadapter.d != null) goto _L3; else goto _L23
_L23:
        Logger.a((new StringBuilder("Unable to modify preference ")).append(preferencetype).append(" because the locationService is not enabled. Ignoring preference").toString());
        flag = false;
          goto _L24
_L5:
        if (UAirship.a().h().k && uapreferenceadapter.c != null) goto _L3; else goto _L25
_L25:
        Logger.a((new StringBuilder("Unable to modify preference ")).append(preferencetype).append(" because the pushService is not enabled").toString());
        flag = false;
          goto _L24
_L6:
        if (UAirship.a().h().k && UAirship.a().h().l && uapreferenceadapter.c != null) goto _L3; else goto _L26
_L26:
        flag = false;
          goto _L24
_L10:
        obj = Boolean.valueOf(uapreferenceadapter.d.b());
          goto _L27
_L11:
        obj = Boolean.valueOf(uapreferenceadapter.d.a());
          goto _L27
_L12:
        obj = Boolean.valueOf(uapreferenceadapter.d.c());
          goto _L27
_L13:
        obj = Boolean.valueOf(uapreferenceadapter.c.a());
          goto _L27
_L14:
        obj = Boolean.valueOf(uapreferenceadapter.c.f());
          goto _L27
_L15:
        obj = uapreferenceadapter.c.h();
        if (obj != null)
        {
            obj = Long.valueOf(obj[1].getTime());
        } else
        {
            obj = null;
        }
          goto _L27
_L16:
        obj = uapreferenceadapter.c.h();
        if (obj != null)
        {
            obj = Long.valueOf(obj[0].getTime());
        } else
        {
            obj = null;
        }
          goto _L27
_L17:
        obj = Boolean.valueOf(uapreferenceadapter.c.b());
          goto _L27
_L18:
        obj = Boolean.valueOf(uapreferenceadapter.c.c());
          goto _L27
_L19:
        obj = PushManager.b().j();
          goto _L27
_L20:
        obj = RichPushManager.a().b().e();
          goto _L27
_L22:
        if (preferencetype != UAPreference.PreferenceType.j || !uapreferenceadapter.c.a() || uapreferenceadapter.f >= a) goto _L29; else goto _L28
_L28:
        uapreferenceadapter.f = uapreferenceadapter.f + 1;
        (new Handler()).postDelayed(uapreferenceadapter. new _cls1(uapreference), b);
        return;
          goto _L24
    }


    private class _cls3
    {

        static final int a[];

        static 
        {
            a = new int[UAPreference.PreferenceType.values().length];
            try
            {
                a[UAPreference.PreferenceType.i.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror10) { }
            try
            {
                a[UAPreference.PreferenceType.g.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror9) { }
            try
            {
                a[UAPreference.PreferenceType.h.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror8) { }
            try
            {
                a[UAPreference.PreferenceType.a.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                a[UAPreference.PreferenceType.d.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                a[UAPreference.PreferenceType.f.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                a[UAPreference.PreferenceType.e.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[UAPreference.PreferenceType.b.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[UAPreference.PreferenceType.c.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[UAPreference.PreferenceType.j.ordinal()] = 10;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[UAPreference.PreferenceType.k.ordinal()] = 11;
            }
            catch (NoSuchFieldError nosuchfielderror)
            {
                return;
            }
        }
    }


    private class _cls2
        implements android.preference.Preference.OnPreferenceChangeListener
    {

        final UAPreference.PreferenceType a;
        final UAPreferenceAdapter b;

        public boolean onPreferenceChange(Preference preference, Object obj)
        {
            UAPreferenceAdapter.a(b).put(a, obj);
            return true;
        }

        _cls2(UAPreference.PreferenceType preferencetype)
        {
            b = UAPreferenceAdapter.this;
            a = preferencetype;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final UAPreference a;
        final UAPreferenceAdapter b;

        public void run()
        {
            UAPreferenceAdapter.a(b, a);
        }

        _cls1(UAPreference uapreference)
        {
            b = UAPreferenceAdapter.this;
            a = uapreference;
            super();
        }
    }

}
