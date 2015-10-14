// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import c.m.x.a.ep.p;

public class MmgPushReceiver extends BroadcastReceiver
{

    public MmgPushReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.d("[PushNotifyEx]", "onReceiveAction");
        String s = intent.getAction();
        if (s.equals("com.urbanairship.push.PUSH_RECEIVED"))
        {
            Log.d("[PushNotifyEx]", "ACTION_PUSH_RECEIVED");
            p.a(intent);
        } else
        {
            if (s.equals("com.urbanairship.push.NOTIFICATION_OPENED"))
            {
                Log.d("[PushNotifyEx]", "ACTION_NOTIFICATION_OPENED");
                p.a(context, intent);
                return;
            }
            if (s.equals("com.urbanairship.push.REGISTRATION_FINISHED"))
            {
                Log.d("[PushNotifyEx]", "ACTION_REGISTRATION_FINISHED");
                p.b(intent);
                return;
            }
        }
    }
}
