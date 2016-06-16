// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.milkmangames.extensions.android.coremobile.a;
import com.milkmangames.extensions.android.coremobile.b;

public class CMLocalNotificationReceiver extends BroadcastReceiver
{

    public CMLocalNotificationReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.d("[CMR]", "Receive");
        a.a(context);
        b.a(context, intent);
    }
}
