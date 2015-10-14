// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.AttributionHandler;

public class PackageAddedReceiver extends BroadcastReceiver
{

    public PackageAddedReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if (!intent.getBooleanExtra("android.intent.extra.REPLACING", false))
        {
            if ((intent = intent.getDataString().replaceFirst((new StringBuilder()).append(intent.getScheme()).append(":").toString(), "")) != null)
            {
                Manager.applicationContext = context.getApplicationContext();
                AttributionHandler.getInstance().didInstall(context.getApplicationContext(), intent);
                return;
            }
        }
    }
}
