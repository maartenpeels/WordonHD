// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Tracking;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
    implements com.chartboost.sdk.Libraries.a
{

    private static final String b = com/chartboost/sdk/Tracking/a.getSimpleName();
    private static a k;
    private static boolean l = false;
    private String c;
    private String d;
    private JSONArray e;
    private long f;
    private long g;
    private long h;
    private h i;
    private h j;

    private a()
    {
        h = System.currentTimeMillis();
        d = p();
        e = new JSONArray();
        i = new h("CBTrackingDirectory", false);
        j = new h("CBSessionDirectory", false);
    }

    public static a a()
    {
        if (k != null) goto _L2; else goto _L1
_L1:
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorenter ;
        if (k == null)
        {
            k = new a();
        }
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorexit ;
_L2:
        return k;
        Exception exception;
        exception;
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static Object a(Object obj)
    {
        if (obj != null)
        {
            return obj;
        } else
        {
            return "";
        }
    }

    public static String a(int i1)
    {
        return (new Integer(i1)).toString();
    }

    public static void a(String s)
    {
        k.a("session", s, null, null, null, null, "session");
    }

    public static void a(String s, String s1)
    {
        k.a("start", s, s1, null, null, null, "system");
    }

    public static void a(String s, String s1, int i1)
    {
        k.a("playback-start", s, s1, a(i1), null, null, "system");
    }

    public static void a(String s, String s1, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        a a1 = k;
        if (cbimpressionerror != null)
        {
            cbimpressionerror = cbimpressionerror.toString();
        } else
        {
            cbimpressionerror = "";
        }
        a1.a("ad-error", s, s1, ((String) (cbimpressionerror)), null, null, "system");
    }

    public static void a(String s, String s1, String s2)
    {
        k.a("ad-show", s, s1, s2, null, null, "system");
    }

    public static void a(String s, String s1, String s2, int i1)
    {
        k.a("ad-click", s, s1, s2, a(i1), null, "system");
    }

    public static void a(String s, String s1, String s2, int i1, int j1)
    {
        k.a("install-click", s, s2, s1, a(i1), a(j1), "system");
    }

    public static void a(String s, String s1, String s2, String s3)
    {
        k.a("failure", s, s1, s2, s3, null, "system");
    }

    public static void a(String s, String s1, String s2, String s3, String s4, String s5, JSONObject jsonobject)
    {
        k.a(s, s1, s2, s3, s4, s5, jsonobject, "system");
    }

    public static void a(String s, String s1, boolean flag)
    {
        k.a("ad-get", s, s1, b(flag), "single", null, "system");
    }

    public static String b(boolean flag)
    {
        if (flag)
        {
            return "1";
        } else
        {
            return "0";
        }
    }

    public static void b()
    {
        a("start");
        a("did-become-active");
    }

    public static void b(String s, String s1)
    {
        k.a("confirmation-show", s, s1, null, null, null, "system");
    }

    public static void b(String s, String s1, int i1)
    {
        k.a("close-show", s, s1, a(i1), null, null, "system");
    }

    public static void b(String s, String s1, String s2)
    {
        k.a("ad-click", s, s1, s2, null, null, "system");
    }

    public static void b(String s, String s1, boolean flag)
    {
        k.a("ad-has", s, s1, b(flag), null, null, "system");
    }

    public static void c(String s, String s1)
    {
        k.a("replay", s, s1, null, null, null, "system");
    }

    public static void c(String s, String s1, String s2)
    {
        k.a("ad-close", s, s1, s2, null, null, "system");
    }

    public static void c(String s, String s1, boolean flag)
    {
        k.a("ad-loaded", s, s1, b(flag), null, null, "system");
    }

    public static void d()
    {
        k.a("video-prefetcher", "begin", null, null, null, null, "system");
    }

    public static void d(String s, String s1)
    {
        k.a("playback-stop", s, s1, null, null, null, "system");
    }

    public static void d(String s, String s1, String s2)
    {
        k.a("success", s, s1, s2, null, null, "system");
    }

    public static void d(String s, String s1, boolean flag)
    {
        k.a("confirmation-dismiss", s, s1, b(flag), null, null, "system");
    }

    public static void e()
    {
        k.a("video-prefetcher", null, null, null, null, null, "system");
    }

    public static void e(String s, String s1, String s2)
    {
        k.a(s, s1, s2, null, null, null, "system");
    }

    public static void e(String s, String s1, boolean flag)
    {
        k.a("controls-toggle", s, s1, b(flag), null, null, "system");
    }

    public static boolean i()
    {
        return l;
    }

    public ba a(com.chartboost.sdk.Libraries.e.a a1)
    {
        ba ba1 = new ba("/api/track");
        ba1.a("track", a1);
        ba1.a(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", com.chartboost.sdk.Libraries.a.a)
        }));
        ba1.a(com.chartboost.sdk.impl.l.a.a);
        return ba1;
    }

    public void a(long l1, long l2)
    {
        com.chartboost.sdk.Libraries.e.a a1 = com.chartboost.sdk.Libraries.e.a.a();
        a1.a("start_timestamp", Long.valueOf(l1));
        a1.a("timestamp", Long.valueOf(l2));
        a1.a("session_id", c);
        j.a("cb_previous_session_info", a1);
    }

    public void a(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        k.a(s, s1, s2, s3, s4, s5, new JSONObject(), s6);
    }

    public void a(String s, String s1, String s2, String s3, String s4, String s5, JSONObject jsonobject, 
            String s6)
    {
        Object obj;
        com.chartboost.sdk.Libraries.e.a a1;
        long l1;
        long l2;
        long l3;
        try
        {
            obj = com/chartboost/sdk/b.getDeclaredMethod("h", new Class[0]);
            ((Method) (obj)).setAccessible(true);
            obj = (JSONObject)((Method) (obj)).invoke(null, new Object[0]);
        }
        catch (Exception exception)
        {
            CBLogging.b(this, "Error encountered getting tracking levels", exception);
            CBUtility.throwProguardError(exception);
            exception = null;
        }
        a1 = com.chartboost.sdk.Libraries.e.a.a();
        if (obj == null || !((JSONObject) (obj)).optBoolean(s6)) goto _L2; else goto _L1
_L1:
        l1 = System.currentTimeMillis();
        l2 = f;
        l3 = h;
        a1.a("event", a(s));
        a1.a("kingdom", a(s1));
        a1.a("phylum", a(s2));
        a1.a("class", a(s3));
        a1.a("family", a(s4));
        a1.a("genus", a(s5));
        if (jsonobject == null)
        {
            s1 = new JSONObject();
        } else
        {
            s1 = jsonobject;
        }
        a1.a("meta", s1);
        a1.a("clientTimestamp", Long.valueOf(System.currentTimeMillis() / 1000L));
        a1.a("session_id", l());
        a1.a("totalSessionTime", Long.valueOf((l1 - l2) / 1000L));
        a1.a("currentSessionTime", Long.valueOf((l1 - l3) / 1000L));
        this;
        JVM INSTR monitorenter ;
        if (bb.h() || f())
        {
            q();
        }
        e.put(a1.e());
        s1 = com.chartboost.sdk.Libraries.e.a.a();
        s1.a("events", e);
        CBLogging.a(b, (new StringBuilder()).append("###Writing").append(a(s)).append("to tracking cache dir").toString());
        i.a(d, com.chartboost.sdk.Libraries.e.a.a(s1));
        k();
        this;
        JVM INSTR monitorexit ;
_L2:
        return;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void a(boolean flag)
    {
        com.chartboost.sdk.Libraries.e.a a1 = com.chartboost.sdk.Libraries.e.a.a();
        a1.a("complete", Boolean.valueOf(flag));
        k.a("session", "end", null, null, null, null, a1.e(), "session");
        a("did-become-active");
    }

    public boolean b(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return true;
        } else
        {
            return s.equals("cb_previous_session_info");
        }
    }

    public void c()
    {
        a(false);
    }

    public boolean f()
    {
        if (e != null)
        {
            return e.length() >= 50;
        } else
        {
            return false;
        }
    }

    public String g()
    {
        com.chartboost.sdk.Libraries.e.a a1 = com.chartboost.sdk.Libraries.e.a.a();
        a1.a("startTime", Long.valueOf(System.currentTimeMillis()));
        a1.a("deviceID", com.chartboost.sdk.Libraries.c.e());
        c = com.chartboost.sdk.Libraries.b.b(a1.toString().getBytes());
        return c;
    }

    public void h()
    {
        com.chartboost.sdk.Libraries.e.a a1 = j.a("cb_previous_session_info");
        if (a1 != null)
        {
            g = a1.h("timestamp");
            f = a1.h("start_timestamp");
            c = a1.e("session_id");
            if (System.currentTimeMillis() - g <= 0x2bf20L)
            {
                if (!TextUtils.isEmpty(c))
                {
                    k();
                    l = false;
                    return;
                }
            } else
            {
                a(true);
            }
        }
        j();
        l = true;
    }

    public void j()
    {
        long l1 = System.currentTimeMillis();
        f = l1;
        g = l1;
        c = g();
        a(l1, l1);
        Object obj = CBUtility.a();
        int i1 = ((SharedPreferences) (obj)).getInt("cbPrefSessionCount", 0);
        obj = ((SharedPreferences) (obj)).edit();
        ((android.content.SharedPreferences.Editor) (obj)).putInt("cbPrefSessionCount", i1 + 1);
        ((android.content.SharedPreferences.Editor) (obj)).commit();
    }

    public void k()
    {
        long l1 = System.currentTimeMillis();
        a(f, l1);
    }

    public String l()
    {
        return c;
    }

    public h m()
    {
        return i;
    }

    public JSONArray n()
    {
        return e;
    }

    public long o()
    {
        return f;
    }

    public String p()
    {
        return (new Long(System.nanoTime())).toString();
    }

    public void q()
    {
        e = new JSONArray();
        d = p();
    }

    public String toString()
    {
        return (new StringBuilder()).append("Session [ startTime: ").append(o()).append(" sessionEvents: ").append(n()).append(" ]").toString();
    }

}
