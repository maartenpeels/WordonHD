// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.util.Log;
import com.chartboost.sdk.b;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBUtility

public final class CBLogging
{
    public static final class Level extends Enum
    {

        public static final Level ALL;
        public static final Level INTEGRATION;
        public static final Level NONE;
        private static final Level a[];

        public static Level valueOf(String s)
        {
            return (Level)Enum.valueOf(com/chartboost/sdk/Libraries/CBLogging$Level, s);
        }

        public static Level[] values()
        {
            return (Level[])a.clone();
        }

        static 
        {
            NONE = new Level("NONE", 0);
            INTEGRATION = new Level("INTEGRATION", 1);
            ALL = new Level("ALL", 2);
            a = (new Level[] {
                NONE, INTEGRATION, ALL
            });
        }

        private Level(String s, int i)
        {
            super(s, i);
        }
    }


    public static Level a;
    private static String b = "Chartboost SDK";

    private static String a(Object obj)
    {
        Object obj1 = obj;
        if (obj != null)
        {
            if (obj instanceof String)
            {
                obj1 = obj;
            } else
            {
                obj1 = obj.getClass().getName();
            }
        }
        return (String)(String)obj1;
    }

    public static void a(Object obj, String s)
    {
        if (a == Level.ALL)
        {
            Log.d(a(obj), s);
        }
    }

    public static void a(Object obj, String s, Throwable throwable)
    {
        if (a == Level.ALL)
        {
            Log.d(a(obj), s, throwable);
        }
    }

    public static void a(String s)
    {
        if (a())
        {
            Log.e(b, s);
        }
    }

    private static boolean a()
    {
        return a == Level.ALL || a == Level.INTEGRATION && CBUtility.a(com.chartboost.sdk.b.l());
    }

    public static void b(Object obj, String s)
    {
        if (a == Level.ALL)
        {
            Log.e(a(obj), s);
        }
    }

    public static void b(Object obj, String s, Throwable throwable)
    {
        if (a == Level.ALL)
        {
            Log.e(a(obj), s, throwable);
        }
    }

    public static void c(Object obj, String s)
    {
        if (a == Level.ALL)
        {
            Log.v(a(obj), s);
        }
    }

    public static void c(Object obj, String s, Throwable throwable)
    {
        if (a == Level.ALL)
        {
            Log.v(a(obj), s, throwable);
        }
    }

    public static void d(Object obj, String s)
    {
        if (a == Level.ALL)
        {
            Log.w(a(obj), s);
        }
    }

    public static void d(Object obj, String s, Throwable throwable)
    {
        if (a == Level.ALL)
        {
            Log.w(a(obj), s, throwable);
        }
    }

    public static void e(Object obj, String s)
    {
        if (a == Level.ALL)
        {
            Log.i(a(obj), s);
        }
    }

    static 
    {
        a = Level.INTEGRATION;
    }
}
