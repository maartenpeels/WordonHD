// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TapjoyConnectCore, TapjoyLog

private class <init> extends TimerTask
{

    final TapjoyConnectCore this$0;

    public void run()
    {
        TapjoyConnectCore.access$414(TapjoyConnectCore.this, 10000L);
        TapjoyLog.i("TapjoyConnect", (new StringBuilder()).append("elapsed_time: ").append(TapjoyConnectCore.access$400(TapjoyConnectCore.this)).append(" (").append(TapjoyConnectCore.access$400(TapjoyConnectCore.this) / 1000L / 60L).append("m ").append((TapjoyConnectCore.access$400(TapjoyConnectCore.this) / 1000L) % 60L).append("s)").toString());
        android.content.> > = TapjoyConnectCore.access$200().getSharedPreferences("tjcPrefrences", 0).edit();
        >._mth0("tapjoy_elapsed_time", TapjoyConnectCore.access$400(TapjoyConnectCore.this));
        >._mth0();
        if (TapjoyConnectCore.access$400(TapjoyConnectCore.this) >= 0xdbba0L)
        {
            TapjoyLog.i("TapjoyConnect", "timer done...");
            if (TapjoyConnectCore.access$500() != null && TapjoyConnectCore.access$500().length() > 0)
            {
                TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
                actionComplete(TapjoyConnectCore.access$500());
            }
            cancel();
        }
    }

    private ()
    {
        this$0 = TapjoyConnectCore.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
