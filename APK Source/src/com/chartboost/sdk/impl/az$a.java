// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.chartboost.sdk.impl:
//            az

private class iver extends BroadcastReceiver
{

    final az a;

    public void onReceive(Context context, Intent intent)
    {
        intent = az.a();
        intent.a(context);
        intent.notifyObservers();
    }

    public iver(az az1)
    {
        a = az1;
        super();
    }
}
