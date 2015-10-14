// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.internal.Constants;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.HandlerExecutorService;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.mediation.config.MediationConfigLoader;
import com.heyzap.mediation.display.WaterfallMediator;
import com.heyzap.mediation.filters.FilterContext;
import com.heyzap.mediation.filters.FilterManager;
import com.heyzap.mediation.handler.MediationEventReporter;
import com.heyzap.mediation.handler.StatusListenerMultiplexer;
import com.heyzap.mediation.request.MediationRequest;
import com.heyzap.sdk.ads.HeyzapAds;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;

// Referenced classes of package com.heyzap.mediation:
//            FetchRequestStore, MediationResult

public class MediationManager
{

    private static volatile MediationManager ref;
    private final com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsConfig;
    private final MediationConfigLoader configLoader;
    private final ContextReference contextRef = new ContextReference();
    private final ScheduledThreadPoolExecutor executorService = ExecutorPool.getInstance();
    private com.heyzap.internal.Constants.MediationFetchMode fetchMode;
    private final FetchRequestStore fetchRequestStore = new FetchRequestStore();
    private final MediationEventReporter mediationEventReporter;
    private HashMap statusListenerMultiplexers;
    private final HandlerExecutorService uiThreadExecutorService = new HandlerExecutorService(new Handler(Looper.getMainLooper()));

    public MediationManager()
    {
        fetchMode = com.heyzap.internal.Constants.MediationFetchMode.HEYZAP;
        statusListenerMultiplexers = new HashMap();
        mediationEventReporter = new MediationEventReporter(contextRef, ExecutorPool.getInstance());
        adsConfig = HeyzapAds.config;
        configLoader = new MediationConfigLoader(contextRef, executorService, uiThreadExecutorService, fetchRequestStore, adsConfig);
        initStatusListenerMultiplexers();
    }

