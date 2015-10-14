// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
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
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class ApplovinAdapter extends NetworkAdapter
{
    private static class AdDisplayListener
        implements AppLovinAdClickListener, AppLovinAdVideoPlaybackListener, AppLovinAdDisplayListener, AppLovinAdRewardListener
    {

        private final AdWrapper adWrapper;

        public void adClicked(AppLovinAd applovinad)
        {
            adWrapper.clickListener.set(Boolean.valueOf(true));
        }

        public void adDisplayed(AppLovinAd applovinad)
        {
            adWrapper.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void adHidden(AppLovinAd applovinad)
        {
            adWrapper.closeListener.set(Boolean.valueOf(true));
        }

        public void userDeclinedToViewAd(AppLovinAd applovinad)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(false));
        }

        public void userOverQuota(AppLovinAd applovinad, Map map)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(false));
        }

        public void userRewardRejected(AppLovinAd applovinad, Map map)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(false));
        }

        public void userRewardVerified(AppLovinAd applovinad, Map map)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(true));
        }

        public void validationRequestFailed(AppLovinAd applovinad, int i)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(false));
        }

        public void videoPlaybackBegan(AppLovinAd applovinad)
        {
        }

        public void videoPlaybackEnded(AppLovinAd applovinad, double d, boolean flag)
        {
        }

        private AdDisplayListener(AdWrapper adwrapper)
        {
            adWrapper = adwrapper;
        }

    }

    private static class AdFetchListener
        implements AppLovinAdLoadListener
    {

        private final SettableFuture fetchFuture;
        private final AppLovinIncentivizedInterstitial incentivizedAd;

        private com.heyzap.internal.Constants.AdNetworkFetchFailureReason getFetchFailureReason(int i)
        {
            switch (i)
            {
            default:
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN;

            case -300: 
            case 204: 
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL;

            case -500: 
            case -102: 
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.REMOTE_ERROR;

            case -6: 
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR;

            case -400: 
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.REMOTE_ERROR;

            case -1: 
                return com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN;
            }
        }

        public void adReceived(AppLovinAd applovinad)
        {
            fetchFuture.set(new ApplovinFetchResult(applovinad, incentivizedAd));
        }

        public void failedToReceiveAd(int i)
        {
            fetchFuture.set(new ApplovinFetchResult(getFetchFailureReason(i), String.valueOf(i)));
        }

        public AdFetchListener(SettableFuture settablefuture, AppLovinIncentivizedInterstitial applovinincentivizedinterstitial)
        {
            fetchFuture = settablefuture;
            incentivizedAd = applovinincentivizedinterstitial;
        }
    }

    private static class AdWrapper extends com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay
    {

        public AdWrapper()
        {
        }
    }

    public static class AppLovinErrorCodes
    {

        public static final int FETCH_AD_TIMEOUT = -102;
        public static final int INCENTIVIZED_NO_AD_PRELOADED = -300;
        public static final int INCENTIVIZED_SERVER_TIMEOUT = -500;
        public static final int INCENTIVIZED_UNKNOWN_SERVER_ERROR = -400;
        public static final int INCENTIVIZED_USER_CLOSED_VIDEO = -600;
        public static final int NO_FILL = 204;
        public static final int NO_NETWORK = -103;
        public static final int UNABLE_TO_RENDER_AD = -6;
        public static final int UNSPECIFIED_ERROR = -1;

        public AppLovinErrorCodes()
        {
        }
    }

    private static class ApplovinFetchResult extends com.heyzap.mediation.abstr.NetworkAdapter.FetchResult
    {

        public final AppLovinAd cachedAd;
        public final AppLovinIncentivizedInterstitial incentivizedInterstitial;

        public ApplovinFetchResult(AppLovinAd applovinad, AppLovinIncentivizedInterstitial applovinincentivizedinterstitial)
        {
            cachedAd = applovinad;
            incentivizedInterstitial = applovinincentivizedinterstitial;
            success = true;
        }

        public ApplovinFetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason adnetworkfetchfailurereason, String s)
        {
            errorCode = adnetworkfetchfailurereason;
            errorMessage = s;
            success = false;
            cachedAd = null;
            incentivizedInterstitial = null;
        }
    }


    private static String CANON = "applovin";
    private static String KLASS = "com.applovin.sdk.AppLovinSdk";
    private static String MARKETING_NAME = "AppLovin";
    private AdUnitStateManager adUnitStateManager;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    AppLovinSdk sdk;
    private AtomicReference setupFutureRef;

    public ApplovinAdapter()
    {
        sdk = null;
        adUnitStateManager = new AdUnitStateManager();
        setupFutureRef = new AtomicReference(null);
    }

    private void attemptNextFetch(final com.heyzap.internal.Constants.AdUnit adUnit)
    {
        final SettableFuture fetchResultFuture = (SettableFuture)fetchStateManager.get(adUnit);
        getFetchConsumer().consumeAny(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
            adUnit
        }), new Runnable() , executorService);
    }

    private SettableFuture createFetchFuture()
    {
        return SettableFuture.create();
    }

    private SettableFuture doInitialSetupIfNeeded()
    {
        if (setupFutureRef.compareAndSet(null, SettableFuture.create()))
        {
            AppLovinSdkSettings applovinsdksettings = new AppLovinSdkSettings();
            applovinsdksettings.setVerboseLogging(Utils.isDebug(getContextRef().getApp()).booleanValue());
            sdk = AppLovinSdk.getInstance(getConfiguration().getValue("sdk_key"), applovinsdksettings, getContextRef().getApp());
            ((SettableFuture)setupFutureRef.get()).set(Boolean.valueOf(true));
        }
        return (SettableFuture)setupFutureRef.get();
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final ApplovinAdapter this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener val$fetchStartedListener;

            public void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, SettableFuture settablefuture)
            {
                fetchStartedListener.onFetchStarted(adunit, settablefuture);
            }

            public volatile void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
            {
                onFetchStarted(adunit, (SettableFuture)obj);
            }

            
            {
                this$0 = ApplovinAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return (SettableFuture)fetchStateManager.get(adunit);
    }

    public SettableFuture fetch(com.heyzap.internal.Constants.AdUnit adunit)
    {
        SettableFuture settablefuture = SettableFuture.create();
        static class _cls4
        {

            static final int $SwitchMap$com$heyzap$internal$Constants$AdUnit[];

            static 
            {
                $SwitchMap$com$heyzap$internal$Constants$AdUnit = new int[com.heyzap.internal.Constants.AdUnit.values().length];
                try
                {
                    $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INTERSTITIAL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$heyzap$internal$Constants$AdUnit[com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls4..SwitchMap.com.heyzap.internal.Constants.AdUnit[adunit.ordinal()])
        {
        default:
            settablefuture.set(new ApplovinFetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "ad unit not supported"));
            return settablefuture;

        case 1: // '\001'
            sdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new AdFetchListener(settablefuture, null));
            return settablefuture;

        case 2: // '\002'
            adunit = AppLovinIncentivizedInterstitial.create(sdk);
            break;
        }
        adunit.preload(new AdFetchListener(settablefuture, adunit));
        return settablefuture;
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
        return "5.4.3";
    }

    public boolean isInterstitialVideo()
    {
        return false;
    }

    public Boolean isOnBoard()
    {
        return Utils.classExists(KLASS);
    }

    public boolean isStarted(List list)
    {
        return adUnitStateManager.allStarted(list);
    }

    public void onInit()
    {
        SettableFuture settablefuture = SettableFuture.create();
        settablefuture.set(new ApplovinFetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "unsupported ad unit"));
        fetchStateManager.setDefaultValue(settablefuture);
        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, createFetchFuture());
        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, createFetchFuture());
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        AdWrapper adwrapper;
        AdDisplayListener addisplaylistener;
        SettableFuture settablefuture;
        adwrapper = new AdWrapper();
        addisplaylistener = new AdDisplayListener(adwrapper);
        settablefuture = (SettableFuture)fetchStateManager.get(adunit);
        if (!settablefuture.isDone()) goto _L2; else goto _L1
