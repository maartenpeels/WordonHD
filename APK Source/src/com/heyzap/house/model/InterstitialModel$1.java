// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house.model:
//            InterstitialModel

class chCompleteListener
    implements GenericCallback
{

    final InterstitialModel this$0;
    final chCompleteListener val$listener;

    public void onCallback(Object obj, Throwable throwable)
    {
        Logger.format("(HTML ASSETS CACHED) %s", new Object[] {
            InterstitialModel.this
        });
        setIsFullyCached(true);
        setIsReady(true);
        if (val$listener != null)
        {
            val$listener.onComplete(InterstitialModel.this, null);
        }
        MetricsTracker.getEvent(InterstitialModel.this).creativeDownloadEndTime(System.currentTimeMillis()).impressionId(impressionId).creativeDownloadFailedAmount(getCreativeSuccess()).commit();
    }

    chCompleteListener()
    {
        this$0 = final_interstitialmodel;
        val$listener = chCompleteListener.this;
        super();
    }
}
