// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.content.Context;
import android.os.PowerManager;

public abstract class a
{

    private static android.os.PowerManager.WakeLock a;

    public static void a(Context context)
    {
        if (a != null && a.isHeld())
        {
            a.release();
        }
        context = (PowerManager)context.getSystemService("power");
        if (context.isScreenOn())
        {
            return;
        } else
        {
            context = context.newWakeLock(0x3000001a, "com.milkmangames.customextensions.android.WakeLock");
            a = context;
            context.acquire(10000L);
            return;
        }
    }
}
