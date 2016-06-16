// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

public class FetchRequestStore
{
    private static class FetchRequest
    {

        public final com.heyzap.internal.Constants.AdUnit adUnit;
        public final long createdAt = System.currentTimeMillis();
        public final boolean unlimited;

        public FetchRequest(com.heyzap.internal.Constants.AdUnit adunit, boolean flag)
        {
            adUnit = adunit;
            unlimited = flag;
        }
    }

    private static class UpdateCallback
    {

        private final ExecutorService executorService;
        private final Runnable runnable;

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (UpdateCallback)obj;
            return runnable.equals(((UpdateCallback) (obj)).runnable);
        }

        public int hashCode()
        {
            return runnable.hashCode();
        }



        private UpdateCallback(Runnable runnable1, ExecutorService executorservice)
        {
            runnable = runnable1;
            executorService = executorservice;
        }

    }


    public static final int UNLIMITED_THRESHOLD = 1000;
    private final ConcurrentHashMap requestCounts = new ConcurrentHashMap();
    private final List updateCallbacks = new CopyOnWriteArrayList();

    public FetchRequestStore()
    {
    }

    private void runUpdateCallbacks()
    {
        UpdateCallback updatecallback;
        for (Iterator iterator = updateCallbacks.iterator(); iterator.hasNext(); updatecallback.executorService.submit(updatecallback.runnable))
        {
            updatecallback = (UpdateCallback)iterator.next();
        }

    }

    public void add(com.heyzap.internal.Constants.AdUnit adunit)
    {
        add(new FetchRequest(adunit, false));
    }

    public void add(FetchRequest fetchrequest)
    {
        requestCounts.putIfAbsent(fetchrequest.adUnit, new AtomicInteger(0));
        if (fetchrequest.unlimited)
        {
            ((AtomicInteger)requestCounts.get(fetchrequest.adUnit)).set(1000);
        } else
        {
            ((AtomicInteger)requestCounts.get(fetchrequest.adUnit)).addAndGet(1);
        }
        runUpdateCallbacks();
    }

    public void addUpdateCallback(Runnable runnable, ExecutorService executorservice)
    {
        updateCallbacks.add(new UpdateCallback(runnable, executorservice));
    }

    public int getCount(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adunit = (AtomicInteger)requestCounts.get(adunit);
        if (adunit == null)
        {
            return 0;
        } else
        {
            return adunit.get();
        }
    }

    public Map getCounts()
    {
        return requestCounts;
    }

    public void makeUnlimited(com.heyzap.internal.Constants.AdUnit adunit)
    {
        add(new FetchRequest(adunit, true));
    }

    public void removeUpdateCallback(Runnable runnable)
    {
        updateCallbacks.remove(new UpdateCallback(runnable, null));
    }
}
