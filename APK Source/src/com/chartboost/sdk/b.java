// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.a;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ba;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, a

public final class b
{
    public static interface a
    {

        public abstract void a();
    }


    protected static Context a = null;
    protected static Application b = null;
    public static c.a c;
    private static String d;
    private static String e;
    private static com.chartboost.sdk.a f;
    private static boolean g = false;
    private static boolean h = false;
    private static boolean i = false;
    private static Chartboost.CBFramework j = null;
    private static String k = null;
    private static SharedPreferences l = null;
    private static boolean m = true;
    private static volatile boolean n = false;
    private static boolean o = false;
    private static boolean p = true;
    private static boolean q = false;
    private static boolean r = true;

    private b()
    {
    }

    public static Chartboost.CBFramework a()
    {
        p();
        if (j == null)
        {
            return null;
        } else
        {
            return j;
        }
    }

    public static void a(Chartboost.CBFramework cbframework)
    {
        p();
        if (cbframework == null)
        {
            throw new RuntimeException("Pass a valid CBFramework enum value");
        } else
        {
            j = cbframework;
            return;
        }
    }

    public static void a(com.chartboost.sdk.Libraries.CBLogging.Level level)
    {
        p();
        CBLogging.a = level;
    }

    public static void a(com.chartboost.sdk.Libraries.e.a a1)
    {
        if (a1 != null)
        {
            a1 = a1.f();
            if (a1 != null)
            {
                android.content.SharedPreferences.Editor editor = u().edit();
                Iterator iterator = a1.keySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s1 = (String)iterator.next();
                    Object obj = a1.get(s1);
                    if (obj instanceof String)
                    {
                        editor.putString(s1, (String)obj);
                    } else
                    if (obj instanceof Integer)
                    {
                        editor.putInt(s1, ((Integer)obj).intValue());
                    } else
                    if (obj instanceof Float)
                    {
                        editor.putFloat(s1, ((Float)obj).floatValue());
                    } else
                    if (obj instanceof Long)
                    {
                        editor.putLong(s1, ((Long)obj).longValue());
                    } else
                    if (obj instanceof Boolean)
                    {
                        editor.putBoolean(s1, ((Boolean)obj).booleanValue());
                    } else
                    if (obj != null)
                    {
                        editor.putString(s1, obj.toString());
                    }
                } while (true);
                editor.commit();
            }
        }
    }

    public static void a(com.chartboost.sdk.a a1)
    {
        p();
        f = a1;
    }

    public static void a(a a1)
    {
        ba ba1 = new ba("/api/config");
        ba1.a(false);
        ba1.b(false);
        ba1.a(com.chartboost.sdk.impl.l.a.c);
        ba1.a(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", com.chartboost.sdk.Libraries.a.a)
        }));
        ba1.a(new com.chartboost.sdk.impl.ba.c(a1) {

            final a a;

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2)
            {
                if (a2 != null)
                {
                    com.chartboost.sdk.b.a(a2.a("response"));
                }
                if (a != null)
                {
                    a.a();
                }
            }

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2, CBError cberror)
            {
                if (a != null)
                {
                    a.a();
                }
            }

            
            {
                a = a1;
                super();
            }
        });
    }

    public static void a(String s1)
    {
        p();
        d = s1;
        u().edit().putString("appId", s1).commit();
    }

    public static void a(boolean flag)
    {
        p();
        g = flag;
    }

    public static String b()
    {
        p();
        d = u().getString("appId", d);
        return d;
    }

    public static void b(String s1)
    {
        p();
        e = s1;
        u().edit().putString("appSignature", s1).commit();
    }

    public static void b(boolean flag)
    {
        m = flag;
    }

    public static String c()
    {
        p();
        e = u().getString("appSignature", e);
        return e;
    }

    public static void c(String s1)
    {
        p();
        k = s1;
    }

    protected static void c(boolean flag)
    {
        n = flag;
    }

    public static com.chartboost.sdk.a d()
    {
        p();
        return f;
    }

    public static void d(boolean flag)
    {
        if (c != null)
        {
            c.a(flag);
        }
    }

    protected static void e(boolean flag)
    {
        o = flag;
    }

    public static boolean e()
    {
        p();
        return g;
    }

    public static void f(boolean flag)
    {
        p = flag;
    }

    public static boolean f()
    {
        p();
        return i;
    }

    public static void g(boolean flag)
    {
        q = flag;
    }

    public static boolean g()
    {
        return m;
    }

    public static JSONObject h()
    {
        p();
        Object obj = u().getString("trackingLevels", "");
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            obj = com.chartboost.sdk.Libraries.e.a.j(((String) (obj)));
            if (((com.chartboost.sdk.Libraries.e.a) (obj)).c())
            {
                return ((com.chartboost.sdk.Libraries.e.a) (obj)).e();
            }
        }
        return null;
    }

    public static void h(boolean flag)
    {
        r = flag;
    }

    public static boolean i()
    {
        p();
        JSONObject jsonobject = h();
        return jsonobject != null && (jsonobject.optBoolean("debug") || jsonobject.optBoolean("session") || jsonobject.optBoolean("system") || jsonobject.optBoolean("user"));
    }

    public static com.chartboost.sdk.Libraries.CBLogging.Level j()
    {
        p();
        return CBLogging.a;
    }

    public static String k()
    {
        p();
        return k;
    }

    public static Context l()
    {
        return a;
    }

    public static boolean m()
    {
        return n;
    }

    public static void n()
    {
        if (!m())
        {
            throw new IllegalStateException("You need call Chartboost.onStart() before calling any public APIs ");
        } else
        {
            return;
        }
    }

    public static void o()
    {
        if (Chartboost.b == null)
        {
            throw new IllegalStateException("The activity context must be set through the Chartboost onCreate method");
        } else
        {
            return;
        }
    }

    public static void p()
    {
        if (b == null)
        {
            throw new IllegalStateException("Need to intialize chartboost using Chartboost.init() as the application object is null");
        } else
        {
            return;
        }
    }

    public static boolean q()
    {
        return o;
    }

    public static boolean r()
    {
        return p;
    }

    public static boolean s()
    {
        return q;
    }

    public static boolean t()
    {
        return r;
    }

    private static SharedPreferences u()
    {
        if (l == null)
        {
            l = CBUtility.a();
        }
        return l;
    }

}