_L1:
        s = (ApplovinFetchResult)settablefuture.get();
_L4:
        if (s == null || !((ApplovinFetchResult) (s)).success)
        {
            adwrapper.displayListener.set(new DisplayResult("Ad not ready"));
            return adwrapper;
        }
        break; /* Loop/switch isn't completed */
        s;
        Logger.trace(s);
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        _cls4..SwitchMap.com.heyzap.internal.Constants.AdUnit[adunit.ordinal()];
        JVM INSTR tableswitch 1 2: default 124
    //                   1 171
    //                   2 217;
           goto _L5 _L6 _L7
_L5:
        adwrapper.displayListener.set(new DisplayResult("Unsupported ad unit"));
_L9:
        if (settablefuture.isDone())
        {
            fetchStateManager.set(adunit, createFetchFuture());
            attemptNextFetch(adunit);
        }
        return adwrapper;
_L6:
        activity = AppLovinInterstitialAd.create(sdk, activity);
        activity.setAdClickListener(addisplaylistener);
        activity.setAdVideoPlaybackListener(addisplaylistener);
        activity.setAdDisplayListener(addisplaylistener);
        activity.showAndRender(((ApplovinFetchResult) (s)).cachedAd);
        continue; /* Loop/switch isn't completed */
_L7:
        ((ApplovinFetchResult) (s)).incentivizedInterstitial.show(activity, addisplaylistener, addisplaylistener, addisplaylistener, addisplaylistener);
        if (true) goto _L9; else goto _L8
_L8:
    }

    public SettableFuture start(final List startedUnits)
    {
        startedUnits = adUnitStateManager.start(startedUnits);
        startedUnits.retainAll(getAdUnitCapabilities());
        final SettableFuture result = SettableFuture.create();
        if (startedUnits.size() > 0)
        {
            doInitialSetupIfNeeded().addListener(new Runnable() , executorService);
            return result;
        } else
        {
            result.set(new FetchResult());
            return result;
        }
    }










    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls1 this$1;

        public void run()
        {
            result.set(new FetchResult());
        }

            
            {
                this$1 = _cls1.this;
                super();
            }
    }


    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls1 this$2;

        public void run()
        {
            if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(fetchResultFuture, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
            {
                fetchStateManager.set(adUnit, createFetchFuture());
                retry();
            }
        }

            
            {
                this$2 = _cls1.this;
                super();
            }
    }

}
