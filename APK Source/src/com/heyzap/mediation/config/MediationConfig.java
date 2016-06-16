// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.config;

import com.heyzap.internal.ContextReference;
import com.heyzap.mediation.ConcurrentLoaderStrategy;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.display.WaterfallMediator;
import com.heyzap.mediation.filters.FilterManager;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

public class MediationConfig
{
    public class AdapterNotFoundException extends Exception
    {

        private static final long serialVersionUID = 1L;
        final MediationConfig this$0;

        public AdapterNotFoundException(String s)
        {
            this$0 = MediationConfig.this;
            super(s);
        }
    }


    private final AdapterPool adapterPool;
    private final ContextReference contextRef;
    private final WaterfallMediator displayStrategy;
    private final ScheduledExecutorService executorService;
    private final FetchRequestStore fetchRequestStore;
    private final FilterManager filterManager;
    private final ConcurrentLoaderStrategy loaderStrategy;

    public MediationConfig(ContextReference contextreference, JSONObject jsonobject, ScheduledExecutorService scheduledexecutorservice, FetchRequestStore fetchrequeststore, AdapterPool adapterpool, WaterfallMediator waterfallmediator, ConcurrentLoaderStrategy concurrentloaderstrategy, 
            FilterManager filtermanager)
        throws JSONException
    {
        contextRef = contextreference;
        executorService = scheduledexecutorservice;
        fetchRequestStore = fetchrequeststore;
        adapterPool = adapterpool;
        displayStrategy = waterfallmediator;
        loaderStrategy = concurrentloaderstrategy;
        filterManager = filtermanager;
        filtermanager.configure(jsonobject.optJSONArray("filters"));
        filtermanager.addIncentiveDailyLimitFilter(jsonobject.optInt("incentivized_daily_limit", -1));
        filtermanager.addRateLimitIntervalFilter(jsonobject.optInt("ad_rate_limit_interval", -1));
        filtermanager.addDisabledTagsFilter(jsonobject.optJSONArray("disabled_tags"));
        adapterpool.configure(adapterpool.parseConfig(jsonobject.getJSONArray("networks")));
        concurrentloaderstrategy.configure(new com.heyzap.mediation.ConcurrentLoaderStrategy.Config(jsonobject.getJSONObject("loader")));
        concurrentloaderstrategy.start();
    }

    public Object clone()
    {
        return null;
    }

    public AdapterPool getAdapterPool()
    {
        return adapterPool;
    }

    public WaterfallMediator getDisplayStrategy()
    {
        return displayStrategy;
    }

    public FilterManager getFilterManager()
    {
        return filterManager;
    }

    public ConcurrentLoaderStrategy getLoaderStrategy()
    {
        return loaderStrategy;
    }
}
