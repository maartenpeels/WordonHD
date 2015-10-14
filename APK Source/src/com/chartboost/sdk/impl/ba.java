// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            bb, az

public final class ba
{
    private static class a
        implements c
    {

        private d a;
        private b b;

        public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1)
        {
            if (a != null)
            {
                a.a(a1, ba1);
            }
        }

        public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1, CBError cberror)
        {
            if (b != null)
            {
                b.a(a1, ba1, cberror);
            }
        }

        public a(d d1, b b1)
        {
            a = d1;
            b = b1;
        }
    }

    public static abstract class b
        implements c
    {
    }

    public static interface c
    {

        public abstract void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1);

        public abstract void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1, CBError cberror);
    }

    public static abstract class d
        implements c
    {

        public void a(com.chartboost.sdk.Libraries.e.a a1, ba ba1, CBError cberror)
        {
        }

        public d()
        {
        }
    }


    private static com.chartboost.sdk.Libraries.e.a g = null;
    private String a;
    private String b;
    private com.chartboost.sdk.Libraries.e.a c;
    private Map d;
    private Map e;
    private String f;
    private c h;
    private boolean i;
    private boolean j;
    private com.chartboost.sdk.Libraries.g.a k;
    private bb l;
    private int m;
    private boolean n;
    private boolean o;
    private l.a p;

    public ba(String s1)
    {
        h = null;
        i = false;
        j = false;
        k = null;
        n = false;
        o = true;
        p = com.chartboost.sdk.impl.l.a.b;
        a = s1;
        f = "POST";
        l = bb.a(com.chartboost.sdk.b.l());
        a(0);
    }

    public static ba a(com.chartboost.sdk.Libraries.e.a a1)
    {
        ba ba1;
        try
        {
            ba1 = new ba(a1.e("path"));
            ba1.f = a1.e("method");
            ba1.d = a1.a("query").f();
            ba1.c = a1.a("body");
            ba1.e = a1.a("headers").f();
            ba1.j = a1.i("ensureDelivery");
            ba1.b = a1.e("eventType");
            ba1.a = a1.e("path");
            ba1.m = a1.f("retryCount");
            if (a1.a("callback") instanceof c)
            {
                ba1.h = (c)a1.a("callback");
            }
        }
        // Misplaced declaration of an exception variable
        catch (com.chartboost.sdk.Libraries.e.a a1)
        {
            CBLogging.d("CBRequest", "Unable to deserialize failed request", a1);
            return null;
        }
        return ba1;
    }

    protected void a()
    {
        if (e == null)
        {
            e = new HashMap();
        }
        e.put("Accept", "application/json");
        e.put("X-Chartboost-Client", CBUtility.d());
        e.put("X-Chartboost-API", "5.1.0");
        e.put("X-Chartboost-Client", CBUtility.d());
    }

    public void a(int i1)
    {
        m = i1;
    }

    protected void a(Context context)
    {
        a("app", com.chartboost.sdk.b.b());
        if ("sdk".equals(Build.PRODUCT))
        {
            a("model", "Android Simulator");
        } else
        {
            a("model", Build.MODEL);
        }
        a("device_type", (new StringBuilder()).append(Build.MANUFACTURER).append(" ").append(Build.MODEL).toString());
        a("os", (new StringBuilder()).append("Android ").append(android.os.Build.VERSION.RELEASE).toString());
        a("country", Locale.getDefault().getCountry());
        a("language", Locale.getDefault().getLanguage());
        a("sdk", "5.1.0");
        a("timestamp", String.valueOf(Long.valueOf((new Date()).getTime() / 1000L).intValue()));
        a("session", Integer.valueOf(CBUtility.a().getInt("cbPrefSessionCount", 0)));
        a("reachability", Integer.valueOf(az.a().b()));
        b(context);
        a("scale", (new StringBuilder()).append("").append(context.getResources().getDisplayMetrics().density).toString());
        try
        {
            String s1 = context.getPackageName();
            a("bundle", context.getPackageManager().getPackageInfo(s1, 128).versionName);
            a("bundle_id", s1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            CBLogging.b("CBRequest", "Exception raised getting package mager object", ((Throwable) (obj)));
        }
        if (g == null)
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            if (telephonymanager != null && telephonymanager.getPhoneType() != 0)
            {
                context = telephonymanager.getSimOperator();
                Object obj;
                if (!TextUtils.isEmpty(context))
                {
                    obj = context.substring(0, 3);
                    context = context.substring(3);
                } else
                {
                    context = null;
                    obj = null;
                }
                g = com.chartboost.sdk.Libraries.e.a(new com.chartboost.sdk.Libraries.e.b[] {
                    com.chartboost.sdk.Libraries.e.a("carrier-name", telephonymanager.getNetworkOperatorName()), com.chartboost.sdk.Libraries.e.a("mobile-country-code", obj), com.chartboost.sdk.Libraries.e.a("mobile-network-code", context), com.chartboost.sdk.Libraries.e.a("iso-country-code", telephonymanager.getNetworkCountryIso()), com.chartboost.sdk.Libraries.e.a("phone-type", Integer.valueOf(telephonymanager.getPhoneType()))
                });
            } else
            {
                g = com.chartboost.sdk.Libraries.e.a.a();
            }
        }
        a("carrier", g);
        a("custom_id", com.chartboost.sdk.b.k());
    }

    public void a(com.chartboost.sdk.Libraries.g.a a1)
    {
        if (!com.chartboost.sdk.Libraries.g.c(a1))
        {
            throw new IllegalArgumentException("Validation predicate must be a dictionary style -- either VDictionary, VDictionaryExact, VDictionaryWithValues, or just a list of KV pairs.");
        } else
        {
            k = a1;
            return;
        }
    }

    public void a(c c1)
    {
        h = c1;
        d(true);
        l.a(this, c1);
    }

    public void a(d d1, b b1)
    {
        d(true);
        h = new a(d1, b1);
        l.a(this, h);
    }

    public void a(l.a a1)
    {
        p = a1;
    }

    public void a(String s1)
    {
        a = s1;
    }

    public void a(String s1, com.chartboost.sdk.Libraries.e.a a1)
    {
        if (a1 != null && a1.c(s1))
        {
            a(s1, a1.e(s1));
        }
    }

    public void a(String s1, Object obj)
    {
        if (c == null)
        {
            c = com.chartboost.sdk.Libraries.e.a.a();
        }
        c.a(s1, obj);
    }

    public void a(String s1, String s2)
    {
        if (e == null)
        {
            e = new HashMap();
        }
        e.put(s1, s2);
    }

    public void a(boolean flag)
    {
        j = flag;
    }

    public transient void a(com.chartboost.sdk.Libraries.g.k ak[])
    {
        k = com.chartboost.sdk.Libraries.g.a(ak);
    }

    protected String b()
    {
        return "application/json";
    }

    public void b(Context context)
    {
        if (c != null && c.a("w").c() && c.a("h").c())
        {
            return;
        }
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Rect rect;
        int j1;
        Activity activity = (Activity)context;
        rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        j1 = rect.width();
        int i1 = rect.height();
_L5:
        Exception exception;
        context = context.getResources().getDisplayMetrics();
        int l1 = ((DisplayMetrics) (context)).widthPixels;
        int k1 = ((DisplayMetrics) (context)).heightPixels;
        a("dw", (new StringBuilder()).append("").append(l1).toString());
        a("dh", (new StringBuilder()).append("").append(k1).toString());
        a("dpi", (new StringBuilder()).append("").append(((DisplayMetrics) (context)).densityDpi).toString());
        if (j1 <= 0 || j1 > l1)
        {
            j1 = l1;
        }
        if (i1 <= 0 || i1 > k1)
        {
            i1 = k1;
        }
        a("w", (new StringBuilder()).append("").append(j1).toString());
        a("h", (new StringBuilder()).append("").append(i1).toString());
        return;
        exception;
        j1 = 0;
_L3:
        CBLogging.c("CBRequest", "Exception getting activity size", exception);
        i1 = 0;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        i1 = 0;
        j1 = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void b(c c1)
    {
        if (c1 != null)
        {
            h = c1;
        }
    }

    public void b(String s1)
    {
        b = s1;
    }

    public void b(boolean flag)
    {
        n = flag;
    }

    public void c()
    {
        a("identity", com.chartboost.sdk.Libraries.c.b());
        com.chartboost.sdk.Libraries.c.a a1 = com.chartboost.sdk.Libraries.c.c();
        if (a1.b())
        {
            a("tracking", Integer.valueOf(a1.a()));
        }
    }

    public void c(boolean flag)
    {
        o = flag;
    }

    public void d()
    {
        String s1 = com.chartboost.sdk.b.b();
        String s2 = com.chartboost.sdk.b.c();
        s2 = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(String.format(Locale.US, "%s %s\n%s\n%s", new Object[] {
            f, e(), s2, f()
        }).getBytes()));
        a("X-Chartboost-App", s1);
        a("X-Chartboost-Signature", s2);
    }

    public void d(boolean flag)
    {
        i = flag;
    }

    public String e()
    {
        return (new StringBuilder()).append(g()).append(CBUtility.a(d)).toString();
    }

    public String f()
    {
        return c.toString();
    }

    public String g()
    {
        if (a == null)
        {
            return "/";
        }
        StringBuilder stringbuilder = new StringBuilder();
        String s1;
        if (a.startsWith("/"))
        {
            s1 = "";
        } else
        {
            s1 = "/";
        }
        return stringbuilder.append(s1).append(a).toString();
    }

    public boolean h()
    {
        return g().equals("/api/track");
    }

    public com.chartboost.sdk.Libraries.e.a i()
    {
        return c;
    }

    public Map j()
    {
        return e;
    }

    public boolean k()
    {
        return j;
    }

    public com.chartboost.sdk.Libraries.g.a l()
    {
        return k;
    }

    public boolean m()
    {
        return n;
    }

    public l.a n()
    {
        return p;
    }

    public int o()
    {
        return m;
    }

    public boolean p()
    {
        return o;
    }

    public boolean q()
    {
        return i;
    }

    public c r()
    {
        return h;
    }

    public void s()
    {
        a(((d) (null)), ((b) (null)));
    }

    public com.chartboost.sdk.Libraries.e.a t()
    {
        return com.chartboost.sdk.Libraries.e.a(new com.chartboost.sdk.Libraries.e.b[] {
            com.chartboost.sdk.Libraries.e.a("path", a), com.chartboost.sdk.Libraries.e.a("method", f), com.chartboost.sdk.Libraries.e.a("query", com.chartboost.sdk.Libraries.e.a(d)), com.chartboost.sdk.Libraries.e.a("body", c), com.chartboost.sdk.Libraries.e.a("eventType", b), com.chartboost.sdk.Libraries.e.a("headers", com.chartboost.sdk.Libraries.e.a(e)), com.chartboost.sdk.Libraries.e.a("ensureDelivery", Boolean.valueOf(j)), com.chartboost.sdk.Libraries.e.a("retryCount", Integer.valueOf(m)), com.chartboost.sdk.Libraries.e.a("callback", h)
        });
    }

}
