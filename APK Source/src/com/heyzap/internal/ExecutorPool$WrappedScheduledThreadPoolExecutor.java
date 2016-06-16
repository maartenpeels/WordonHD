// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.util.Log;
import com.heyzap.house.Manager;
import com.heyzap.sdk.ads.HeyzapAds;
import java.util.concurrent.ScheduledThreadPoolExecutor;

// Referenced classes of package com.heyzap.internal:
//            ExecutorPool, Utils

private static class WrappedRunnable.inner extends ScheduledThreadPoolExecutor
{
    private class WrappedRunnable
        implements Runnable
    {

        private final Runnable inner;
        final ExecutorPool.WrappedScheduledThreadPoolExecutor this$0;

        public void run()
        {
            inner.run();
_L1:
            return;
            Throwable throwable;
            throwable;
            Log.v("Heyzap", "Heyzap has encountered an error and is shutting down.");
            throwable.printStackTrace();
            shutdown();
            HeyzapAds.shutdown();
            if (Utils.isDebug(Manager.applicationContext).booleanValue())
            {
                System.exit(0);
                return;
            }
              goto _L1
        }

        public WrappedRunnable(Runnable runnable)
        {
            this$0 = ExecutorPool.WrappedScheduledThreadPoolExecutor.this;
            super();
            inner = runnable;
        }
    }


    public void execute(Runnable runnable)
    {
        super.execute(new WrappedRunnable(runnable));
    }

    public WrappedRunnable.inner(int i)
    {
        super(i);
    }
}
