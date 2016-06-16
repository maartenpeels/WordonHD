// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class TapjoyDisplayMetricsUtil
{

    private Configuration configuration;
    private Context context;
    private DisplayMetrics metrics;

    public TapjoyDisplayMetricsUtil(Context context1)
    {
        context = context1;
        metrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(metrics);
        configuration = context.getResources().getConfiguration();
    }

    public int getScreenDensityDPI()
    {
        return metrics.densityDpi;
    }

    public float getScreenDensityScale()
    {
        return metrics.density;
    }

    public int getScreenLayoutSize()
    {
        return configuration.screenLayout & 0xf;
    }
}
