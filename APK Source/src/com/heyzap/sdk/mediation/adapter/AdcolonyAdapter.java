// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import com.heyzap.mediation.adapter.AdUnitStateManager;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.jirbo.adcolony.AdColony;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdAvailabilityListener;
import com.jirbo.adcolony.AdColonyAdListener;
import com.jirbo.adcolony.AdColonyV4VCAd;
import com.jirbo.adcolony.AdColonyV4VCListener;
import com.jirbo.adcolony.AdColonyV4VCReward;
import com.jirbo.adcolony.AdColonyVideoAd;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class AdcolonyAdapter extends NetworkAdapter
{
    private static class AdListener
        implements AdColonyAdListener
    {

        private final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay adDisplay;

        public void onAdColonyAdAttemptFinished(AdColonyAd adcolonyad)
        {
            adDisplay.closeListener.set(Boolean.valueOf(true));
        }

        public void onAdColonyAdStarted(AdColonyAd adcolonyad)
        {
            adDisplay.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        private AdListener(com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay)
        {
            adDisplay = addisplay;
        }

    }

    private static class AdWrapper extends com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay
    {

        public final SettableFuture fetchFuture;
        public AdColonyV4VCAd incentivizedAd;
        public AdColonyVideoAd videoAd;

        public AdColonyAd getAd()
        {
            if (videoAd != null)
            {
                return videoAd;
            }
            if (incentivizedAd != null)
            {
                return incentivizedAd;
            } else
            {
                return null;
            }
        }

        private AdWrapper()
        {
            fetchFuture = SettableFuture.create();
        }

    }

    private static class AvailabilityListener
        implements AdColonyAdAvailabilityListener
    {

        private final FetchStateManager fetchStateManager;
        private final Map zoneToUnitMap;

        public void onAdColonyAdAvailabilityChange(boolean flag, String s)
        {
            s = (com.heyzap.internal.Constants.AdUnit)zoneToUnitMap.get(s);
            if (s != null)
            {
                SettableFuture settablefuture = ((AdWrapper)fetchStateManager.get(s)).fetchFuture;
                if (flag)
                {
                    s = new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult();
                } else
                {
                    s = new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL, "Unavailable for unknown reason.");
                }
                settablefuture.set(s);
            }
        }

        private AvailabilityListener(FetchStateManager fetchstatemanager, Map map)
        {
            fetchStateManager = fetchstatemanager;
            zoneToUnitMap = map;
        }

    }

    private class IncentiveListener
        implements AdColonyV4VCListener
    {

        final AdcolonyAdapter this$0;

        public void onAdColonyV4VCReward(AdColonyV4VCReward adcolonyv4vcreward)
        {
            com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay = lastIncentivizedDisplay;
            if (addisplay != null)
            {
                addisplay.incentiveListener.set(Boolean.valueOf(adcolonyv4vcreward.success()));
            }
        }

        private IncentiveListener()
        {
            this$0 = AdcolonyAdapter.this;
            super();
        }

    }


    private static String APP_KEY = "app_id";
    private static String CANON = "adcolony";
    private static String INCENTIVIZED_KEY = "incentivized_zone_id";
    private static String INTERSTITIAL_KEY = "interstitial_zone_id";
    private static String KLASS = "com.jirbo.adcolony.AdColony";
    private static String MARKETING_NAME = "AdColony";
    private AdUnitAliasMap adUnitAliasMap;
    private AdUnitStateManager adUnitStateManager;
    private String appId;
    private String configStr;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private String incentivizedZoneId;
    AtomicReference initializationFutureRef;
    private String interstitialZoneId;
    com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay lastIncentivizedDisplay;
    private HashMap zoneToAdUnitMap;

    public AdcolonyAdapter()
    {
        adUnitStateManager = new AdUnitStateManager();
        initializationFutureRef = new AtomicReference(null);
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final AdcolonyAdapter this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener val$fetchStartedListener;

            public void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, AdWrapper adwrapper)
            {
                fetchStartedListener.onFetchStarted(adunit, adwrapper.fetchFuture);
            }

            public volatile void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
            {
                onFetchStarted(adunit, (AdWrapper)obj);
            }

            
            {
                this$0 = AdcolonyAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public void attemptNextFetch(final com.heyzap.internal.Constants.AdUnit adUnit)
    {
        getFetchConsumer().consumeAny(adUnitAliasMap.getAliases(adUnit), new Runnable() , executorService);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return ((AdWrapper)fetchStateManager.get(adUnitAliasMap.translate(adunit))).fetchFuture;
    }

    public SettableFuture doInitialSetupIfNeeded()
    {
        if (initializationFutureRef.compareAndSet(null, SettableFuture.create()))
        {
            uiThreadExecutorService.submit(new Runnable() {

                final AdcolonyAdapter this$0;

                public void run()
                {
                    if (interstitialZoneId == null || incentivizedZoneId == null) goto _L2; else goto _L1
_L1:
                    AdColony.configure(getContextRef().getActivity(), configStr, appId, new String[] {
                        interstitialZoneId, incentivizedZoneId
                    });
_L5:
                    AdColony.addV4VCListener(new IncentiveListener());
                    AdColony.addAdAvailabilityListener(new AvailabilityListener(fetchStateManager, zoneToAdUnitMap));
                    getContextRef().addActivityUpdateListener(new Runnable() {

                        final _cls2 this$1;

                        public void run()
                        {
                            AdColony.resume(getContextRef().getActivity());
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    }, 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = AdcolonyAdapter.this;
                super();
            }
            });
        }
        return (SettableFuture)initializationFutureRef.get();
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, com.heyzap.internal.Constants.AdUnit.VIDEO);
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
        return "2.2.0";
    }

    public boolean isInterstitialVideo()
    {
        return adUnitAliasMap.translate(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL) == com.heyzap.internal.Constants.AdUnit.VIDEO;
    }

    public Boolean isOnBoard()
    {
        return Utils.classExists(KLASS);
    }

    public boolean isStarted(List list)
    {
        return isInitialized() && adUnitStateManager.allStarted(adUnitAliasMap.translate(list));
    }

    public void onInit()
        throws com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError
    {
        adUnitAliasMap = new AdUnitAliasMap();
        adUnitAliasMap.add(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.VIDEO);
        AdWrapper adwrapper = new AdWrapper();
        adwrapper.fetchFuture.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "Unsupported Ad Unit"));
        fetchStateManager.setDefaultValue(adwrapper);
        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.VIDEO, new AdWrapper());
        fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, new AdWrapper());
        adUnitStateManager.setAliasMap(adUnitAliasMap);
        if (getContextRef().getActivity() == null)
        {
            throw new ConfigurationError("Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable adcolony.");
        }
        appId = getConfiguration().getValue(APP_KEY);
        if (getConfiguration().getValue(APP_KEY) == null || getConfiguration().getValue(APP_KEY).equals(""))
        {
            throw new ConfigurationError("No App ID for AdColony");
        }
        appId = getConfiguration().getValue(APP_KEY);
        interstitialZoneId = getConfiguration().getValue(INTERSTITIAL_KEY);
        incentivizedZoneId = getConfiguration().getValue(INCENTIVIZED_KEY);
        zoneToAdUnitMap = new HashMap();
        zoneToAdUnitMap.put(interstitialZoneId, com.heyzap.internal.Constants.AdUnit.VIDEO);
        zoneToAdUnitMap.put(incentivizedZoneId, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
        if (getConfiguration().getValue(INTERSTITIAL_KEY) == null && getConfiguration().getValue(INCENTIVIZED_KEY) == null)
        {
            throw new ConfigurationError("No Zone ID for AdColony");
        } else
        {
            configStr = String.format(Locale.US, "version:%d,store:%s,skippable", new Object[] {
                Utils.getPackageVersion(getContextRef().getActivity()), adsConfig.store
            });
            return;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        AdColony.resume(activity);
        s = new AdDisplay();
        activity = (AdWrapper)fetchStateManager.get(adUnitAliasMap.translate(adunit));
        _cls5..SwitchMap.com.heyzap.internal.Constants.AdUnit[adUnitAliasMap.translate(adunit).ordinal()];
        JVM INSTR tableswitch 1 3: default 72
    //                   1 92
    //                   2 200
    //                   3 200;
           goto _L1 _L2 _L3 _L3
_L1:
        ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (s)).displayListener.set(new DisplayResult("Ad not ready"));
_L5:
        return s;
_L2:
        if (((AdWrapper) (activity)).incentivizedAd != null && ((AdWrapper) (activity)).incentivizedAd.isReady())
        {
            lastIncentivizedDisplay = s;
            ((AdWrapper) (activity)).incentivizedAd.withListener(new AdListener(s)).show();
        } else
        {
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (s)).displayListener.set(new DisplayResult("Ad not ready"));
        }
        if (((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(((AdWrapper) (activity)).fetchFuture, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
        {
            fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, new AdWrapper());
            attemptNextFetch(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
            return s;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (((AdWrapper) (activity)).videoAd != null && ((AdWrapper) (activity)).videoAd.isReady())
        {
            ((AdWrapper) (activity)).videoAd.withListener(new AdListener(s)).show();
        } else
        {
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (s)).displayListener.set(new DisplayResult("Ad not ready"));
        }
        if (((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(((AdWrapper) (activity)).fetchFuture, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
        {
            fetchStateManager.set(com.heyzap.internal.Constants.AdUnit.VIDEO, new AdWrapper());
            attemptNextFetch(com.heyzap.internal.Constants.AdUnit.VIDEO);
            return s;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public SettableFuture start(final List startedUnits)
    {
        final SettableFuture retFuture = SettableFuture.create();
        startedUnits = adUnitStateManager.start(adUnitAliasMap.translate(startedUnits));
        startedUnits.retainAll(getAdUnitCapabilities());
        if (startedUnits.size() > 0)
        {
            doInitialSetupIfNeeded().addListener(new Runnable() , executorService);
            return retFuture;
        } else
        {
            retFuture.set(Boolean.valueOf(true));
            return retFuture;
        }
    }



















}
