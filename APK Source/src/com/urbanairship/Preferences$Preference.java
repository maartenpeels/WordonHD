// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;

// Referenced classes of package com.urbanairship:
//            UrbanAirshipProvider, PreferencesResolver, Logger

class a
{

    private final PreferencesResolver a;
    private final String b;
    private volatile String c;
    private volatile boolean d;

    static String a(a a1)
    {
        return a1.b;
    }

    static boolean b(b b1)
    {
        b1.d = false;
        return false;
    }

    final String a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        if (flag) goto _L2; else goto _L1
_L1:
        Cursor cursor = a.a(b);
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToFirst()) goto _L6; else goto _L5
_L5:
        String s = cursor.getString(0);
_L13:
        c = s;
        d = true;
_L9:
        if (cursor == null) goto _L2; else goto _L7
_L7:
        cursor.close();
_L2:
        s = c;
        this;
        JVM INSTR monitorexit ;
        return s;
_L6:
        s = null;
        continue; /* Loop/switch isn't completed */
_L4:
        Logger.a((new StringBuilder("Unable to get preference ")).append(b).append(" from database. Falling back to cached value.").toString());
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception1;
        exception1;
        Object obj;
        Exception exception;
        obj = cursor;
        exception = exception1;
_L11:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        ((Cursor) (obj)).close();
        throw exception;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        exception;
        obj = null;
        if (true) goto _L11; else goto _L10
_L10:
        if (true) goto _L13; else goto _L12
_L12:
    }

    final boolean a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (!d) goto _L2; else goto _L1
_L1:
        if (s != null) goto _L4; else goto _L3
_L3:
        if (c != null) goto _L2; else goto _L5
_L5:
        Logger.b("Preference already up to date");
        boolean flag = true;
_L6:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L4:
        if (s.equals(c)) goto _L5; else goto _L2
_L2:
        c = s;
        d = false;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        Logger.b((new StringBuilder("Removing preference: ")).append(b).toString());
        if (a.b(b) >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L6
        Logger.b((new StringBuilder("Saving preference: ")).append(b).append(" value: ").append(s).toString());
        s = a.a(b, s);
        if (s != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L6
        s;
        throw s;
    }

    _cls1.a(String s, PreferencesResolver preferencesresolver)
    {
        d = false;
        b = s;
        a = preferencesresolver;
        class _cls1 extends ContentObserver
        {

            final Preferences.Preference a;

            public void onChange(boolean flag)
            {
                super.onChange(flag);
                Logger.b((new StringBuilder("Preference updated:")).append(Preferences.Preference.a(a)).toString());
                Preferences.Preference.b(a);
            }

            _cls1()
            {
                a = Preferences.Preference.this;
                super(null);
            }
        }

        s = new _cls1();
        preferencesresolver = Uri.withAppendedPath(UrbanAirshipProvider.c(), b);
        a.a(preferencesresolver, s);
    }
}
