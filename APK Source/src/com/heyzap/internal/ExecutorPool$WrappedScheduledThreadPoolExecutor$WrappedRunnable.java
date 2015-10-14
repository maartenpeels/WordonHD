// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.util.Log;
import com.heyzap.house.Manager;
import com.heyzap.sdk.ads.HeyzapAds;

// Referenced classes of package com.heyzap.internal:
//            ExecutorPool, Utils

private class inner
    implements Runnable
{

    private final Runnable inner;
    final inner this$0;

    public void run()
    {
        inner.run();
_L1:
        return;
        Throwable throwable;
        throwable;
        Log.v("Heyzap", "Heyzap has encountered an error and is shutting down.");
        throwable.printStackTrace();
        inner.this.inner();
        HeyzapAds.shutdown();
        if (Utils.isDebug(Manager.applicationContext).booleanValue())
        {
            System.exit(0);
            return;
        }
          goto _L1
    }

    public Y(Runnable runnable)
    {
        this$0 = this._cls0.this;
        super();
        inner = runnable;
    }
}
