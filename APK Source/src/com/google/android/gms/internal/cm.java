// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            dw, dj, dk, du

public final class cm extends cn.a
{

    private String lh;
    private Context mContext;
    private String oD;
    private ArrayList oE;

    public cm(String s, ArrayList arraylist, Context context, String s1)
    {
        oD = s;
        oE = arraylist;
        lh = s1;
        mContext = context;
    }

    private void aX()
    {
        try
        {
            mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] {
                android/content/Context, java/lang/String, java/lang/String, Boolean.TYPE
            }).invoke(null, new Object[] {
                mContext, oD, "", Boolean.valueOf(true)
            });
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            dw.z("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            dw.z("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
            return;
        }
        catch (Exception exception)
        {
            dw.c("Fail to report a conversion.", exception);
        }
    }

    protected String a(String s, HashMap hashmap)
    {
        String s1;
        String s3;
        s3 = mContext.getPackageName();
        s1 = "";
        String s2 = mContext.getPackageManager().getPackageInfo(s3, 0).versionName;
        s1 = s2;
_L2:
        long l;
        long l1;
        l = SystemClock.elapsedRealtime();
        l1 = dj.bu().bw();
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext();)
        {
            String s4 = (String)iterator.next();
            s = s.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
                s4
            }), String.format("$1%s$2", new Object[] {
                hashmap.get(s4)
            }));
        }

        break; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        dw.c("Error to retrieve app version", namenotfoundexception);
        if (true) goto _L2; else goto _L1
_L1:
        return s.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "sessionid"
        }), String.format("$1%s$2", new Object[] {
            dj.qK
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "appid"
        }), String.format("$1%s$2", new Object[] {
            s3
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "osversion"
        }), String.format("$1%s$2", new Object[] {
            String.valueOf(android.os.Build.VERSION.SDK_INT)
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "sdkversion"
        }), String.format("$1%s$2", new Object[] {
            lh
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "appversion"
        }), String.format("$1%s$2", new Object[] {
            s1
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "timestamp"
        }), String.format("$1%s$2", new Object[] {
            String.valueOf(l - l1)
        })).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] {
            "[^@]+"
        }), String.format("$1%s$2", new Object[] {
            ""
        })).replaceAll("@@", "@");
    }

    public String getProductId()
    {
        return oD;
    }

    protected int j(int i)
    {
        if (i == 0)
        {
            return 1;
        }
        if (i == 1)
        {
            return 2;
        }
        return i != 4 ? 0 : 3;
    }

    public void recordPlayBillingResolution(int i)
    {
        if (i == 0)
        {
            aX();
        }
        HashMap hashmap = new HashMap();
        hashmap.put("google_play_status", String.valueOf(i));
        hashmap.put("sku", oD);
        hashmap.put("status", String.valueOf(j(i)));
        String s;
        for (Iterator iterator = oE.iterator(); iterator.hasNext(); (new du(mContext, lh, a(s, hashmap))).start())
        {
            s = (String)iterator.next();
        }

    }

    public void recordResolution(int i)
    {
        if (i == 1)
        {
            aX();
        }
        HashMap hashmap = new HashMap();
        hashmap.put("status", String.valueOf(i));
        hashmap.put("sku", oD);
        String s;
        for (Iterator iterator = oE.iterator(); iterator.hasNext(); (new du(mContext, lh, a(s, hashmap))).start())
        {
            s = (String)iterator.next();
        }

    }
}
