// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.view.View;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TapjoyDisplayAd, TapjoyLog, TapjoyConnectCore

private class <init> extends TimerTask
{

    final TapjoyDisplayAd this$0;

    public void run()
    {
        TapjoyDisplayAd tapjoydisplayad = TapjoyDisplayAd.this;
        tapjoydisplayad.elapsed_time = tapjoydisplayad.elapsed_time + 10000L;
        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("banner elapsed_time: ").append(elapsed_time).append(" (").append(elapsed_time / 1000L / 60L).append("m ").append((elapsed_time / 1000L) % 60L).append("s)").toString());
        if (adView == null)
        {
            cancel();
        } else
        {
            TapjoyLog.i("Banner Ad", (new StringBuilder()).append("adView.isShown: ").append(adView.isShown()).toString());
            if (adView.isShown() && TapjoyConnectCore.getInstance() != null)
            {
                TapjoyLog.i("Banner Ad", "call connect");
                TapjoyConnectCore.getInstance().callConnect();
                cancel();
            }
            if (elapsed_time >= 0x124f80L)
            {
                cancel();
                return;
            }
        }
    }

    private ()
    {
        this$0 = TapjoyDisplayAd.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
