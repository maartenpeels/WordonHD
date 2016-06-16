// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house.model:
//            VideoModel

class this._cls0
    implements GenericCallback
{

    final VideoModel this$0;

    public void onCallback(Object obj, Throwable throwable)
    {
        Logger.format("(HTML ASSETS CACHED) %s", new Object[] {
            VideoModel.this
        });
        MetricsTracker.getEvent(VideoModel.this).creativeDownloadEndTime(System.currentTimeMillis()).impressionId(impressionId).creativeDownloadFailedAmount(getCreativeSuccess()).commit();
    }

    ()
    {
        this$0 = VideoModel.this;
        super();
    }
}
