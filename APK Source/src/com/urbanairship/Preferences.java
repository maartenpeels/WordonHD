// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.urbanairship:
//            PreferencesResolver, Logger, UAirship, UrbanAirshipProvider

public class Preferences
{

    private final Map a;
    private PreferencesResolver b;

    public Preferences(Context context)
    {
        this(new PreferencesResolver(context));
    }

    private Preferences(PreferencesResolver preferencesresolver)
    {
        a = new HashMap();
        b = preferencesresolver;
    }

    private Preference b(String s)
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        if (!a.containsKey(s)) goto _L2; else goto _L1
_L1:
        s = (Preference)a.get(s);
_L4:
        return s;
_L2:
        Preference preference;
        preference = new Preference(s, b);
        a.put(s, preference);
        s = preference;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public final int a(String s, int i)
    {
        s = b(s).a();
        if (s == null)
        {
            return i;
        }
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return i;
        }
        return j;
    }

    public final long a(String s, long l)
    {
        s = b(s).a();
        if (s == null)
        {
            return l;
        }
        long l1;
        try
        {
            l1 = Long.parseLong(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return l;
        }
        return l1;
    }

    public final String a(String s, String s1)
    {
        String s2 = b(s).a();
        s = s2;
        if (s2 == null)
        {
            s = s1;
        }
        return s;
    }

    protected final void a(String s)
    {
        Logger.b((new StringBuilder("Migrating ")).append(s).toString());
        SharedPreferences sharedpreferences = UAirship.a().g().getSharedPreferences(s, 4);
        Object obj = sharedpreferences.getAll();
        int k = ((Map) (obj)).size();
        Logger.b((new StringBuilder("Found ")).append(k).append(" preferences to migrate.").toString());
        if (k > 0)
        {
            ContentValues acontentvalues[] = new ContentValues[k];
            obj = ((Map) (obj)).entrySet().iterator();
            for (int i = 0; ((Iterator) (obj)).hasNext(); i++)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
                Logger.b((new StringBuilder("Adding ")).append((String)entry.getKey()).append(":").append(entry.getValue()).append(" to the insert.").toString());
                ContentValues contentvalues = new ContentValues();
                contentvalues.put("_id", (String)entry.getKey());
                contentvalues.put("value", String.valueOf(entry.getValue()));
                acontentvalues[i] = contentvalues;
            }

            Logger.b("Inserting in bulk");
            int j = b.a(UrbanAirshipProvider.c(), acontentvalues);
            Logger.b((new StringBuilder()).append(j).append(" rows inserted successfully.").toString());
            if (j == k)
            {
                Logger.b((new StringBuilder("Migration was a success, wiping ")).append(s).toString());
                sharedpreferences.edit().clear().commit();
            }
        }
    }

    public final boolean a(String s, Object obj)
    {
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = String.valueOf(obj);
        }
        return b(s).a(((String) (obj)));
    }

    public final boolean a(String s, boolean flag)
    {
        s = b(s).a();
        if (s == null)
        {
            return flag;
        } else
        {
            return Boolean.valueOf(s).booleanValue();
        }
    }

    private class Preference
    {

        private final PreferencesResolver a;
        private final String b;
        private volatile String c;
        private volatile boolean d;

        static String a(Preference preference)
        {
            return preference.b;
        }

        static boolean b(Preference preference)
        {
            preference.d = false;
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

        Preference(String s, PreferencesResolver preferencesresolver)
        {
            d = false;
            b = s;
            a = preferencesresolver;
            class _cls1 extends ContentObserver
            {

                final Preference a;

                public void onChange(boolean flag)
                {
                    super.onChange(flag);
                    Logger.b((new StringBuilder("Preference updated:")).append(Preference.a(a)).toString());
                    Preference.b(a);
                }

                _cls1()
                {
                    a = Preference.this;
                    super(null);
                }
            }

            s = new _cls1();
            preferencesresolver = Uri.withAppendedPath(UrbanAirshipProvider.c(), b);
            a.a(preferencesresolver, s);
        }
    }

}
