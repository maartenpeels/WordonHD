// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import com.tapjoy.mraid.view.MraidView;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.tapjoy:
//            TapjoyDisplayAd, TapjoyLog

private class <init> extends TimerTask
{

    final TapjoyDisplayAd this$0;

    public void run()
    {
        if (webView.getState().equals(com.tapjoy.mraid.view..().toLowerCase(Locale.ENGLISH)))
        {
            TapjoyLog.i("Banner Ad", "refreshing banner ad...");
            getDisplayAd(TapjoyDisplayAd.access$000(TapjoyDisplayAd.this), TapjoyDisplayAd.access$200(), TapjoyDisplayAd.access$300());
            timer.cancel();
            timer = null;
            return;
        } else
        {
            TapjoyLog.i("Banner Ad", "ad is not in default state.  will try refreshing again in 60000s...");
            timer.cancel();
            timer = null;
            timer = new Timer();
            timer.schedule(new <init>(), 60000L);
            return;
        }
    }

    private TE()
    {
        this$0 = TapjoyDisplayAd.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
