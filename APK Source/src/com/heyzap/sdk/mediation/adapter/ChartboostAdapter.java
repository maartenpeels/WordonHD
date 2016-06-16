// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.ChartboostDelegate;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdUnitStateManager;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import com.heyzap.mediation.adapter.FetchStateManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class ChartboostAdapter extends NetworkAdapter
{
    private class CallbackListener extends ChartboostDelegate
    {

        ChartboostAdapter adapter;
        final ChartboostAdapter this$0;

        public void didCacheInterstitial(String s)
        {
            ChartboostAdapter.threwError = false;
            ((FetchHolder)fetchStateManager.get(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void didCacheMoreApps(String s)
        {
        }

        public void didCacheRewardedVideo(String s)
        {
            ChartboostAdapter.threwError = false;
            ((FetchHolder)fetchStateManager.get(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void didClickInterstitial(String s)
        {
            interstitialDisplay.clickListener.set(Boolean.valueOf(true));
        }

        public void didClickMoreApps(String s)
        {
        }

        public void didClickRewardedVideo(String s)
        {
            incentivizedDisplay.clickListener.set(Boolean.valueOf(true));
        }

        public void didCloseInterstitial(String s)
        {
        }

        public void didCloseMoreApps(String s)
        {
        }

        public void didCloseRewardedVideo(String s)
        {
        }

        public void didCompleteRewardedVideo(String s, int i)
        {
            incentivizedDisplay.incentiveComplete = true;
        }

        public void didDismissInterstitial(String s)
        {
            interstitialDisplay.closeListener.set(Boolean.valueOf(true));
        }

        public void didDismissMoreApps(String s)
        {
        }

        public void didDismissRewardedVideo(String s)
        {
            incentivizedDisplay.closeListener.set(Boolean.valueOf(true));
            incentivizedDisplay.incentiveListener.set(Boolean.valueOf(incentivizedDisplay.incentiveComplete));
        }

        public void didDisplayInterstitial(String s)
        {
            interstitialDisplay.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void didDisplayMoreApps(String s)
        {
        }

        public void didDisplayRewardedVideo(String s)
        {
            incentivizedDisplay.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void didFailToLoadInterstitial(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
        {
            ((FetchHolder)fetchStateManager.get(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(getFailureCause(cbimpressionerror), cbimpressionerror.toString()));
        }

        public void didFailToLoadMoreApps(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
        {
        }

        public void didFailToLoadRewardedVideo(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
        {
            ((FetchHolder)fetchStateManager.get(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(getFailureCause(cbimpressionerror), cbimpressionerror.toString()));
        }

        public void didFailToRecordClick(String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror)
        {
        }

        public com.heyzap.internal.Constants.AdNetworkFetchFailureReason getFailureCause(com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
        {
            static class _cls5
            {

                static final int $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[];
                static final int $SwitchMap$com$heyzap$internal$Constants$AdUnit[];

                static 
                {
                    $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError = new int[com.chartboost.sdk.Model.CBError.CBImpressionError.values().length];
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNAL.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror12) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.NO_AD_FOUND.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror11) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.TOO_MANY_CONNECTIONS.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror10) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNET_UNAVAILABLE.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror9) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.NETWORK_FAILURE.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.WRONG_ORIENTATION.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.SESSION_NOT_STARTED.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.NO_HOST_ACTIVITY.ordinal()] = 8;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE.ordinal()] = 9;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.FIRST_SESSION_INTERSTITIALS_DISABLED.ordinal()] = 10;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError[com.chartboost.sdk.Model.CBError.CBImpressionError.USER_CANCELLATION.ordinal()] = 11;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    $SwitchMap$com$heyzap$internal$Constants$AdUnit = new int[com.heyzap.internal.Constants.AdUnit.values().length];
                    try
                    {
                        $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INTERSTITIAL.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls5..SwitchMap.com.chartboost.sdk.Model.CBError.CBImpressionError[cbimpressionerror.ordinal()])
            {
            default:
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN;

            case 1: // '\001'
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.INTERNAL;

            case 2: // '\002'
                ChartboostAdapter.threwError = true;
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL;

            case 3: // '\003'
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.REMOTE_ERROR;

            case 4: // '\004'
            case 5: // '\005'
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NETWORK_ERROR;

            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
            case 9: // '\t'
            case 10: // '\n'
            case 11: // '\013'
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR;
            }
        }

        public boolean shouldDisplayInterstitial(String s)
        {
            return true;
        }

        public boolean shouldDisplayMoreApps(String s)
        {
            return false;
        }

        public boolean shouldDisplayRewardedVideo(String s)
        {
            return true;
        }

        public boolean shouldRequestInterstitial(String s)
        {
            return true;
        }

        public boolean shouldRequestMoreApps(String s)
        {
            return false;
        }

        public CallbackListener(ChartboostAdapter chartboostadapter1)
        {
            this$0 = ChartboostAdapter.this;
            super();
            adapter = chartboostadapter1;
        }
    }

    private static class DisplayHolder extends com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay
    {

        public final com.heyzap.internal.Constants.AdUnit adUnit;
        public boolean incentiveComplete;

        private DisplayHolder(com.heyzap.internal.Constants.AdUnit adunit)
        {
            adUnit = adunit;
        }

    }

    private static class FetchHolder
    {

        public final SettableFuture fetchListener;

        public FetchHolder()
        {
            fetchListener = SettableFuture.create();
        }

        public FetchHolder(com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult)
        {
            SettableFuture settablefuture = SettableFuture.create();
            settablefuture.set(fetchresult);
            fetchListener = settablefuture;
        }
    }


    private static String CANON = "chartboost";
    private static String EXTRA_KLASS = "com.chartboost.sdk.Model.CBError";
    private static String KLASS = "com.chartboost.sdk.Chartboost";
    private static String MARKETING_NAME = "Chartboost";
    private static boolean threwError = false;
    private AdUnitStateManager adUnitStateManager;
    private String appId;
    private String appSignature;
    private ChartboostDelegate _flddelegate;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private DisplayHolder incentivizedDisplay;
    private String incentivizedLocation;
    private DisplayHolder interstitialDisplay;
    private String interstitialLocation;
    private AtomicReference setupFutureRef;

    public ChartboostAdapter()
    {
        adUnitStateManager = new AdUnitStateManager();
        setupFutureRef = new AtomicReference(null);
    }

    private void attemptNextFetch(final com.heyzap.internal.Constants.AdUnit adUnit)
    {
        getFetchConsumer().consumeAny(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
            adUnit
        }), new Runnable() , executorService);
    }

    private boolean checkReady(com.heyzap.internal.Constants.AdUnit adunit)
    {
        if (threwError)
        {
            return false;
        }
        switch (_cls5..SwitchMap.com.heyzap.internal.Constants.AdUnit[adunit.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            return Chartboost.hasRewardedVideo(incentivizedLocation);

        case 2: // '\002'
            return Chartboost.hasInterstitial(interstitialLocation);
        }
    }

    private ListenableFuture doInitialSetupIfNeeded()
    {
        if (setupFutureRef.compareAndSet(null, SettableFuture.create()))
        {
            uiThreadExecutorService.submit(new Runnable() {

                final ChartboostAdapter this$0;

                public void run()
                {
                    Chartboost.startWithAppId(getContextRef().getActivity(), appId, appSignature);
                    com.chartboost.sdk.Libraries.CBLogging.Level level;
                    if (Utils.isDebug(getContextRef().getActivity()).booleanValue())
                    {
                        level = com.chartboost.sdk.Libraries.CBLogging.Level.ALL;
                    } else
                    {
                        level = com.chartboost.sdk.Libraries.CBLogging.Level.NONE;
                    }
                    Chartboost.setLoggingLevel(level);
                    Chartboost.setImpressionsUseActivities(false);
                    Chartboost.onCreate(getContextRef().getActivity());
                    Chartboost.onStart(getContextRef().getActivity());
                    Chartboost.onResume(getContextRef().getActivity());
                    Chartboost.setDelegate(_flddelegate);
                    getContextRef().addActivityUpdateListener(new Runnable() {

                        final _cls2 this$1;

                        public void run()
                        {
                            Chartboost.onCreate(getContextRef().getActivity());
                            Chartboost.onStart(getContextRef().getActivity());
                            Chartboost.onResume(getContextRef().getActivity());
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    }, 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ChartboostAdapter.this;
                super();
            }
            });
        }
        return (ListenableFuture)setupFutureRef.get();
    }

    private void fetch(com.heyzap.internal.Constants.AdUnit adunit)
    {
        switch (_cls5..SwitchMap.com.heyzap.internal.Constants.AdUnit[adunit.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            Chartboost.cacheRewardedVideo(incentivizedLocation);
            return;

        case 2: // '\002'
            break;
        }
        try
        {
            Chartboost.cacheInterstitial(interstitialLocation);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (com.heyzap.internal.Constants.AdUnit adunit)
        {
            Logger.trace(adunit);
        }
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final ChartboostAdapter this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener val$fetchStartedListener;

            public void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, FetchHolder fetchholder)
            {
                fetchStartedListener.onFetchStarted(adunit, fetchholder.fetchListener);
            }

            public volatile void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
            {
                onFetchStarted(adunit, (FetchHolder)obj);
            }

            
            {
                this$0 = ChartboostAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return ((FetchHolder)fetchStateManager.get(adunit)).fetchListener;
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
    }

    public String getCanonicalName()
    {
        return CANON;
    }

    public String getMarketingName()
    {
        return MARKETING_NAME;
    }

    public String getMarketingVersion()
    {
        return "5.1.0";
    }

    public boolean isInterstitialVideo()
    {
        return false;
    }

    public Boolean isOnBoard()
    {
        boolean flag;
        if (Utils.classExists(KLASS).booleanValue() && Utils.classExists(EXTRA_KLASS).booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public boolean isStarted(List list)
    {
        return adUnitStateManager.allStarted(list);
    }

    public boolean onBackPressed()
    {
        return Chartboost.onBackPressed();
    }

    public void onInit()
        throws com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError
    {
        interstitialLocation = getContextRef().getApp().getResources().getConfiguration().locale.toString().toLowerCase(Locale.US);
        incentivizedLocation = "Main Menu";
        if (getContextRef().getActivity() == null)
        {
            throw new ConfigurationError("Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable chartboost.");
        }
        appId = getConfiguration().getValue("app_id");
        appSignature = getConfiguration().getValue("app_signature");
        if (appId == null || appSignature == null)
        {
            throw new ConfigurationError("App id or signature not defined.");
        }
        _flddelegate = new CallbackListener(this);
        FetchHolder fetchholder = new FetchHolder();
        fetchholder.fetchListener.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "unsupported ad unit"));
        com.heyzap.internal.Constants.AdUnit aadunit[] = com.heyzap.internal.Constants.AdUnit.values();
        int j = aadunit.length;
        for (int i = 0; i < j; i++)
        {
            com.heyzap.internal.Constants.AdUnit adunit = aadunit[i];
            fetchStateManager.set(adunit, fetchholder);
        }

        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, new FetchHolder());
        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, new FetchHolder());
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        Chartboost.setDelegate(_flddelegate);
        switch (_cls5..SwitchMap.com.heyzap.internal.Constants.AdUnit[adunit.ordinal()])
        {
        default:
            adunit = new DisplayHolder(adunit);
            ((DisplayHolder) (adunit)).displayListener.set(new DisplayResult("invalid ad unit"));
            return adunit;

        case 2: // '\002'
            interstitialDisplay = new DisplayHolder(adunit);
            Chartboost.showInterstitial(interstitialLocation);
            fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, new FetchHolder());
            attemptNextFetch(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL);
            return interstitialDisplay;

        case 1: // '\001'
            incentivizedDisplay = new DisplayHolder(adunit);
            Chartboost.showRewardedVideo(incentivizedLocation);
            fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, new FetchHolder());
            attemptNextFetch(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
            return incentivizedDisplay;
        }
    }

    public SettableFuture start(final List startedUnits)
    {
        final SettableFuture result = SettableFuture.create();
        startedUnits = adUnitStateManager.start(startedUnits);
        startedUnits.retainAll(getAdUnitCapabilities());
        if (startedUnits.size() > 0)
        {
            doInitialSetupIfNeeded().addListener(new Runnable() , executorService);
            return result;
        } else
        {
            result.set(Boolean.valueOf(true));
            return result;
        }
    }



















/*
    static boolean access$2402(boolean flag)
    {
        threwError = flag;
        return flag;
    }

*/










    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$1$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls1 this$1;

        public void run()
        {
            result.set(Boolean.valueOf(true));
        }

            
            {
                this$1 = _cls1.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2

/* anonymous class */
    class _cls2
        implements Runnable
    {

        final _cls1 this$2;
        final FetchHolder val$localFetch;

        public void run()
        {
            if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(localFetch.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
            {
                fetchStateManager.set(adUnit, new FetchHolder());
                retry();
            }
        }

            
            {
                this$2 = final__pcls1;
                localFetch = FetchHolder.this;
                super();
            }
    }

}
