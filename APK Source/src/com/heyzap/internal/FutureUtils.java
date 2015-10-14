// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.internal:
//            SettableFuture, ListenableFuture, Logger

public class FutureUtils
{
    public static abstract class FutureRunnable
        implements Runnable
    {

        public final ListenableFuture future;

        public void run()
        {
            Object obj;
            try
            {
                obj = future.get();
            }
            catch (InterruptedException interruptedexception)
            {
                run(null, ((Exception) (interruptedexception)));
                return;
            }
            catch (ExecutionException executionexception)
            {
                run(null, ((Exception) (executionexception)));
                return;
            }
            try
            {
                run(obj, null);
                return;
            }
            catch (Exception exception)
            {
                Logger.log("found error, passing on");
                throw new RuntimeException(exception);
            }
        }

        public abstract void run(Object obj, Exception exception);

        protected FutureRunnable(ListenableFuture listenablefuture)
        {
            future = listenablefuture;
        }
    }


    public FutureUtils()
    {
    }

    public static SettableFuture addTimeout(SettableFuture settablefuture, ScheduledExecutorService scheduledexecutorservice, long l, TimeUnit timeunit)
    {
        scheduledexecutorservice.schedule(new Runnable(settablefuture) {

            final SettableFuture val$future;

            public void run()
            {
                future.setException(new TimeoutException());
            }

            
            {
                future = settablefuture;
                super();
            }
        }, l, timeunit);
        return settablefuture;
    }

    public static SettableFuture allOf(List list, ExecutorService executorservice)
    {
        SettableFuture settablefuture = SettableFuture.create();
        AtomicInteger atomicinteger = new AtomicInteger(0);
        for (Iterator iterator = list.iterator(); iterator.hasNext(); ((ListenableFuture)iterator.next()).addListener(new Runnable(list, atomicinteger, settablefuture) {

        final List val$futures;
        final SettableFuture val$resultFuture;
        final AtomicInteger val$seen;

        public void run()
        {
            if (futures.size() <= seen.addAndGet(1))
            {
                resultFuture.set(Boolean.valueOf(true));
            }
        }

            
            {
                futures = list;
                seen = atomicinteger;
                resultFuture = settablefuture;
                super();
            }
    }, executorservice)) { }
        if (list.size() == 0)
        {
            settablefuture.set(Boolean.valueOf(true));
        }
        return settablefuture;
    }

    public static ListenableFuture anyOf(List list, ExecutorService executorservice)
    {
        SettableFuture settablefuture = SettableFuture.create();
        AtomicInteger atomicinteger = new AtomicInteger(0);
        ListenableFuture listenablefuture;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); listenablefuture.addListener(new FutureRunnable(listenablefuture, settablefuture, list, atomicinteger) {

        final AtomicInteger val$errorsSeen;
        final List val$futures;
        final SettableFuture val$resultFuture;

        public void run(Object obj, Exception exception)
        {
            if (exception == null)
            {
                resultFuture.set(obj);
            } else
            if (futures.size() <= errorsSeen.addAndGet(1))
            {
                resultFuture.setException(new RuntimeException("All futures failed"));
                return;
            }
        }

            
            {
                resultFuture = settablefuture;
                futures = list;
                errorsSeen = atomicinteger;
                super(listenablefuture);
            }
    }, executorservice))
        {
            listenablefuture = (ListenableFuture)iterator.next();
        }

        return settablefuture;
    }

    public static void bind(SettableFuture settablefuture, SettableFuture settablefuture1, ScheduledExecutorService scheduledexecutorservice)
    {
        settablefuture.addListener(new Runnable(settablefuture1, settablefuture) {

            final SettableFuture val$destFuture;
            final SettableFuture val$sourceFuture;

            public void run()
            {
                try
                {
                    destFuture.set(sourceFuture.get());
                    return;
                }
                catch (Exception exception)
                {
                    destFuture.setException(exception);
                }
            }

            
            {
                destFuture = settablefuture;
                sourceFuture = settablefuture1;
                super();
            }
        }, scheduledexecutorservice);
    }

    public static Object getImmediatelyOrDefault(SettableFuture settablefuture, Object obj)
    {
        if (!settablefuture.isDone())
        {
            break MISSING_BLOCK_LABEL_15;
        }
        settablefuture = ((SettableFuture) (settablefuture.get()));
        return settablefuture;
        settablefuture;
        return obj;
    }

    public static SettableFuture wrap(ListenableFuture listenablefuture, ExecutorService executorservice)
    {
        SettableFuture settablefuture = SettableFuture.create();
        listenablefuture.addListener(new FutureRunnable(listenablefuture, settablefuture) {

            final SettableFuture val$resultFuture;

            public void run(Object obj, Exception exception)
            {
                if (exception == null)
                {
                    resultFuture.set(obj);
                    return;
                } else
                {
                    resultFuture.setException(exception);
                    return;
                }
            }

            
            {
                resultFuture = settablefuture;
                super(listenablefuture);
            }
        }, executorservice);
        return settablefuture;
    }

    public static SettableFuture wrapTimeout(ListenableFuture listenablefuture, ScheduledExecutorService scheduledexecutorservice, long l, TimeUnit timeunit)
    {
        return addTimeout(wrap(listenablefuture, scheduledexecutorservice), scheduledexecutorservice, l, timeunit);
    }
}
