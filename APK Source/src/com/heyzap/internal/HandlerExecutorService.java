// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.heyzap.internal:
//            SettableFuture

public class HandlerExecutorService
    implements ExecutorService
{

    private final Handler handler;

    public HandlerExecutorService(Handler handler1)
    {
        handler = handler1;
    }

    public boolean awaitTermination(long l, TimeUnit timeunit)
        throws InterruptedException
    {
        return false;
    }

    public void execute(Runnable runnable)
    {
        submit(runnable);
    }

    public List invokeAll(Collection collection)
        throws InterruptedException
    {
        throw new RuntimeException("not implemented");
    }

    public List invokeAll(Collection collection, long l, TimeUnit timeunit)
        throws InterruptedException
    {
        throw new RuntimeException("not implemented");
    }

    public Object invokeAny(Collection collection)
        throws InterruptedException, ExecutionException
    {
        throw new RuntimeException("not implemented");
    }

    public Object invokeAny(Collection collection, long l, TimeUnit timeunit)
        throws InterruptedException, ExecutionException, TimeoutException
    {
        throw new RuntimeException("not implemented");
    }

    public boolean isShutdown()
    {
        return false;
    }

    public boolean isTerminated()
    {
        return false;
    }

    public void shutdown()
    {
    }

    public List shutdownNow()
    {
        return new ArrayList();
    }

    public Future submit(Runnable runnable)
    {
        return submit(runnable, Boolean.valueOf(true));
    }

    public Future submit(final Runnable task, final Object result)
    {
        final SettableFuture future = SettableFuture.create();
        handler.post(new Runnable() {

            final HandlerExecutorService this$0;
            final SettableFuture val$future;
            final Object val$result;
            final Runnable val$task;

            public void run()
            {
                task.run();
                future.set(result);
            }

            
            {
                this$0 = HandlerExecutorService.this;
                task = runnable;
                future = settablefuture;
                result = obj;
                super();
            }
        });
        return future;
    }

    public Future submit(final Callable task)
    {
        final SettableFuture future = SettableFuture.create();
        handler.post(new Runnable() {

            final HandlerExecutorService this$0;
            final SettableFuture val$future;
            final Callable val$task;

            public void run()
            {
                try
                {
                    future.set(task.call());
                    return;
                }
                catch (Exception exception)
                {
                    future.setException(exception);
                }
            }

            
            {
                this$0 = HandlerExecutorService.this;
                future = settablefuture;
                task = callable;
                super();
            }
        });
        return future;
    }
}
