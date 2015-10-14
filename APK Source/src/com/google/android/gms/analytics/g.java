// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

// Referenced classes of package com.google.android.gms.analytics:
//            m, aa

class g
    implements m
{

    private static Object sf = new Object();
    private static g ss;
    protected String so;
    protected String sp;
    protected String sq;
    protected String sr;

    protected g()
    {
    }

    private g(Context context)
    {
        Object obj;
        PackageManager packagemanager;
        packagemanager = context.getPackageManager();
        sq = context.getPackageName();
        sr = packagemanager.getInstallerPackageName(sq);
        obj = sq;
        Object obj1 = packagemanager.getPackageInfo(context.getPackageName(), 0);
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        context = packagemanager.getApplicationLabel(((PackageInfo) (obj1)).applicationInfo).toString();
        obj1 = ((PackageInfo) (obj1)).versionName;
        obj = context;
        context = ((Context) (obj1));
_L5:
        so = ((String) (obj));
        sp = context;
        return;
        context;
        context = ((Context) (obj));
_L3:
        aa.w((new StringBuilder()).append("Error retrieving package info: appName set to ").append(context).toString());
        obj = context;
        context = null;
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (true) goto _L3; else goto _L2
_L2:
        context = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static g ca()
    {
        return ss;
    }

    public static void n(Context context)
    {
        synchronized (sf)
        {
            if (ss == null)
            {
                ss = new g(context);
            }
        }
        return;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    public boolean C(String s)
    {
        return "&an".equals(s) || "&av".equals(s) || "&aid".equals(s) || "&aiid".equals(s);
    }

    public String getValue(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (s.equals("&an"))
        {
            return so;
        }
        if (s.equals("&av"))
        {
            return sp;
        }
        if (s.equals("&aid"))
        {
            return sq;
        }
        if (s.equals("&aiid"))
        {
            return sr;
        } else
        {
            return null;
        }
    }

}
