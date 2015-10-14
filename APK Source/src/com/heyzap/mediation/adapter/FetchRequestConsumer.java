// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import com.heyzap.mediation.FetchRequestStore;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class FetchRequestConsumer
{
    private class ConsumeCallback
        implements Runnable
    {

        private final Collection adUnits;
        private final Runnable callback;
        private final AtomicBoolean ranOnce = new AtomicBoolean(false);
        final FetchRequestConsumer this$0;

        public void run()
        {
            com.heyzap.internal.Constants.AdUnit adunit;
            Iterator iterator = adUnits.iterator();
label0:
            do
            {
label1:
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    adunit = (com.heyzap.internal.Constants.AdUnit)iterator.next();
                    if (!consume(adunit))
                    {
                        continue;
                    }
                    store.removeUpdateCallback(this);
                    if (!ranOnce.compareAndSet(false, true))
                    {
                        break label1;
                    }
                    callback.run();
                    break label0;
                }
            } while (true);
            return;
            unConsume(adunit);
            return;
        }

        public ConsumeCallback(Runnable runnable, Collection collection)
        {
            this$0 = FetchRequestConsumer.this;
            super();
            callback = runnable;
            adUnits = collection;
        }
    }


    private final ConcurrentHashMap consumptionCounts = new ConcurrentHashMap();
    private final Object consumptionLock = new Object();
    private final FetchRequestStore store;

    public FetchRequestConsumer(FetchRequestStore fetchrequeststore)
    {
        store = fetchrequeststore;
    }

    private void unConsume(com.heyzap.internal.Constants.AdUnit adunit)
    {
        consumptionCounts.putIfAbsent(adunit, new AtomicInteger(0));
        ((AtomicInteger)consumptionCounts.get(adunit)).decrementAndGet();
    }

    public boolean consume(com.heyzap.internal.Constants.AdUnit adunit)
    {
        AtomicInteger atomicinteger;
        AtomicInteger atomicinteger1;
        consumptionCounts.putIfAbsent(adunit, new AtomicInteger(0));
        atomicinteger = (AtomicInteger)consumptionCounts.get(adunit);
        atomicinteger1 = (AtomicInteger)store.getCounts().get(adunit);
        if (atomicinteger1 == null)
        {
            return false;
        }
        adunit = ((com.heyzap.internal.Constants.AdUnit) (consumptionLock));
        adunit;
        JVM INSTR monitorenter ;
        if (atomicinteger1.get() <= atomicinteger.get() && atomicinteger1.get() < 1000)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        atomicinteger.incrementAndGet();
        return true;
        Exception exception;
        exception;
        adunit;
        JVM INSTR monitorexit ;
        throw exception;
        adunit;
        JVM INSTR monitorexit ;
        return false;
    }

    public void consumeAny(Collection collection, Runnable runnable, ExecutorService executorservice)
    {
        collection = new ConsumeCallback(runnable, collection);
        store.addUpdateCallback(collection, executorservice);
        executorservice.submit(collection);
    }


}
