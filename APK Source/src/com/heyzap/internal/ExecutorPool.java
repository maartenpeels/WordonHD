// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.util.Log;
import com.heyzap.house.Manager;
import com.heyzap.sdk.ads.HeyzapAds;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.internal:
//            Utils

public class ExecutorPool
{
    class ExecutorThreadFactory
        implements ThreadFactory
    {

        final ExecutorPool this$0;

        public Thread newThread(Runnable runnable)
        {
            return new Thread(runnable, "HeyzapThreadPool");
        }

        ExecutorThreadFactory()
        {
            this$0 = ExecutorPool.this;
            super();
        }
    }

    private static class WrappedScheduledThreadPoolExecutor extends ScheduledThreadPoolExecutor
    {

        public void execute(Runnable runnable)
        {
            super.execute(new WrappedRunnable(runnable));
        }

        public WrappedScheduledThreadPoolExecutor(int i)
        {
            super(i);
        }
    }

    private class WrappedScheduledThreadPoolExecutor.WrappedRunnable
        implements Runnable
    {

        private final Runnable inner;
        final WrappedScheduledThreadPoolExecutor this$0;

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

        public WrappedScheduledThreadPoolExecutor.WrappedRunnable(Runnable runnable)
        {
            this$0 = WrappedScheduledThreadPoolExecutor.this;
            super();
            inner = runnable;
        }
    }


    private static volatile ExecutorPool ref;
    ScheduledThreadPoolExecutor pool;

    private ExecutorPool()
    {
        pool = new WrappedScheduledThreadPoolExecutor(10);
        pool.setKeepAliveTime(10L, TimeUnit.SECONDS);
        pool.allowCoreThreadTimeOut(true);
        pool.setThreadFactory(new ExecutorThreadFactory());
    }

    public static ScheduledThreadPoolExecutor getInstance()
    {
        com/heyzap/internal/ExecutorPool;
        JVM INSTR monitorenter ;
        ScheduledThreadPoolExecutor scheduledthreadpoolexecutor;
        if (ref == null)
        {
            ref = new ExecutorPool();
        }
        scheduledthreadpoolexecutor = ref.pool;
        com/heyzap/internal/ExecutorPool;
        JVM INSTR monitorexit ;
        return scheduledthreadpoolexecutor;
        Exception exception;
        exception;
        throw exception;
    }

    public Object clone()
    {
        return null;
    }
}
