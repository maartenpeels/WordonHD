// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.MediationResult;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.filters.FilterManager;
import com.heyzap.mediation.request.MediationRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.mediation.display:
//            DisplayConfig, DisplayConfigLoader

public class WaterfallMediator
{
    private static class NetworkWrapper
    {

        public final SettableFuture fetchResultFuture;
        public final NetworkAdapter networkAdapter;
        public final DisplayConfig.Network networkConfig;
        public boolean rejected;
        public String rejectionCause;

        private void setRejected(String s)
        {
            rejected = true;
            rejectionCause = s;
        }


        private NetworkWrapper(SettableFuture settablefuture, NetworkAdapter networkadapter, DisplayConfig.Network network)
        {
            rejected = false;
            fetchResultFuture = settablefuture;
            networkAdapter = networkadapter;
            networkConfig = network;
        }

    }


    private final AdapterPool adapterPool;
    private final DisplayConfigLoader displayConfigLoader;
    private final FilterManager filterManager;
    private long lastInterstitialVideoAt;
    private final ScheduledExecutorService scheduledExecutorService;

    public WaterfallMediator(AdapterPool adapterpool, DisplayConfigLoader displayconfigloader, FilterManager filtermanager)
    {
        this(adapterpool, displayconfigloader, ((ScheduledExecutorService) (ExecutorPool.getInstance())), filtermanager);
    }

    public WaterfallMediator(AdapterPool adapterpool, DisplayConfigLoader displayconfigloader, ScheduledExecutorService scheduledexecutorservice, FilterManager filtermanager)
    {
        lastInterstitialVideoAt = 0L;
        adapterPool = adapterpool;
        displayConfigLoader = displayconfigloader;
        scheduledExecutorService = scheduledexecutorservice;
        filterManager = filtermanager;
    }

