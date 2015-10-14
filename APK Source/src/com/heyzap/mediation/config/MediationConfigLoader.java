// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.config;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.ConcurrentLoaderStrategy;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.adapter.AdapterScanner;
import com.heyzap.mediation.display.MediatedDisplayConfigLoader;
import com.heyzap.mediation.display.WaterfallMediator;
import com.heyzap.mediation.filters.FilterManager;
import com.heyzap.sdk.mediation.adapter.HeyzapAdapter;
import com.heyzap.sdk.mediation.adapter.HeyzapCrossPromoAdapter;
import com.heyzap.sdk.mediation.adapter.HeyzapVideoAdapter;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation.config:
//            ConfigLoader, MediationConfig

public class MediationConfigLoader
    implements ConfigLoader
{

    private final AdapterPool adapterPool;
    private final AdapterScanner adapterScanner;
    private final com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsConfig;
    private final SettableFuture configurationCacheFuture = SettableFuture.create();
    private final ContextReference contextRef;
    private final MediatedDisplayConfigLoader displayConfigLoader;
    private final WaterfallMediator displayStrategy;
    private final ScheduledExecutorService executorService;
    private final FetchRequestStore fetchRequestStore;
    private final FilterManager filterManager;
    private final ConcurrentLoaderStrategy loaderStrategy;
    private final ExecutorService uiThreadExecutorService;

    public MediationConfigLoader(ContextReference contextreference, ScheduledExecutorService scheduledexecutorservice, ExecutorService executorservice, FetchRequestStore fetchrequeststore, com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsconfig)
    {
        contextRef = contextreference;
        executorService = scheduledexecutorservice;
        fetchRequestStore = fetchrequeststore;
        uiThreadExecutorService = executorservice;
        adapterScanner = new AdapterScanner(contextreference);
        adapterPool = new AdapterPool(contextreference, fetchRequestStore, adsconfig, scheduledexecutorservice, executorservice);
        filterManager = new FilterManager(contextreference, scheduledexecutorservice);
        displayConfigLoader = new MediatedDisplayConfigLoader(contextreference);
        displayStrategy = new WaterfallMediator(adapterPool, displayConfigLoader, filterManager);
        loaderStrategy = new ConcurrentLoaderStrategy(adapterPool, scheduledexecutorservice, fetchRequestStore);
        adsConfig = adsconfig;
    }

    public void get(final ConfigLoader.MediationConfigListener configListener)
    {
        configurationCacheFuture.addListener(new Runnable() {

            final MediationConfigLoader this$0;
            final ConfigLoader.MediationConfigListener val$configListener;

            public void run()
            {
                try
                {
                    configListener.onConfigLoaded((MediationConfig)configurationCacheFuture.get());
                    return;
                }
                catch (InterruptedException interruptedexception)
                {
                    Logger.trace(interruptedexception);
                    return;
                }
                catch (ExecutionException executionexception)
                {
                    Logger.trace(executionexception);
                }
            }

            
            {
                this$0 = MediationConfigLoader.this;
                configListener = mediationconfiglistener;
                super();
            }
        }, ExecutorPool.getInstance());
    }

    public ListenableFuture getFuture()
    {
        return configurationCacheFuture;
    }

    public boolean isOnBoard(String s)
    {
        return adapterPool.get(s) != null;
    }

    public void start()
    {
        if ((adsConfig.flags & 0x10) == 0)
        {
            adapterPool.addAdapters(adapterScanner.scan());
        } else
        {
            java.util.List list = Arrays.asList(new Class[] {
                com/heyzap/sdk/mediation/adapter/HeyzapAdapter, com/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter, com/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter
            });
            adapterPool.addAdapters(list);
        }
        displayConfigLoader.start();
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final MediationConfigLoader this$0;

            public void run()
            {
                RequestParams requestparams = new RequestParams();
                APIClient.get(contextRef.getApp(), "https://med.heyzap.com/start", requestparams, new JsonHttpResponseHandler() {

                    final _cls1 this$1;

                    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                    {
                        retry();
                    }

                    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
                    {
                        try
                        {
                            aheader = new MediationConfig(contextRef, jsonobject, executorService, fetchRequestStore, adapterPool, displayStrategy, loaderStrategy, filterManager);
                            configurationCacheFuture.set(aheader);
                            return;
                        }
                        // Misplaced declaration of an exception variable
                        catch (Header aheader[])
                        {
                            retry();
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = MediationConfigLoader.this;
                super();
            }
        }, new com.heyzap.internal.RetryManager.ExponentialSchedule(2D, 4L, TimeUnit.SECONDS), executorService)).start();
    }








}
