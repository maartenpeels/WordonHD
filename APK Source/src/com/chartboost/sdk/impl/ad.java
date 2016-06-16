// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import java.io.File;

// Referenced classes of package com.chartboost.sdk.impl:
//            aa, u, m, w, 
//            x, z

public class ad
{

    public static m a(Context context)
    {
        return a(context, null);
    }

    public static m a(Context context, z z)
    {
        File file = new File(context.getCacheDir(), "volley");
        String s = "volley/0";
        try
        {
            String s1 = context.getPackageName();
            context = context.getPackageManager().getPackageInfo(s1, 0);
            context = (new StringBuilder(String.valueOf(s1))).append("/").append(((PackageInfo) (context)).versionCode).toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s;
        }
        if (z == null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 9)
            {
                context = new aa();
            } else
            {
                context = new x(AndroidHttpClient.newInstance(context));
            }
        } else
        {
            context = z;
        }
        context = new u(context);
        context = new m(new w(file), context);
        context.a();
        return context;
    }
}
