// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.heyzap.house.Manager;
import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.Constants;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import com.heyzap.mediation.adapter.AdUnitStateManager;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.heyzap.sdk.ads.HeyzapAds;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class HeyzapAdapter extends NetworkAdapter
{
    public static class AdListener
        implements com.heyzap.sdk.ads.HeyzapAds.OnStatusListener, com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener
    {

        private final AdWrapper adWrapper;

        public void onAudioFinished()
        {
        }

        public void onAudioStarted()
        {
        }

        public void onAvailable(String s)
        {
            adWrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void onClick(String s)
        {
            adWrapper.clickListener.set(Boolean.valueOf(true));
        }

        public void onComplete(String s)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(true));
        }

        public void onFailedToFetch(String s)
        {
            adWrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL, "No internet connection or no fill."));
        }

        public void onFailedToShow(String s)
        {
            adWrapper.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("network failed to show"));
        }

        public void onHide(String s)
        {
            adWrapper.closeListener.set(Boolean.valueOf(true));
        }

        public void onImpressed()
        {
            adWrapper.impressionListener.set(Boolean.valueOf(true));
        }

        public void onIncomplete(String s)
        {
            adWrapper.incentiveListener.set(Boolean.valueOf(false));
        }

        public void onShow(String s)
        {
            adWrapper.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        private AdListener(AdWrapper adwrapper)
        {
            adWrapper = adwrapper;
        }

    }

    protected static class AdWrapper
    {

        public AdRequest adRequest;
        public final SettableFuture clickListener = SettableFuture.create();
        public final SettableFuture closeListener = SettableFuture.create();
        public final SettableFuture displayListener = SettableFuture.create();
        public final SettableFuture fetchListener = SettableFuture.create();
        public final SettableFuture impressionListener = SettableFuture.create();
        public final AtomicBoolean inUse = new AtomicBoolean(false);
        public final SettableFuture incentiveListener = SettableFuture.create();

        public AdWrapper()
        {
        }
    }


    private static com.heyzap.internal.Constants.AuctionType AUCTION_TYPE;
    private static int CREATIVE_TYPES;
    protected AdUnitAliasMap adUnitAliasMap;
    protected AdUnitStateManager adUnitStateManager;
    protected final FetchStateManager fetchStateManager = new FetchStateManager();

    public HeyzapAdapter()
    {
        adUnitStateManager = new AdUnitStateManager();
        adUnitAliasMap = new AdUnitAliasMap();
    }

    private void attemptNextFetch(final com.heyzap.internal.Constants.AdUnit adUnit)
    {
        getFetchConsumer().consumeAny(new ArrayList(getAdUnitCapabilities()), new Runnable() , executorService);
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final HeyzapAdapter this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener val$fetchStartedListener;

            public void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, AdWrapper adwrapper)
            {
                fetchStartedListener.onFetchStarted(adunit, adwrapper.fetchListener);
            }

            public volatile void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
            {
                onFetchStarted(adunit, (AdWrapper)obj);
            }

            
            {
                this$0 = HeyzapAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return ((AdWrapper)fetchStateManager.get(adUnitAliasMap.translate(adunit))).fetchListener;
    }

    public AdRequest createRequest()
    {
        AdRequest adrequest = new AdRequest(CREATIVE_TYPES, Constants.DEFAULT_TAG);
        adrequest.setIsImmediate(true);
        adrequest.setAuctionType(AUCTION_TYPE);
        return adrequest;
    }

    public void fetch(AdWrapper adwrapper)
    {
        AdRequest adrequest = createRequest();
        adwrapper.adRequest = adrequest;
        adwrapper = new AdListener(adwrapper);
        adrequest.setOnStatusListener(adwrapper);
        adrequest.setOnIncentiveListener(adwrapper);
        adrequest.fetch(getContextRef().getApp());
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL);
    }

    public String getCanonicalName()
    {
        return "heyzap";
    }

    public String getMarketingName()
    {
        return "Heyzap";
    }

    public String getMarketingVersion()
    {
        return HeyzapAds.getVersion();
    }

    public boolean isInterstitialVideo()
    {
        return adUnitAliasMap.translate(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL) == com.heyzap.internal.Constants.AdUnit.VIDEO;
    }

    public Boolean isOnBoard()
    {
        return Boolean.valueOf(true);
    }

    public boolean isStarted(List list)
    {
        return adUnitStateManager.allStarted(adUnitAliasMap.translate(list));
    }

    public void onInit()
    {
        AdWrapper adwrapper1 = new AdWrapper();
        adwrapper1.fetchListener.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "Ad unit not supported"));
        com.heyzap.internal.Constants.AdUnit aadunit[] = com.heyzap.internal.Constants.AdUnit.values();
        int j = aadunit.length;
        int i = 0;
        while (i < j) 
        {
            com.heyzap.internal.Constants.AdUnit adunit = aadunit[i];
            FetchStateManager fetchstatemanager = fetchStateManager;
            AdWrapper adwrapper;
            if (getAdUnitCapabilities().contains(adunit))
            {
                adwrapper = new AdWrapper();
            } else
            {
                adwrapper = adwrapper1;
            }
            fetchstatemanager.set(adunit, adwrapper);
            i++;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(final com.heyzap.internal.Constants.AdUnit adUnit, String s, Activity activity)
    {
        com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay = new AdDisplay();
        AdWrapper adwrapper = (AdWrapper)fetchStateManager.get(adUnitAliasMap.translate(adUnit));
        if (adwrapper.adRequest != null && adwrapper.adRequest.isReady().booleanValue())
        {
            addisplay.closeListener = adwrapper.closeListener;
            addisplay.displayListener = adwrapper.displayListener;
            addisplay.closeListener = adwrapper.closeListener;
            addisplay.incentiveListener = adwrapper.incentiveListener;
            addisplay.clickListener = adwrapper.clickListener;
            adwrapper.adRequest.show(activity, adUnit, s);
            fetchStateManager.set(adUnitAliasMap.translate(adUnit), new AdWrapper());
            FutureUtils.wrapTimeout(adwrapper.impressionListener, executorService, 10L, TimeUnit.SECONDS).addListener(new Runnable() {

                final HeyzapAdapter this$0;
                final com.heyzap.internal.Constants.AdUnit val$adUnit;

                public void run()
                {
                    attemptNextFetch(adUnitAliasMap.translate(adUnit));
                }

            
            {
                this$0 = HeyzapAdapter.this;
                adUnit = adunit;
                super();
            }
            }, executorService);
            return addisplay;
        } else
        {
            addisplay.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("ad not ready"));
            return addisplay;
        }
    }

    public SettableFuture start(final List updatedUnits)
    {
        updatedUnits = adUnitStateManager.start(adUnitAliasMap.translate(updatedUnits));
        updatedUnits.retainAll(getAdUnitCapabilities());
        final SettableFuture retFuture = SettableFuture.create();
        if (updatedUnits.size() > 0)
        {
            Manager.start(getContextRef(), adsConfig.publisherId).addListener(new Runnable() {

                final HeyzapAdapter this$0;
                final SettableFuture val$retFuture;
                final Set val$updatedUnits;

                public void run()
                {
                    ArrayList arraylist = new ArrayList();
                    com.heyzap.internal.Constants.AdUnit adunit;
                    for (Iterator iterator = adUnitAliasMap.translate(updatedUnits).iterator(); iterator.hasNext(); arraylist.add(((AdWrapper)fetchStateManager.get(adunit)).fetchListener))
                    {
                        adunit = (com.heyzap.internal.Constants.AdUnit)iterator.next();
                        attemptNextFetch(adunit);
                    }

                    FutureUtils.bind(FutureUtils.allOf(arraylist, get), retFuture, get);
                }

            
            {
                this$0 = HeyzapAdapter.this;
                updatedUnits = set;
                retFuture = settablefuture;
                super();
            }
            }, executorService);
            return retFuture;
        } else
        {
            retFuture.set(Boolean.valueOf(true));
            return retFuture;
        }
    }

    static 
    {
        CREATIVE_TYPES = com.heyzap.internal.Constants.CreativeType.INTERSTITIAL;
        AUCTION_TYPE = com.heyzap.internal.Constants.AuctionType.MONETIZATION;
    }





}
