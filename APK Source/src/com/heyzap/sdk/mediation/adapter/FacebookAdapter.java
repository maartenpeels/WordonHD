// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.ImpressionListener;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdUnitStateManager;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import com.heyzap.mediation.adapter.FetchStateManager;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class FacebookAdapter extends NetworkAdapter
{
    private static class FacebookAdWrapper
    {

        public final SettableFuture clickListener = SettableFuture.create();
        public final SettableFuture closeListener = SettableFuture.create();
        public final SettableFuture displayListener = SettableFuture.create();
        public final SettableFuture fetchListener = SettableFuture.create();
        public final AtomicBoolean inUse = new AtomicBoolean(false);
        public final SettableFuture incentiveListener = SettableFuture.create();
        public InterstitialAd interstitialAd;

        public FacebookAdWrapper()
        {
        }
    }

    private class FacebookListener
        implements InterstitialAdListener, ImpressionListener
    {

        final FacebookAdapter this$0;
        FacebookAdWrapper wrapper;

        public void onAdClicked(Ad ad)
        {
            wrapper.clickListener.set(Boolean.valueOf(true));
        }

        public void onAdLoaded(Ad ad)
        {
            wrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void onError(Ad ad, AdError aderror)
        {
            aderror.getErrorCode();
            JVM INSTR lookupswitch 5: default 56
        //                       1000: 89
        //                       1001: 96
        //                       1002: 103
        //                       2000: 110
        //                       2001: 117;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
            aderror.getErrorMessage();
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN;
_L8:
            wrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(ad, aderror.getErrorMessage()));
            return;
_L2:
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NETWORK_ERROR;
            continue; /* Loop/switch isn't completed */
_L3:
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL;
            continue; /* Loop/switch isn't completed */
_L4:
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL;
            continue; /* Loop/switch isn't completed */
_L5:
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.REMOTE_ERROR;
            continue; /* Loop/switch isn't completed */
_L6:
            ad = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.INTERNAL;
            if (true) goto _L8; else goto _L7
_L7:
        }

        public void onInterstitialDismissed(Ad ad)
        {
            wrapper.closeListener.set(Boolean.valueOf(true));
        }

        public void onInterstitialDisplayed(Ad ad)
        {
            wrapper.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void onLoggingImpression(Ad ad)
        {
        }

        public FacebookListener(FacebookAdWrapper facebookadwrapper)
        {
            this$0 = FacebookAdapter.this;
            super();
            wrapper = facebookadwrapper;
        }
    }


    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static String KLASS = "com.facebook.ads.InterstitialAd";
    private AdUnitStateManager adUnitStateManager;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private String placementId;

    public FacebookAdapter()
    {
        adUnitStateManager = new AdUnitStateManager();
    }

    private void attemptNextFetch()
    {
        getFetchConsumer().consumeAny(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
            com.heyzap.internal.Constants.AdUnit.INTERSTITIAL
        }), new Runnable() , executorService);
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final FacebookAdapter this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener val$fetchStartedListener;

            public void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, FacebookAdWrapper facebookadwrapper)
            {
                fetchStartedListener.onFetchStarted(adunit, facebookadwrapper.fetchListener);
            }

            public volatile void onFetchStarted(com.heyzap.internal.Constants.AdUnit adunit, Object obj)
            {
                onFetchStarted(adunit, (FacebookAdWrapper)obj);
            }

            
            {
                this$0 = FacebookAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return ((FacebookAdWrapper)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    public FacebookAdWrapper fetch()
    {
        final FacebookAdWrapper localWrapper = (FacebookAdWrapper)fetchStateManager.get(AD_UNIT);
        if (getContextRef().getActivity() == null)
        {
            localWrapper.fetchListener.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "No Activity"));
            return localWrapper;
        } else
        {
            uiThreadExecutorService.submit(new Runnable() {

                final FacebookAdapter this$0;
                final FacebookAdWrapper val$localWrapper;

                public void run()
                {
                    InterstitialAd interstitialad = new InterstitialAd(getContextRef().getActivity(), placementId);
                    localWrapper.interstitialAd = interstitialad;
                    FacebookListener facebooklistener = new FacebookListener(localWrapper);
                    interstitialad.setAdListener(facebooklistener);
                    interstitialad.setImpressionListener(facebooklistener);
                    interstitialad.loadAd();
                }

            
            {
                this$0 = FacebookAdapter.this;
                localWrapper = facebookadwrapper;
                super();
            }
            });
            return localWrapper;
        }
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL);
    }

    public String getCanonicalName()
    {
        return "facebook";
    }

    public String getMarketingName()
    {
        return "Facebook";
    }

    public String getMarketingVersion()
    {
        return "3.21.1";
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
        throws com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError
    {
        placementId = getConfiguration().getValue("placement_id");
        if (placementId == null)
        {
            throw new com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError("placement_id is not available.");
        } else
        {
            fetchStateManager.set(AD_UNIT, new FacebookAdWrapper());
            return;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        if (AD_UNIT.equals(adunit))
        {
            adunit = (FacebookAdWrapper)fetchStateManager.get(AD_UNIT);
            s = new com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay();
            if (((FacebookAdWrapper) (adunit)).interstitialAd == null || !((FacebookAdWrapper) (adunit)).interstitialAd.isAdLoaded())
            {
                s.displayListener = SettableFuture.create();
                ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (s)).displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("Ad not ready"));
            } else
            {
                s.displayListener = ((FacebookAdWrapper) (adunit)).displayListener;
                s.clickListener = ((FacebookAdWrapper) (adunit)).clickListener;
                s.closeListener = ((FacebookAdWrapper) (adunit)).closeListener;
                s.incentiveListener = ((FacebookAdWrapper) (adunit)).incentiveListener;
                ((FacebookAdWrapper) (adunit)).interstitialAd.show();
            }
            if (((FacebookAdWrapper) (adunit)).fetchListener.isDone())
            {
                fetchStateManager.set(AD_UNIT, new FacebookAdWrapper());
                attemptNextFetch();
            }
            return s;
        } else
        {
            adunit = new com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay();
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (adunit)).displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("ad unit not supported"));
            return adunit;
        }
    }

    public SettableFuture start(List list)
    {
        if (adUnitStateManager.start(list).contains(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL))
        {
            attemptNextFetch();
        }
        return ((FacebookAdWrapper)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.INTERSTITIAL;
    }






}
