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
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.Orientation;
import com.vungle.publisher.VunglePub;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class VungleAdapter extends NetworkAdapter
{
    private class AdListener
        implements EventListener
    {

        final VungleAdapter this$0;

        public void onAdEnd(boolean flag)
        {
            displayHolder.closeListener.set(Boolean.valueOf(true));
            if (flag)
            {
                displayHolder.clickListener.set(Boolean.valueOf(true));
            }
        }

        public void onAdStart()
        {
            displayHolder.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void onAdUnavailable(String s)
        {
            ((FetchHolder)fetchStateManager.get(VungleAdapter.AD_UNIT)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL, s));
        }

        public void onCachedAdAvailable()
        {
            ((FetchHolder)fetchStateManager.get(VungleAdapter.AD_UNIT)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void onVideoView(boolean flag, int i, int j)
        {
            if (com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.equals(displayHolder.adUnit))
            {
                displayHolder.incentiveListener.set(Boolean.valueOf(flag));
            }
            displayHolder.closeListener.set(Boolean.valueOf(true));
        }

        private AdListener()
        {
            this$0 = VungleAdapter.this;
            super();
        }

    }

    private static class DisplayHolder
    {

        public final com.heyzap.internal.Constants.AdUnit adUnit;
        public final SettableFuture clickListener;
        public final SettableFuture closeListener;
        public final SettableFuture displayListener;
        public final SettableFuture incentiveListener;

        private DisplayHolder(com.heyzap.internal.Constants.AdUnit adunit)
        {
            displayListener = SettableFuture.create();
            closeListener = SettableFuture.create();
            clickListener = SettableFuture.create();
            incentiveListener = SettableFuture.create();
            adUnit = adunit;
        }

    }

    private static class FetchHolder
    {

        public final SettableFuture fetchListener;

        private FetchHolder()
        {
            fetchListener = SettableFuture.create();
        }

    }


    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static String APP_ID_KEY = "app_id";
    private static String CANON = "vungle";
    private static String KLASS = "com.vungle.publisher.VunglePub";
    private static String MARKETING_NAME = "Vungle";
    private static Boolean isConfigured = Boolean.valueOf(false);
    private String appId;
    private DisplayHolder displayHolder;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private AtomicBoolean started;

    public VungleAdapter()
    {
        started = new AtomicBoolean(false);
    }

    private void attemptNextFetch()
    {
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() , new ExponentialSchedule(2D, 5L, TimeUnit.SECONDS), executorService)).start();
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final VungleAdapter this$0;
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
                this$0 = VungleAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        if (VunglePub.getInstance().isCachedAdAvailable())
        {
            ((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener.set(new FetchResult());
        }
        return ((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.VIDEO, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED);
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
        VunglePub.getInstance();
        return "VungleDroid/3.2.2";
    }

    public boolean isInterstitialVideo()
    {
        return true;
    }

    public Boolean isOnBoard()
    {
        return Utils.classExists(KLASS);
    }

    public boolean isStarted(List list)
    {
        return started.get();
    }

    public void onInit()
        throws com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError
    {
        appId = getConfiguration().getValue(APP_ID_KEY);
        if (appId == null)
        {
            throw new ConfigurationError("Vungle App ID not present.");
        } else
        {
            fetchStateManager.set(AD_UNIT, new FetchHolder());
            return;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        s = new AdDisplay();
        displayHolder = new DisplayHolder(adunit);
        if (VunglePub.getInstance().isCachedAdAvailable())
        {
            VunglePub.getInstance().playAd();
            activity = new AdConfig();
            if (adunit.equals(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED))
            {
                activity.setIncentivized(true);
                activity.setBackButtonImmediatelyEnabled(false);
            }
            VunglePub.getInstance().getGlobalAdConfig().setBackButtonImmediatelyEnabled(true);
            VunglePub.getInstance().playAd(activity);
            s.clickListener = displayHolder.clickListener;
            s.closeListener = displayHolder.closeListener;
            s.displayListener = displayHolder.displayListener;
            s.incentiveListener = displayHolder.incentiveListener;
        } else
        {
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (s)).displayListener.set(new DisplayResult("ad not ready"));
        }
        if (((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener.isDone())
        {
            fetchStateManager.set(AD_UNIT, new FetchHolder());
            attemptNextFetch();
        }
        return s;
    }

    public SettableFuture start(List list)
    {
        if (started.compareAndSet(false, true))
        {
            VunglePub.getInstance().init(getContextRef().getApp(), appId);
            list = VunglePub.getInstance().getGlobalAdConfig();
            list.setSoundEnabled(true);
            list.setOrientation(Orientation.autoRotate);
            list.setBackButtonImmediatelyEnabled(true);
            VunglePub.getInstance().setEventListener(new AdListener());
            attemptNextFetch();
        }
        return ((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.VIDEO;
    }






    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/VungleAdapter$2$2

/* anonymous class */
    class _cls2
        implements Runnable
    {

        final _cls2 this$1;
        final FetchHolder val$holder;

        public void run()
        {
            if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(holder.fetchListener, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult.NOT_READY)).success)
            {
                fetchStateManager.set(VungleAdapter.AD_UNIT, new FetchHolder());
                retry();
            }
        }

            
            {
                this$1 = final__pcls2;
                holder = FetchHolder.this;
                super();
            }
    }

}
