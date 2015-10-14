// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import android.app.Activity;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdUnitAliasMap;
import com.heyzap.mediation.adapter.AdUnitStateManager;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import com.heyzap.mediation.adapter.FetchStateManager;
import com.unity3d.ads.android.IUnityAdsListener;
import com.unity3d.ads.android.UnityAds;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class UnityadsAdapter extends NetworkAdapter
{
    private class AdListener
        implements IUnityAdsListener
    {

        final UnityadsAdapter this$0;

        public void onFetchCompleted()
        {
            ((FetchHolder)fetchStateManager.get(UnityadsAdapter.AD_UNIT)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
        }

        public void onFetchCompleted(String s)
        {
            onFetchCompleted();
        }

        public void onFetchFailed()
        {
            ((FetchHolder)fetchStateManager.get(UnityadsAdapter.AD_UNIT)).fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.NO_FILL, "Failed to load."));
        }

        public void onFetchFailed(String s)
        {
            onFetchFailed();
        }

        public void onHide()
        {
            displayHolder.closeListener.set(Boolean.valueOf(true));
        }

        public void onShow()
        {
            displayHolder.displayListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult());
        }

        public void onVideoCompleted(String s, boolean flag)
        {
            if (com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.equals(displayHolder.adUnit))
            {
                displayHolder.closeListener.addListener(flag. new Runnable() {

                    final AdListener this$1;
                    final boolean val$skipped;

                    public void run()
                    {
                        SettableFuture settablefuture = displayHolder.incentiveListener;
                        boolean flag;
                        if (!skipped)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        settablefuture.set(Boolean.valueOf(flag));
                    }

            
            {
                this$1 = final_adlistener;
                skipped = Z.this;
                super();
            }
                }, _cls1);
            }
        }

        public void onVideoStarted()
        {
        }

        private AdListener()
        {
            this$0 = UnityadsAdapter.this;
            super();
        }

    }

    private static class DisplayHolder extends com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay
    {

        public final com.heyzap.internal.Constants.AdUnit adUnit;

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


    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static String CANON = "unityads";
    private static String KLASS = "com.unity3d.ads.android.UnityAds";
    private static String LOAD_NETWORKS = "mobile_android";
    private static String MARKETING_NAME = "UnityAds";
    private static String SHOW_NETWORKS = "mobile_android";
    private AdUnitAliasMap adUnitAliasMap;
    private AdUnitStateManager adUnitStateManager;
    private DisplayHolder displayHolder;
    private Set failedZones;
    private final FetchStateManager fetchStateManager = new FetchStateManager();
    private String zoneIdIncentivized;
    private String zoneIdVideo;

    public UnityadsAdapter()
    {
        adUnitStateManager = new AdUnitStateManager();
        failedZones = Collections.synchronizedSet(new HashSet());
    }

    private void attemptNextFetch()
    {
        getFetchConsumer().consumeAny(getAdUnitCapabilities(), new Runnable() , executorService);
    }

    private Boolean canShowAdsWithReflection(String s)
    {
        Method method = com/unity3d/ads/android/UnityAds.getMethod("canShowAds", new Class[] {
            java/lang/String
        });
        if (method.getGenericReturnType() != Boolean.TYPE)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        s = (Boolean)method.invoke(null, new Object[] {
            s
        });
        return s;
        s;
        Logger.trace(s);
_L4:
        s = com/unity3d/ads/android/UnityAds.getMethod("canShowAds", new Class[0]);
        if (s.getGenericReturnType() != Boolean.TYPE)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        s = (Boolean)s.invoke(null, new Object[0]);
        return s;
        s;
        Logger.trace(s);
_L2:
        return Boolean.valueOf(false);
        s;
        Logger.trace(s);
        if (true) goto _L2; else goto _L1
_L1:
        s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String getZoneId(com.heyzap.internal.Constants.AdUnit adunit)
    {
        if (com.heyzap.internal.Constants.AdUnit.INCENTIVIZED.equals(adunit))
        {
            return zoneIdIncentivized;
        } else
        {
            return zoneIdVideo;
        }
    }

    private boolean isReady()
    {
        return UnityAds.canShow() && canShowAdsWithReflection(SHOW_NETWORKS).booleanValue();
    }

    private void setNetworkReflection(String s)
    {
        try
        {
            com/unity3d/ads/android/UnityAds.getMethod("setNetwork", new Class[] {
                java/lang/String
            }).invoke(null, new Object[] {
                s
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Logger.trace(s);
        }
    }

    private void setNetworksReflection(String s)
    {
        try
        {
            com/unity3d/ads/android/UnityAds.getMethod("setNetworks", new Class[] {
                java/lang/String
            }).invoke(null, new Object[] {
                s
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Logger.trace(s);
        }
    }

    public void addFetchStartedListener(final com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener fetchStartedListener, ExecutorService executorservice)
    {
        fetchStateManager.addFetchStartedListener(new com.heyzap.mediation.adapter.FetchStateManager.FetchStartedListener() {

            final UnityadsAdapter this$0;
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
                this$0 = UnityadsAdapter.this;
                fetchStartedListener = fetchstartedlistener;
                super();
            }
        }, executorservice);
    }

    public SettableFuture awaitAvailability(com.heyzap.internal.Constants.AdUnit adunit)
    {
        if (getZoneId(adunit) == null || failedZones.contains(getZoneId(adunit)))
        {
            adunit = SettableFuture.create();
            adunit.set(new FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.BAD_CREDENTIALS, "Zone ID unrecongized"));
            return adunit;
        }
        if (isReady())
        {
            ((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener.set(new FetchResult());
        }
        return ((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener;
    }

    public EnumSet getAdUnitCapabilities()
    {
        return EnumSet.of(com.heyzap.internal.Constants.AdUnit.VIDEO, com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, com.heyzap.internal.Constants.AdUnit.INTERSTITIAL);
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
        return UnityAds.getSDKVersion();
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
        return adUnitStateManager.allStarted(adUnitAliasMap.translate(list));
    }

    public void onInit()
        throws com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError
    {
        if (getContextRef().getActivity() == null)
        {
            throw new ConfigurationError("Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable unity ads.");
        } else
        {
            adUnitAliasMap = new AdUnitAliasMap();
            adUnitAliasMap.add(com.heyzap.internal.Constants.AdUnit.INTERSTITIAL, com.heyzap.internal.Constants.AdUnit.VIDEO);
            adUnitAliasMap.add(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED, com.heyzap.internal.Constants.AdUnit.VIDEO);
            zoneIdIncentivized = getConfiguration().getValue("incentivized_placement_id");
            zoneIdVideo = getConfiguration().getValue("video_placement_id");
            fetchStateManager.set(AD_UNIT, new FetchHolder());
            return;
        }
    }

    public com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay show(com.heyzap.internal.Constants.AdUnit adunit, String s, Activity activity)
    {
        s = getZoneId(adunit);
        adunit = new DisplayHolder(adunit);
        displayHolder = adunit;
        if (!UnityAds.setZone(s))
        {
            failedZones.add(s);
            ((DisplayHolder) (adunit)).displayListener.set(new DisplayResult("Bad zone id"));
        }
        setNetworkReflection(SHOW_NETWORKS);
        if (!UnityAds.show())
        {
            ((DisplayHolder) (adunit)).displayListener.set(new DisplayResult("Display failed"));
        }
        if (((FetchHolder)fetchStateManager.get(AD_UNIT)).fetchListener.isDone())
        {
            fetchStateManager.set(AD_UNIT, new FetchHolder());
            attemptNextFetch();
        }
        return adunit;
    }

    public SettableFuture start(List list)
    {
        list = adUnitStateManager.start(adUnitAliasMap.translate(list));
        list.retainAll(getAdUnitCapabilities());
        if (list.size() > 0)
        {
            UnityAds.init(getContextRef().getActivity(), getConfiguration().getValue("game_id"), null);
            UnityAds.changeActivity(getContextRef().getActivity());
            UnityAds.setDebugMode(Utils.isDebug(getContextRef().getApp()).booleanValue());
            UnityAds.setListener(new AdListener());
            setNetworksReflection(LOAD_NETWORKS);
            getContextRef().addActivityUpdateListener(new Runnable() {

                final UnityadsAdapter this$0;

                public void run()
                {
                    UnityAds.changeActivity(getContextRef().getActivity());
                }

            
            {
                this$0 = UnityadsAdapter.this;
                super();
            }
            }, uiThreadExecutorService);
            attemptNextFetch();
        }
        return awaitAvailability(com.heyzap.internal.Constants.AdUnit.VIDEO);
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.VIDEO;
    }










    // Unreferenced inner class com/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2

/* anonymous class */
    class _cls2 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final _cls1 this$2;
        final FetchHolder val$fetchHolder;

        public void run()
        {
            if (isReady())
            {
                fetchHolder.fetchListener.set(new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult());
            }
            if (!fetchHolder.fetchListener.isDone())
            {
                retry();
            }
        }

            
            {
                this$2 = final__pcls1;
                fetchHolder = FetchHolder.this;
                super();
            }
    }

}
