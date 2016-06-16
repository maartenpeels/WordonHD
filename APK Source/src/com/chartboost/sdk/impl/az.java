// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.chartboost.sdk.Libraries.CBLogging;
import java.util.Observable;

public class az extends Observable
{
    private class a extends BroadcastReceiver
    {

        final az a;

        public void onReceive(Context context, Intent intent)
        {
            intent = az.a();
            intent.a(context);
            intent.notifyObservers();
        }

        public a()
        {
            a = az.this;
            super();
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        private static final b f[];
        private int e;

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/az$b, s);
        }

        public static b[] values()
        {
            return (b[])f.clone();
        }

        public int a()
        {
            return e;
        }

        static 
        {
            a = new b("CONNECTION_UNKNOWN", 0, -1);
            b = new b("CONNECTION_ERROR", 1, 0);
            c = new b("CONNECTION_WIFI", 2, 1);
            d = new b("CONNECTION_MOBILE", 3, 2);
            f = (new b[] {
                a, b, c, d
            });
        }

        private b(String s, int i, int j)
        {
            super(s, i);
            e = j;
        }
    }


    private static az c = null;
    private static b d;
    private boolean a;
    private boolean b;
    private a e;

    private az()
    {
        a = true;
        b = false;
        e = null;
        e = new a();
    }

    public static az a()
    {
        if (c == null)
        {
            c = new az();
        }
        return c;
    }

    public void a(Context context)
    {
        try
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            d = b.a;
            throw new SecurityException("Chartboost SDK requires 'android.permission.ACCESS_NETWORK_STATE' permission set in your AndroidManifest.xml");
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        if (!context.isConnectedOrConnecting())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        a(true);
        if (context.getType() == 1)
        {
            d = b.c;
            CBLogging.a("CBReachability", "NETWORK TYPE: TYPE_WIFI");
            return;
        }
        if (context.getType() == 0)
        {
            d = b.d;
            CBLogging.a("CBReachability", "NETWORK TYPE: TYPE_MOBILE");
            return;
        }
        break MISSING_BLOCK_LABEL_107;
        a(false);
        d = b.b;
        CBLogging.a("CBReachability", "NETWORK TYPE: NO Network");
    }

    public void a(boolean flag)
    {
        a = flag;
    }

    public int b()
    {
        return d.a();
    }

    public Intent b(Context context)
    {
        if (context != null && !b)
        {
            b(true);
            CBLogging.a("CBReachability", "Network broadcast successfully registered");
            return context.registerReceiver(e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } else
        {
            return null;
        }
    }

    public void b(boolean flag)
    {
        b = flag;
    }

    public void c(Context context)
    {
        if (context != null && b)
        {
            context.unregisterReceiver(e);
            b(false);
            CBLogging.a("CBReachability", "Network broadcast successfully unregistered");
        }
    }

    public boolean c()
    {
        return a;
    }

    public void notifyObservers()
    {
        if (a)
        {
            setChanged();
            super.notifyObservers(this);
        }
    }

    static 
    {
        d = b.a;
    }
}
