// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class RetryManager
{
    public static class DelayedSchedule
        implements Schedule
    {

        public final Schedule _flddelegate;
        public final long initialDelay;
        private AtomicInteger retryCount;

        public long getIntervalMillis()
        {
            if (retryCount.get() > 0)
            {
                return _flddelegate.getIntervalMillis();
            } else
            {
                return initialDelay;
            }
        }

        public void incRetries()
        {
            retryCount.incrementAndGet();
            _flddelegate.incRetries();
        }

        public DelayedSchedule(int i, TimeUnit timeunit, Schedule schedule)
        {
            retryCount = new AtomicInteger(0);
            _flddelegate = schedule;
            initialDelay = timeunit.toMillis(i);
        }
    }

    public static class ExponentialSchedule
        implements Schedule
    {

        private final double exponentBase;
        private final long firstInterval;
        private AtomicInteger retryCount;

        public long getIntervalMillis()
        {
            if (retryCount.get() == 0)
            {
                return 0L;
            } else
            {
                return (long)((double)firstInterval * Math.pow(exponentBase, retryCount.get()));
            }
        }

        public void incRetries()
        {
            retryCount.incrementAndGet();
        }

        public ExponentialSchedule(double d, long l, TimeUnit timeunit)
        {
            retryCount = new AtomicInteger(0);
            firstInterval = timeunit.toMillis(l);
            exponentBase = d;
        }
    }

    public static abstract class RetryableTask
        implements Runnable
    {

        private RetryManager retryManager;

        public void retry()
        {
            retryManager.retry();
        }

        public void setRetryManager(RetryManager retrymanager)
        {
            retryManager = retrymanager;
        }

        public RetryableTask()
        {
        }
    }

    public static interface Schedule
    {

        public abstract long getIntervalMillis();

        public abstract void incRetries();
    }


    private boolean cancelled;
    private final ScheduledExecutorService executorService;
    private Object retryLock;
    private final Schedule retrySchedule;
    private ScheduledFuture scheduleFuture;
    private final Runnable task;

    public RetryManager(Runnable runnable, Schedule schedule, ScheduledExecutorService scheduledexecutorservice)
    {
        retryLock = new Object();
        cancelled = false;
        if (runnable instanceof RetryableTask)
        {
            ((RetryableTask)runnable).setRetryManager(this);
        }
        task = runnable;
        executorService = scheduledexecutorservice;
        retrySchedule = schedule;
    }

    public void cancel()
    {
        cancelled = true;
        ScheduledFuture scheduledfuture = scheduleFuture;
        if (scheduledfuture != null)
        {
            scheduledfuture.cancel(false);
        }
    }

    public void retry()
    {
        if (cancelled)
        {
            return;
        }
        synchronized (retryLock)
        {
            if (scheduleFuture == null || scheduleFuture.isDone())
            {
                scheduleFuture = executorService.schedule(task, retrySchedule.getIntervalMillis(), TimeUnit.MILLISECONDS);
                retrySchedule.incRetries();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void start()
    {
        executorService.schedule(task, retrySchedule.getIntervalMillis(), TimeUnit.MILLISECONDS);
    }
}
