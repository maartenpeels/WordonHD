// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.util.Log;

public class Logger
{

    public static int a = 6;
    public static String b = "UrbanAirship";

    private Logger()
    {
    }

    public static void a(String s)
    {
        if (a <= 5 && s != null)
        {
            Log.w(b, s);
        }
    }

    public static void a(String s, Throwable throwable)
    {
        if (a <= 5 && s != null && throwable != null)
        {
            Log.w(b, s, throwable);
        }
    }

    public static void a(Throwable throwable)
    {
        if (a <= 6 && throwable != null)
        {
            Log.e(b, "", throwable);
        }
    }

    public static void b(String s)
    {
        if (a <= 2 && s != null)
        {
            Log.v(b, s);
        }
    }

    public static void b(String s, Throwable throwable)
    {
        if (a <= 4 && s != null && throwable != null)
        {
            Log.i(b, s, throwable);
        }
    }

    public static void c(String s)
    {
        if (a <= 3 && s != null)
        {
            Log.d(b, s);
        }
    }

    public static void c(String s, Throwable throwable)
    {
        if (a <= 6 && s != null && throwable != null)
        {
            Log.e(b, s, throwable);
        }
    }

    public static void d(String s)
    {
        if (a <= 4 && s != null)
        {
            Log.i(b, s);
        }
    }

    public static void e(String s)
    {
        if (a <= 6 && s != null)
        {
            Log.e(b, s);
        }
    }

}
