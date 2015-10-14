// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.push;

import android.content.Context;

public class GCMBroadcastReceiver extends com.google.android.gcm.GCMBroadcastReceiver
{

    public GCMBroadcastReceiver()
    {
    }

    protected final String a(Context context)
    {
        return "com.milkmangames.extensions.android.push.GCMIntentService";
    }
}
