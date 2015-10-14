// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.ay;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.cm;
import com.chartboost.sdk.impl.cn;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            d, b, CBLogging, CBUtility

public final class c
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        private static final a g[];
        private int f;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/Libraries/c$a, s);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        public int a()
        {
            return f;
        }

        public boolean b()
        {
            return f != -1;
        }

        static 
        {
            a = new a("PRELOAD", 0, -1);
            b = new a("LOADING", 1, -1);
            c = new a("UNKNOWN", 2, -1);
            d = new a("TRACKING_ENABLED", 3, 0);
            e = new a("TRACKING_DISABLED", 4, 1);
            g = (new a[] {
                a, b, c, d, e
            });
        }

        private a(String s, int l, int i1)
        {
            super(s, l);
            f = i1;
        }
    }


    private static String a = null;
    private static String b = null;
    private static a c;
    private static String d = null;

    private c()
    {
    }

    public static void a()
    {
        com/chartboost/sdk/Libraries/d;
        JVM INSTR monitorenter ;
        if (c() == a.a)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        com/chartboost/sdk/Libraries/d;
        JVM INSTR monitorexit ;
        return;
        a(com.chartboost.sdk.Libraries.a.b);
        com/chartboost/sdk/Libraries/d;
        JVM INSTR monitorexit ;
        Class class1 = null;
        Class class2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        class1 = class2;
_L2:
        Exception exception;
        if (class1 == null)
        {
            g();
            return;
        } else
        {
            ay.a().execute(new Runnable() {

                public void run()
                {
                    String s;
                    try
                    {
                        s = com.chartboost.sdk.Libraries.d.a();
                    }
                    catch (VerifyError verifyerror)
                    {
                        c.f();
                        return;
                    }
                    c.a(s);
                    bb.b();
                }

            });
            return;
        }
        exception;
        com/chartboost/sdk/Libraries/d;
        JVM INSTR monitorexit ;
        throw exception;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected static void a(a a1)
    {
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        c = a1;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    static void a(String s)
    {
        b(s);
    }

    public static String b()
    {
        if (a == null)
        {
            a = com.chartboost.sdk.Libraries.b.b(h());
        }
        return a;
    }

    private static void b(String s)
    {
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        b = s;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static a c()
    {
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        a a1 = c;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    public static String d()
    {
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorenter ;
        String s = b;
        com/chartboost/sdk/Libraries/c;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String e()
    {
        return android.provider.Settings.Secure.getString(com.chartboost.sdk.b.l().getContentResolver(), "android_id");
    }

    static void f()
    {
        g();
    }

    private static void g()
    {
        com.chartboost.sdk.Libraries.CBLogging.b("CBIdentity", "WARNING: It looks like you've forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details.");
        a(a.c);
        bb.b();
    }

    private static byte[] h()
    {
        String s;
label0:
        {
            String s1 = e();
            if (s1 != null)
            {
                s = s1;
                if (!"9774d56d682e549c".equals(s1))
                {
                    break label0;
                }
            }
            s = i();
        }
        String s2 = j();
        String s3 = d();
        cn cn1 = new cn();
        cn1.a("uuid", s);
        cn1.a("macid", s2);
        cn1.a("gaid", s3);
        return (new cm()).a(cn1);
    }

    private static String i()
    {
        if (d == null)
        {
            Object obj = CBUtility.a();
            d = ((SharedPreferences) (obj)).getString("cbUUID", null);
            if (d == null)
            {
                d = UUID.randomUUID().toString();
                obj = ((SharedPreferences) (obj)).edit();
                ((android.content.SharedPreferences.Editor) (obj)).putString("cbUUID", d);
                ((android.content.SharedPreferences.Editor) (obj)).commit();
            }
        }
        return d;
    }

    private static String j()
    {
        return com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(k()));
    }

    private static byte[] k()
    {
        String s;
        String as[];
        byte abyte0[];
        int l;
        try
        {
            s = ((WifiManager)com.chartboost.sdk.b.l().getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        catch (Exception exception)
        {
            return null;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        if (s.equals(""))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        as = s.split(":");
        abyte0 = new byte[6];
        l = 0;
_L2:
        if (l >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[l] = Integer.valueOf(Integer.parseInt(as[l], 16)).byteValue();
        l++;
        if (true) goto _L2; else goto _L1
_L1:
        return abyte0;
        return null;
    }

    static 
    {
        c = a.a;
    }
}
