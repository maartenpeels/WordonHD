// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.abstr;

import android.app.Activity;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import java.lang.reflect.Constructor;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public abstract class NetworkAdapter
{
    public static class AdDisplay
    {

        public SettableFuture clickListener;
        public SettableFuture closeListener;
        public SettableFuture displayListener;
        public SettableFuture incentiveListener;

        public AdDisplay()
        {
            displayListener = SettableFuture.create();
            clickListener = SettableFuture.create();
            closeListener = SettableFuture.create();
            incentiveListener = SettableFuture.create();
        }
    }

    public static class ConfigurationError extends Exception
    {

        private static final long serialVersionUID = 0x2ed8db973eb4c0d3L;

        public ConfigurationError(String s)
        {
            super(s);
        }
    }

    public static class DisplayResult
    {

        public String errorMessage;
        public boolean success;

        public DisplayResult()
        {
            success = true;
            success = true;
        }

        public DisplayResult(String s)
        {
            success = true;
            errorMessage = s;
            success = false;
        }
    }

    public static class FetchResult
    {

        public static FetchResult NOT_READY;
        public com.heyzap.internal.Constants.AdNetworkFetchFailureReason errorCode;
        public String errorMessage;
        public boolean success;

        static 
        {
            NOT_READY = new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.TIMEOUT, "Ad not ready");
        }

        public FetchResult()
        {
            success = true;
        }

        public FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason adnetworkfetchfailurereason, String s)
        {
            errorCode = adnetworkfetchfailurereason;
            errorMessage = s;
            success = false;
        }
    }

    public static interface FetchStartedListener
    {

        public abstract void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, SettableFuture settablefuture);
    }


    private static Map networkAdapterSingletons = new HashMap();
    protected com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsConfig;
    private AdapterConfiguration config;
    private ContextReference contextRef;
    protected ScheduledExecutorService executorService;
    private FetchRequestConsumer fetchConsumer;
    private FetchRequestStore fetchStore;
    private boolean initialized;
    protected ExecutorService uiThreadExecutorService;

    protected NetworkAdapter()
    {
    }

    protected NetworkAdapter(AdapterConfiguration adapterconfiguration, ContextReference contextreference)
    {
        config = adapterconfiguration;
    }

    public static NetworkAdapter createAdapterFromKlass(Class class1)
    {
        NetworkAdapter networkadapter = (NetworkAdapter)networkAdapterSingletons.get(class1);
        NetworkAdapter networkadapter1 = networkadapter;
        if (networkadapter != null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        try
        {
            networkadapter1 = (NetworkAdapter)class1.getConstructor(new Class[0]).newInstance(new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            Logger.trace(class1);
            return networkadapter;
        }
        networkadapter = networkadapter1;
        networkAdapterSingletons.put(class1, networkadapter1);
        return networkadapter1;
    }

    public abstract void addFetchStartedListener(FetchStartedListener fetchstartedlistener, ExecutorService executorservice);

    public abstract SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit);

    public abstract EnumSet getAdUnitCapabilities();

    public abstract String getCanonicalName();

    public final AdapterConfiguration getConfiguration()
    {
        return config;
    }

    protected final ContextReference getContextRef()
    {
        return contextRef;
    }

    protected FetchRequestConsumer getFetchConsumer()
    {
        return fetchConsumer;
    }

    public FetchRequestStore getFetchStore()
    {
        return fetchStore;
    }

    public abstract String getMarketingName();

    public abstract String getMarketingVersion();

    public void init(ContextReference contextreference, AdapterConfiguration adapterconfiguration, FetchRequestStore fetchrequeststore, com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsconfig, ScheduledExecutorService scheduledexecutorservice, ExecutorService executorservice)
        throws ConfigurationError
    {
        contextRef = contextreference;
        config = adapterconfiguration;
        fetchConsumer = new FetchRequestConsumer(fetchrequeststore);
        adsConfig = adsconfig;
        executorService = scheduledexecutorservice;
        uiThreadExecutorService = executorservice;
        fetchStore = fetchrequeststore;
        onInit();
        initialized = true;
    }

    public final Boolean isAdUnitCapable(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return Boolean.valueOf(getAdUnitCapabilities().contains(adunit));
    }

    public boolean isInitialized()
    {
        return initialized;
    }

    public abstract boolean isInterstitialVideo();

    public abstract Boolean isOnBoard();

    public final boolean isReady(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adunit = awaitAvailability(adunit);
        if (adunit.isDone())
        {
            boolean flag;
            try
            {
                flag = ((FetchResult)adunit.get()).success;
            }
            // Misplaced declaration of an exception variable
            catch (com.heyzap.internal.Constants.AdUnit adunit)
            {
                Logger.trace(adunit);
                return false;
            }
            return flag;
        } else
        {
            return false;
        }
    }

    public abstract boolean isStarted(List list);

    public abstract void onInit()
        throws ConfigurationError;

    public final void setConfiguration(AdapterConfiguration adapterconfiguration)
    {
        config = adapterconfiguration;
    }

    public abstract AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity);

    public abstract SettableFuture start(List list);

}
