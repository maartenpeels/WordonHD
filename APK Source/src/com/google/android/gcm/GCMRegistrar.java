// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gcm:
//            GCMBroadcastReceiver

public final class GCMRegistrar
{

    private static GCMBroadcastReceiver a;
    private static String b;

    private GCMRegistrar()
    {
        throw new UnsupportedOperationException();
    }

    static String a(Context context, String s)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.google.android.gcm", 0);
        String s1 = sharedpreferences.getString("regId", "");
        int i1 = l(context);
        Log.v("GCMRegistrar", (new StringBuilder("Saving regId on app version ")).append(i1).toString());
        context = sharedpreferences.edit();
        context.putString("regId", s);
        context.putInt("appVersion", i1);
        context.commit();
        return s1;
    }

    public static void a(Context context)
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        if (i1 < 8)
        {
            throw new UnsupportedOperationException((new StringBuilder("Device must be at least API Level 8 (instead of ")).append(i1).append(")").toString());
        }
        context = context.getPackageManager();
        try
        {
            context.getPackageInfo("com.google.android.gsf", 0);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new UnsupportedOperationException("Device does not have package com.google.android.gsf");
        }
    }

    static void a(Context context, int i1)
    {
        context = context.getSharedPreferences("com.google.android.gcm", 0).edit();
        context.putInt("backoff_ms", i1);
        context.commit();
    }

    private static void a(Context context, Set set, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        context = context.getPackageName();
        Intent intent = new Intent(s);
        intent.setPackage(context);
        context = packagemanager.queryBroadcastReceivers(intent, 32);
        if (context.isEmpty())
        {
            throw new IllegalStateException((new StringBuilder("No receivers for action ")).append(s).toString());
        }
        if (Log.isLoggable("GCMRegistrar", 2))
        {
            Log.v("GCMRegistrar", (new StringBuilder("Found ")).append(context.size()).append(" receivers for action ").append(s).toString());
        }
        for (context = context.iterator(); context.hasNext();)
        {
            s = ((ResolveInfo)context.next()).activityInfo.name;
            if (!set.contains(s))
            {
                throw new IllegalStateException((new StringBuilder("Receiver ")).append(s).append(" is not set with permission com.google.android.c2dm.permission.SEND").toString());
            }
        }

    }

    public static transient void a(Context context, String as[])
    {
        j(context);
        b(context, as);
    }

    static void a(String s)
    {
        Log.v("GCMRegistrar", (new StringBuilder("Setting the name of retry receiver class to ")).append(s).toString());
        b = s;
    }

    public static void b(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        Object obj = context.getPackageName();
        Object obj1 = (new StringBuilder()).append(((String) (obj))).append(".permission.C2D_MESSAGE").toString();
        try
        {
            packagemanager.getPermissionInfo(((String) (obj1)), 4096);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder("Application does not define permission ")).append(((String) (obj1))).toString());
        }
        try
        {
            obj1 = packagemanager.getPackageInfo(((String) (obj)), 2);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder("Could not get receivers for package ")).append(((String) (obj))).toString());
        }
        obj1 = ((PackageInfo) (obj1)).receivers;
        if (obj1 == null || obj1.length == 0)
        {
            throw new IllegalStateException((new StringBuilder("No receiver for package ")).append(((String) (obj))).toString());
        }
        if (Log.isLoggable("GCMRegistrar", 2))
        {
            Log.v("GCMRegistrar", (new StringBuilder("number of receivers for ")).append(((String) (obj))).append(": ").append(obj1.length).toString());
        }
        obj = new HashSet();
        int j1 = obj1.length;
        for (int i1 = 0; i1 < j1; i1++)
        {
            Object obj2 = obj1[i1];
            if ("com.google.android.c2dm.permission.SEND".equals(((ActivityInfo) (obj2)).permission))
            {
                ((Set) (obj)).add(((ActivityInfo) (obj2)).name);
            }
        }

        if (((Set) (obj)).isEmpty())
        {
            throw new IllegalStateException("No receiver allowed to receive com.google.android.c2dm.permission.SEND");
        } else
        {
            a(context, ((Set) (obj)), "com.google.android.c2dm.intent.REGISTRATION");
            a(context, ((Set) (obj)), "com.google.android.c2dm.intent.RECEIVE");
            return;
        }
    }

    static transient void b(Context context, String as[])
    {
        if (as == null || as.length == 0)
        {
            throw new IllegalArgumentException("No senderIds");
        }
        Object obj = new StringBuilder(as[0]);
        for (int i1 = 1; i1 < as.length; i1++)
        {
            ((StringBuilder) (obj)).append(',').append(as[i1]);
        }

        as = ((StringBuilder) (obj)).toString();
        Log.v("GCMRegistrar", (new StringBuilder("Registering app ")).append(context.getPackageName()).append(" of senders ").append(as).toString());
        obj = new Intent("com.google.android.c2dm.intent.REGISTER");
        ((Intent) (obj)).setPackage("com.google.android.gsf");
        ((Intent) (obj)).putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        ((Intent) (obj)).putExtra("sender", as);
        context.startService(((Intent) (obj)));
    }

    public static void c(Context context)
    {
        j(context);
        d(context);
    }

    static void d(Context context)
    {
        Log.v("GCMRegistrar", (new StringBuilder("Unregistering app ")).append(context.getPackageName()).toString());
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.setPackage("com.google.android.gsf");
        intent.putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        context.startService(intent);
    }

    static void e(Context context)
    {
        com/google/android/gcm/GCMRegistrar;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        if (b != null) goto _L4; else goto _L3
_L3:
        Log.e("GCMRegistrar", "internal error: retry receiver class not set yet");
        a = new GCMBroadcastReceiver();
_L5:
        String s = context.getPackageName();
        IntentFilter intentfilter = new IntentFilter("com.google.android.gcm.intent.RETRY");
        intentfilter.addCategory(s);
        s = (new StringBuilder()).append(s).append(".permission.C2D_MESSAGE").toString();
        Log.v("GCMRegistrar", "Registering receiver");
        context.registerReceiver(a, intentfilter, s, null);
_L2:
        com/google/android/gcm/GCMRegistrar;
        JVM INSTR monitorexit ;
        return;
_L4:
        a = (GCMBroadcastReceiver)Class.forName(b).newInstance();
          goto _L5
        Exception exception;
        exception;
        Log.e("GCMRegistrar", (new StringBuilder("Could not create instance of ")).append(b).append(". Using ").append(com/google/android/gcm/GCMBroadcastReceiver.getName()).append(" directly.").toString());
        a = new GCMBroadcastReceiver();
          goto _L5
        context;
        throw context;
    }

    public static String f(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.google.android.gcm", 0);
        String s = sharedpreferences.getString("regId", "");
        int i1 = sharedpreferences.getInt("appVersion", 0x80000000);
        int j1 = l(context);
        if (i1 != 0x80000000 && i1 != j1)
        {
            Log.v("GCMRegistrar", (new StringBuilder("App version changed from ")).append(i1).append(" to ").append(j1).append("; resetting registration id").toString());
            a(context, "");
            return "";
        } else
        {
            return s;
        }
    }

    public static boolean g(Context context)
    {
        return f(context).length() > 0;
    }

    static String h(Context context)
    {
        return a(context, "");
    }

    public static boolean i(Context context)
    {
        context = context.getSharedPreferences("com.google.android.gcm", 0);
        boolean flag = context.getBoolean("onServer", false);
        Log.v("GCMRegistrar", (new StringBuilder("Is registered on server: ")).append(flag).toString());
        if (flag)
        {
            long l1 = context.getLong("onServerExpirationTime", -1L);
            if (System.currentTimeMillis() > l1)
            {
                Log.v("GCMRegistrar", (new StringBuilder("flag expired on: ")).append(new Timestamp(l1)).toString());
                return false;
            }
        }
        return flag;
    }

    static void j(Context context)
    {
        Log.d("GCMRegistrar", (new StringBuilder("resetting backoff for ")).append(context.getPackageName()).toString());
        a(context, 3000);
    }

    static int k(Context context)
    {
        return context.getSharedPreferences("com.google.android.gcm", 0).getInt("backoff_ms", 3000);
    }

    private static int l(Context context)
    {
        int i1;
        try
        {
            i1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new RuntimeException((new StringBuilder("Coult not get package name: ")).append(context).toString());
        }
        return i1;
    }
}
