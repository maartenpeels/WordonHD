// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.VideoView;

// Referenced classes of package com.tapjoy:
//            TapjoyVideoView, TapjoyLog

private class <init> extends BroadcastReceiver
{

    final TapjoyVideoView this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getBooleanExtra("noConnectivity", false))
        {
            TapjoyVideoView.access$600(TapjoyVideoView.this).pause();
            TapjoyVideoView.access$1302(TapjoyVideoView.this, true);
            showDialog(1);
            TapjoyLog.i("VideoView", "No network connectivity during video playback");
        }
    }

    private ()
    {
        this$0 = TapjoyVideoView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
