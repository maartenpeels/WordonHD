// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.InterstitialAd;
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

public class AdmobAdapter extends NetworkAdapter
{
    private static class AdWrapper
    {

        public final SettableFuture clickListener = SettableFuture.create();
        public final SettableFuture closeListener = SettableFuture.create();
        public final SettableFuture displayListener = SettableFuture.create();
        public final SettableFuture fetchListener = SettableFuture.create();
        public final AtomicBoolean inUse = new AtomicBoolean(false);
        public final SettableFuture incentiveListener = SettableFuture.create();
        public InterstitialAd interstitialAd;

        public AdWrapper()
        {
        }
    }

    private class AdmobListener extends AdListener
    {

        final AdmobAdapter this$0;
        AdWrapper wrapper;

        public void onAdClosed()
        {
            wrapper.closeListener.set(Boolean.valueOf(true));
        }

        public void onAdFailedToLoad(int i)
        {
            i;
            JVM INSTR tableswitch 0 3: default 32
        //                       0 60
        //                       1 67
        //                       2 74
        //                       3 81;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            com.heyzap.internal.Constants.AdNetworkFetchFailureReason adnetworkfetchfailurereason = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN;
_L7:
            wrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(adnetworkfetchfailurereason, String.valueOf(i)));
            return;
_L2:
            adnetworkfetchfailurereason = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.REMOTE_ERROR;
            continue; /* Loop/switch isn't completed */
_L3:
            adnetworkfetchfailurereason = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.BAD_CREDENTIALS;
            continue; /* Loop/switch isn't completed */
_L4:
            adnetworkfetchfailurereason = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NETWORK_ERROR;
            continue; /* Loop/switch isn't completed */
_L5:
            adnetworkfetchfailurereason = com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL;
            if (true) goto _L7; else goto _L6
_L6:
        }

        public void onAdLeftApplication()
        {
            wrapper.clickListener.set(Boolean.valueOf(true));
        }

        public void onAdLoaded()
        {
            wrapper.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void onAdOpened()
        {
            wrapper.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public AdmobListener(AdWrapper adwrapper)
        {
            this$0 = AdmobAdapter.this;
            super();
            wrapper = adwrapper;
        }
    }

    public static class NetworkProperties
    {

        public String canonicalName;
        public boolean doesPerNetworkFetch;
        public String marketingName;
        public String marketingVersion;

        public NetworkProperties()
        {
        }
    }


    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static String KLASS = "com.google.android.gms.ads.InterstitialAd";
    private String adUnitId;
    private AdUnitStateManager adUnitStateManager;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private NetworkProperties properties;

    public AdmobAdapter()
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

            final AdmobAdapter this$0;
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
                this$0 = AdmobAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        return ((AdWrapper)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    public AdWrapper fetch()
    {
        final AdWrapper localWrapper = (AdWrapper)fetchStateManager.get(AD_UNIT);
        if (getContextRef().getActivity() == null)
        {
            localWrapper.fetchListener.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.CONFIGURATION_ERROR, "No Activity"));
            return localWrapper;
        } else
        {
            uiThreadExecutorService.submit(new Runnable() {

                final AdmobAdapter this$0;
                final AdWrapper val$localWrapper;

                public void run()
                {
                    InterstitialAd interstitialad = new InterstitialAd(getContextRef().getActivity());
                    localWrapper.interstitialAd = interstitialad;
                    interstitialad.setAdUnitId(adUnitId);
                    interstitialad.setAdListener(new AdmobListener(localWrapper));
                    com.google.android.gms.ads.AdRequest.Builder builder = new com.google.android.gms.ads.AdRequest.Builder();
                    builder.addTestDevice("39A0D0AC94EE1E08823DA7384DA220C3");
                    interstitialad.loadAd(builder.build());
                }

            
            {
                this$0 = AdmobAdapter.this;
                localWrapper = adwrapper;
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
        return "admob";
    }

    public String getMarketingName()
    {
        return "AdMob";
    }

    public String getMarketingVersion()
    {
        return "0.0.0";
    }

    public NetworkProperties getProperties()
    {
        if (properties == null)
        {
            properties = new NetworkProperties() {

                final AdmobAdapter this$0;

            
            {
                this$0 = AdmobAdapter.this;
                super();
                marketingName = "AdMob";
                marketingVersion = "0.0.0";
                canonicalName = "admob";
                doesPerNetworkFetch = false;
            }
            };
        }
        return properties;
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
        adUnitId = getConfiguration().getValue("ad_unit_id");
        if (adUnitId == null)
        {
            throw new com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError("ad_unit_id is not available.");
        } else
        {
            fetchStateManager.set(AD_UNIT, new AdWrapper());
            return;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(final com.heyzap.internal.Constants.AdUnit localWrapper, final String display, Activity activity)
    {
        if (AD_UNIT.equals(localWrapper))
        {
            localWrapper = (AdWrapper)fetchStateManager.get(AD_UNIT);
            display = new com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay();
            uiThreadExecutorService.execute(new Runnable() {

                final AdmobAdapter this$0;
                final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;
                final AdWrapper val$localWrapper;

                public void run()
                {
                    if (localWrapper.interstitialAd == null || !localWrapper.interstitialAd.isLoaded())
                    {
                        display.displayListener = SettableFuture.create();
                        display.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("Ad not ready"));
                    } else
                    {
                        display.displayListener = localWrapper.displayListener;
                        display.clickListener = localWrapper.clickListener;
                        display.closeListener = localWrapper.closeListener;
                        display.incentiveListener = localWrapper.incentiveListener;
                        localWrapper.interstitialAd.show();
                    }
                    if (localWrapper.fetchListener.isDone())
                    {
                        fetchStateManager.set(AdmobAdapter.AD_UNIT, new AdWrapper());
                        attemptNextFetch();
                    }
                }

            
            {
                this$0 = AdmobAdapter.this;
                localWrapper = adwrapper;
                display = addisplay;
                super();
            }
            });
            return display;
        } else
        {
            localWrapper = new com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay();
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (localWrapper)).displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("ad unit not supported"));
            return localWrapper;
        }
    }

    public SettableFuture start(List list)
    {
        if (adUnitStateManager.start(list).contains(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL))
        {
            attemptNextFetch();
        }
        return ((AdWrapper)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.INTERSTITIAL;
    }







}