    private MediationResult reapPending(DisplayConfig displayconfig, List list)
    {
        MediationResult mediationresult = new MediationResult();
        mediationresult.id = displayconfig.id;
        list = list.iterator();
        int i = 0;
        do
        {
label0:
            {
                if (list.hasNext())
                {
                    Object obj = (NetworkWrapper)list.next();
                    String s;
                    Double double1;
                    NetworkAdapter networkadapter;
                    boolean flag;
                    if (((NetworkWrapper) (obj)).rejected)
                    {
                        displayconfig = new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.SKIPPED, ((NetworkWrapper) (obj)).rejectionCause);
                    } else
                    if (!((NetworkWrapper) (obj)).fetchResultFuture.isDone())
                    {
                        displayconfig = new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.TIMEOUT, "display timed out");
                    } else
                    {
                        try
                        {
                            displayconfig = (com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)((NetworkWrapper) (obj)).fetchResultFuture.get();
                        }
                        // Misplaced declaration of an exception variable
                        catch (DisplayConfig displayconfig)
                        {
                            displayconfig = new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN, displayconfig.getMessage());
                        }
                    }
                    s = ((NetworkWrapper) (obj)).networkConfig.id;
                    double1 = ((NetworkWrapper) (obj)).networkConfig.score;
                    networkadapter = ((NetworkWrapper) (obj)).networkAdapter;
                    if (((NetworkWrapper) (obj)).networkAdapter == null)
                    {
                        flag = false;
                    } else
                    {
                        flag = ((NetworkWrapper) (obj)).networkAdapter.isInterstitialVideo();
                    }
                    obj = new com.heyzap.mediation.MediationResult.NetworkResult(s, double1, networkadapter, flag, ((NetworkWrapper) (obj)).networkConfig.network, displayconfig, i);
                    mediationresult.networkResults.add(obj);
                    if (!((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult) (displayconfig)).success)
                    {
                        break label0;
                    }
                    mediationresult.selectedNetwork = ((com.heyzap.mediation.MediationResult.NetworkResult) (obj));
                }
                return mediationresult;
            }
            i++;
        } while (true);
    }

    public void addDisplay(MediationRequest mediationrequest, com.heyzap.mediation.MediationResult.NetworkResult networkresult, final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay display)
    {
        while (!networkresult.isVideo || !com.heyzap.internal.Constants.AdUnit.INTERSTITIAL.equals(mediationrequest.getAdUnit())) 
        {
            return;
        }
        display.displayListener.addListener(new Runnable() {

            final WaterfallMediator this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;

            public void run()
            {
                try
                {
                    if (((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)display.displayListener.get()).success)
                    {
                        lastInterstitialVideoAt = System.currentTimeMillis();
                    }
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
                this$0 = WaterfallMediator.this;
                display = addisplay;
                super();
            }
        }, scheduledExecutorService);
    }

    public ListenableFuture getDisplayAdapter(MediationRequest mediationrequest)
    {
        final SettableFuture mediationResultFuture = SettableFuture.create();
        final SettableFuture displayConfigFuture = displayConfigLoader.consume();
        FutureUtils.addTimeout(displayConfigFuture, scheduledExecutorService, mediationrequest.getRemainingTtl(), TimeUnit.MILLISECONDS);
        mediationResultFuture.addListener(new Runnable() {

            final WaterfallMediator this$0;
            final SettableFuture val$displayConfigFuture;

            public void run()
            {
                Logger.log("mediationResultFuture finished, cancelling displayConfigFuture");
                displayConfigFuture.setException(new RuntimeException("display cancelled"));
            }

            
            {
                this$0 = WaterfallMediator.this;
                displayConfigFuture = settablefuture;
                super();
            }
        }, scheduledExecutorService);
        displayConfigFuture.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(mediationrequest) {

            final WaterfallMediator this$0;
            final SettableFuture val$mediationResultFuture;
            final MediationRequest val$request;

            public void run(final DisplayConfig displayConfig, Exception exception)
            {
                if (exception != null)
                {
                    mediationResultFuture.setException(exception);
                    return;
                }
                request.setTimeoutMilli(displayConfig.displayTtl);
                if (request.isTimedOut().booleanValue())
                {
                    displayConfig = new MediationResult();
                    displayConfig.setError("Display timed out");
                    mediationResultFuture.set(displayConfig);
                    return;
                }
                Object obj = new ArrayList();
                exception = new ArrayList();
                Iterator iterator = displayConfig.networks.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    Object obj1 = (DisplayConfig.Network)iterator.next();
                    NetworkAdapter networkadapter = adapterPool.get(((DisplayConfig.Network) (obj1)).network);
                    if (networkadapter == null)
                    {
                        obj1 = new NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)));
                        ((NetworkWrapper) (obj1)).setRejected("network not on board");
                        exception.add(obj1);
                    } else
                    if (!networkadapter.isAdUnitCapable(request.getAdUnit()).booleanValue())
                    {
                        obj1 = new NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)));
                        ((NetworkWrapper) (obj1)).setRejected("network not capable of ad unit");
                        exception.add(obj1);
                    } else
                    if (networkadapter.isInterstitialVideo() && request.getAdUnit() == com.heyzap.internal.Constants.AdUnit.INTERSTITIAL && (!Utils.isExpired(Long.valueOf(lastInterstitialVideoAt), Integer.valueOf(displayConfig.interstitialVideoInterval)).booleanValue() || !displayConfig.interstitialVideoEnabled))
                    {
                        obj1 = new NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)));
                        ((NetworkWrapper) (obj1)).setRejected("interstitial rate limited");
                        exception.add(obj1);
                    } else
                    {
                        SettableFuture settablefuture = networkadapter.awaitAvailability(request.getAdUnit());
                        exception.add(new NetworkWrapper(settablefuture, networkadapter, ((DisplayConfig.Network) (obj1))));
                        ((List) (obj)).add(settablefuture);
                        if (settablefuture.isDone())
                        {
                            try
                            {
                                if (((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)settablefuture.get()).success)
                                {
                                    mediationResultFuture.set(reapPending(displayConfig, exception));
                                    return;
                                }
                            }
                            catch (Exception exception1)
                            {
                                Logger.trace(exception1);
                            }
                        }
                    }
                } while (true);
                obj = SettableFuture.create();
                NetworkWrapper networkwrapper;
                for (Iterator iterator1 = exception.iterator(); iterator1.hasNext(); networkwrapper.fetchResultFuture.addListener(networkwrapper.fetchResultFuture. new com.heyzap.internal.FutureUtils.FutureRunnable(((SettableFuture) (obj))) {

            final _cls2 this$1;
            final SettableFuture val$reapTimeoutFuture;

            public void run(com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult, Exception exception)
            {
                if (fetchresult != null && fetchresult.success)
                {
                    reapTimeoutFuture.set(Boolean.valueOf(true));
                }
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)obj, exception);
            }

            
            {
                this$1 = final__pcls2;
                reapTimeoutFuture = settablefuture;
                super(ListenableFuture.this);
            }
        }, scheduledExecutorService))
                {
                    networkwrapper = (NetworkWrapper)iterator1.next();
                }

                FutureUtils.wrapTimeout(((ListenableFuture) (obj)), scheduledExecutorService, request.getRemainingTtl(), TimeUnit.MILLISECONDS).addListener(exception. new Runnable() {

                    final _cls2 this$1;
                    final DisplayConfig val$displayConfig;
                    final List val$pendingNetworks;

                    public void run()
                    {
                        mediationResultFuture.set(reapPending(displayConfig, pendingNetworks));
                    }

            
            {
                this$1 = final__pcls2;
                displayConfig = displayconfig;
                pendingNetworks = List.this;
                super();
            }
                }, scheduledExecutorService);
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((DisplayConfig)obj, exception);
            }

            
            {
                this$0 = WaterfallMediator.this;
                mediationResultFuture = settablefuture;
                request = mediationrequest;
                super(final_listenablefuture);
            }
        }, scheduledExecutorService);
        return mediationResultFuture;
    }




/*
    static long access$302(WaterfallMediator waterfallmediator, long l)
    {
        waterfallmediator.lastInterstitialVideoAt = l;
        return l;
    }

*/


}