    public static MediationManager getInstance()
    {
        com/heyzap/mediation/MediationManager;
        JVM INSTR monitorenter ;
        MediationManager mediationmanager;
        if (ref == null)
        {
            ref = new MediationManager();
        }
        mediationmanager = ref;
        com/heyzap/mediation/MediationManager;
        JVM INSTR monitorexit ;
        return mediationmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private void initStatusListenerMultiplexers()
    {
        com.heyzap.internal.Constants.AdUnit aadunit[] = com.heyzap.internal.Constants.AdUnit.values();
        int j = aadunit.length;
        for (int i = 0; i < j; i++)
        {
            com.heyzap.internal.Constants.AdUnit adunit = aadunit[i];
            StatusListenerMultiplexer statuslistenermultiplexer = new StatusListenerMultiplexer(executorService);
            if (adunit.equals(com.heyzap.internal.Constants.AdUnit.VIDEO) || adunit.equals(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED))
            {
                statuslistenermultiplexer.setUsesAudio(true);
            }
            statusListenerMultiplexers.put(adunit, statuslistenermultiplexer);
        }

    }

    public Object clone()
    {
        return null;
    }

    public void display(final Activity activity, final com.heyzap.internal.Constants.AdUnit adUnit, final String tag)
    {
        contextRef.updateContext(activity);
        final MediationRequest request = new MediationRequest(adUnit, tag);
        configLoader.get(new com.heyzap.mediation.config.ConfigLoader.MediationConfigListener() {

            final MediationManager this$0;
            final Activity val$activity;
            final com.heyzap.internal.Constants.AdUnit val$adUnit;
            final MediationRequest val$request;
            final String val$tag;

            public void onConfigLoaded(MediationConfig mediationconfig)
            {
                FilterContext filtercontext = new FilterContext(request.getAdUnit(), request.getTag());
                if (!mediationconfig.getFilterManager().accept(filtercontext))
                {
                    ((StatusListenerMultiplexer)statusListenerMultiplexers.get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                    return;
                } else
                {
                    final ListenableFuture final_listenablefuture = mediationconfig.getDisplayStrategy().getDisplayAdapter(request);
                    final_listenablefuture.addListener(mediationconfig. new com.heyzap.internal.FutureUtils.FutureRunnable(filtercontext) {

                        final _cls2 this$1;
                        final MediationConfig val$config;
                        final FilterContext val$filterContext;

                        public void run(MediationResult mediationresult, Exception exception)
                        {
                            if (exception != null)
                            {
                                Logger.log(new Object[] {
                                    "Mediation failed", exception
                                });
                                ((StatusListenerMultiplexer)statusListenerMultiplexers.get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                            } else
                            {
                                mediationEventReporter.sendFetchResults(request, mediationresult);
                                if (mediationresult.selectedNetwork != null)
                                {
                                    MetricsTracker.getEvent(mediationresult.selectedNetwork.network).showAd(true).ordinal(Integer.valueOf(mediationresult.selectedNetwork.ordinal)).tag(tag).networkVersion(mediationresult.selectedNetwork.adapter.getMarketingVersion()).showAdTime(System.currentTimeMillis()).commit(true);
                                    exception = mediationresult.selectedNetwork.adapter.show(request.getAdUnit(), request.getTag(), activity);
                                    mediationEventReporter.bindDisplayCallbacks(request, mediationresult, exception);
                                    ((StatusListenerMultiplexer)statusListenerMultiplexers.get(request.getAdUnit())).addDisplay(exception, request.getTag());
                                    config.getDisplayStrategy().addDisplay(request, mediationresult.selectedNetwork, exception);
                                    config.getFilterManager().addDisplay(filterContext, exception);
                                    if ((adsConfig.flags & 1) == 0)
                                    {
                                        fetch(adUnit, tag);
                                        return;
                                    }
                                } else
                                {
                                    ((StatusListenerMultiplexer)statusListenerMultiplexers.get(request.getAdUnit())).sendDisplayFailed(request.getTag());
                                    return;
                                }
                            }
                        }

                        public volatile void run(Object obj, Exception exception)
                        {
                            run((MediationResult)obj, exception);
                        }

            
            {
                this$1 = final__pcls2;
                config = MediationConfig.this;
                filterContext = filtercontext;
                super(final_listenablefuture);
            }
                    }, executorService);
                    return;
                }
            }

            
            {
                this$0 = MediationManager.this;
                request = mediationrequest;
                tag = s;
                activity = activity1;
                adUnit = adunit;
                super();
            }
        });
    }

    public void fetch(com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        if ((adsConfig.flags & 1) == 0)
        {
            fetchRequestStore.makeUnlimited(adunit);
        } else
        {
            fetchRequestStore.add(adunit);
        }
        ((StatusListenerMultiplexer)statusListenerMultiplexers.get(adunit)).addFetch(adunit, s, configLoader.getFuture());
    }

    public MediationConfigLoader getConfigLoader()
    {
        return configLoader;
    }

    public boolean isAvailable(com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        Object obj = configLoader.getFuture();
        if (!((ListenableFuture) (obj)).isDone())
        {
            return false;
        }
        try
        {
            obj = (MediationConfig)((ListenableFuture) (obj)).get();
        }
        // Misplaced declaration of an exception variable
        catch (com.heyzap.internal.Constants.AdUnit adunit)
        {
            return false;
        }
        s = new FilterContext(adunit, s);
        if (!((MediationConfig) (obj)).getFilterManager().accept(s))
        {
            return false;
        }
        for (s = ((MediationConfig) (obj)).getAdapterPool().getAll().iterator(); s.hasNext();)
        {
            if (((NetworkAdapter)s.next()).isReady(adunit))
            {
                return true;
            }
        }

        return false;
    }

    public void setOnIncentiveResultListener(com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener onincentiveresultlistener)
    {
        ((StatusListenerMultiplexer)statusListenerMultiplexers.get(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)).setIncentiveListener(onincentiveresultlistener);
    }

    public void setOnStatusListener(com.heyzap.internal.Constants.AdUnit adunit, com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener)
    {
        ((StatusListenerMultiplexer)statusListenerMultiplexers.get(adunit)).setListener(onstatuslistener);
    }

    public void setRecentActivity(Activity activity)
    {
        contextRef.updateContext(activity);
    }

    public void start(Context context)
    {
        Manager.applicationContext = context.getApplicationContext();
        contextRef.updateContext(context);
        executorService.execute(new Runnable() {

            final MediationManager this$0;

            public void run()
            {
                configLoader.start();
                if ((adsConfig.flags & 1) == 0)
                {
                    fetch(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, Constants.DEFAULT_TAG);
                }
            }

            
            {
                this$0 = MediationManager.this;
                super();
            }
        });
    }





}
