// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PixelFormat;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Arrays;

public class SystemCapabilities
{

    public SystemCapabilities()
    {
    }

    public static int GetBitsPerPixel(Context context)
    {
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        PixelFormat pixelformat = new PixelFormat();
        PixelFormat.getPixelFormatInfo(context.getPixelFormat(), pixelformat);
        return pixelformat.bitsPerPixel;
    }

    public static int GetScreenDPI(Context context)
    {
        String as[] = new String[13];
        as[0] = "SCH-I800";
        as[1] = "SPH-P100";
        as[2] = "SC-01C";
        as[3] = "GT-P1000";
        as[4] = "GT-P1010";
        as[5] = "GT-P1000R";
        as[6] = "GT-P1000M";
        as[7] = "SHW-M180W";
        as[8] = "SHW-M180L";
        as[9] = "SHW-M180K";
        as[10] = "SHW-M180S";
        as[11] = "SGH-I987";
        as[12] = "SGH-t849";
        String s = Build.MODEL;
        Arrays.sort(as);
        if (Arrays.binarySearch(as, s) >= 0)
        {
            return 160;
        } else
        {
            context = (WindowManager)context.getSystemService("window");
            DisplayMetrics displaymetrics = new DisplayMetrics();
            context.getDefaultDisplay().getMetrics(displaymetrics);
            return displaymetrics.densityDpi;
        }
    }

    public static int GetScreenHRes(Context context)
    {
        context = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        context.getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.widthPixels;
    }

    public static int GetScreenVRes(Context context)
    {
        context = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        context.getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.heightPixels;
    }

    public static boolean HasTrackBall(Context context)
    {
        return context.getResources().getConfiguration().navigation == 3;
    }
}
