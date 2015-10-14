// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

public class FetchStateManager
{
    private static class ExecutorCallback
        implements FetchStartedListener
    {

        private final FetchStartedListener _flddelegate;
        private final ExecutorService executorService;

        public void onFetchStarted(final com.heyzap.internal.Constants.AdUnit adUnit, Object obj)
        {
            executorService.submit(((_cls1) (obj)). new Runnable() {

                final ExecutorCallback this$0;
                final com.heyzap.internal.Constants.AdUnit val$adUnit;
                final Object val$value;

                public void run()
                {
                    _flddelegate.onFetchStarted(adUnit, value);
                }

            
            {
                this$0 = final_executorcallback;
                adUnit = adunit;
                value = Object.this;
                super();
            }
            });
        }


        private ExecutorCallback(FetchStartedListener fetchstartedlistener, ExecutorService executorservice)
        {
            _flddelegate = fetchstartedlistener;
            executorService = executorservice;
        }

    }

    public static interface FetchStartedListener
    {

        public abstract void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj);
    }

    private static class FetchStateWrapper
    {

        public final AtomicBoolean started;
        public final Object value;

        private FetchStateWrapper(Object obj)
        {
            started = new AtomicBoolean(false);
            value = obj;
        }

    }


    private Object defaultValue;
    Map fetchMap;
    List updateListeners;

    public FetchStateManager()
    {
        fetchMap = new ConcurrentHashMap();
        updateListeners = new ArrayList();
    }

    public void addFetchStartedListener(FetchStartedListener fetchstartedlistener, ExecutorService executorservice)
    {
        updateListeners.add(new ExecutorCallback(fetchstartedlistener, executorservice));
    }

    public Object get(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adunit = (FetchStateWrapper)fetchMap.get(adunit);
        if (adunit == null)
        {
            return defaultValue;
        } else
        {
            return ((FetchStateWrapper) (adunit)).value;
        }
    }

    public void set(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
    {
        fetchMap.put(adunit, new FetchStateWrapper(obj));
    }

    public void setDefaultValue(Object obj)
    {
        defaultValue = obj;
    }

    public void start(com.heyzap.internal.Constants.AdUnit adunit)
    {
        FetchStateWrapper fetchstatewrapper = (FetchStateWrapper)fetchMap.get(adunit);
        if (fetchstatewrapper != null && fetchstatewrapper.started.compareAndSet(false, true))
        {
            for (Iterator iterator = updateListeners.iterator(); iterator.hasNext(); ((ExecutorCallback)iterator.next()).onFetchStarted(adunit, get(adunit))) { }
        }
    }
}
