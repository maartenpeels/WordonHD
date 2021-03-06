// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.MediationResult;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.request.MediationRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.mediation.display:
//            WaterfallMediator, DisplayConfig

class val.pendingNetworks
    implements Runnable
{

    final val.pendingNetworks this$1;
    final DisplayConfig val$displayConfig;
    final List val$pendingNetworks;

    public void run()
    {
        mediationResultFuture.set(WaterfallMediator.access$400(_fld0, val$displayConfig, val$pendingNetworks));
    }

    t>()
    {
        this$1 = final_t>;
        val$displayConfig = displayconfig;
        val$pendingNetworks = List.this;
        super();
    }

    // Unreferenced inner class com/heyzap/mediation/display/WaterfallMediator$2

/* anonymous class */
    class WaterfallMediator._cls2 extends com.heyzap.internal.FutureUtils.FutureRunnable
    {

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
                NetworkAdapter networkadapter = WaterfallMediator.access$000(WaterfallMediator.this).get(((DisplayConfig.Network) (obj1)).network);
                if (networkadapter == null)
                {
                    obj1 = new WaterfallMediator.NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)), null);
                    WaterfallMediator.NetworkWrapper.access$200(((WaterfallMediator.NetworkWrapper) (obj1)), "network not on board");
                    exception.add(obj1);
                } else
                if (!networkadapter.isAdUnitCapable(request.getAdUnit()).booleanValue())
                {
                    obj1 = new WaterfallMediator.NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)), null);
                    WaterfallMediator.NetworkWrapper.access$200(((WaterfallMediator.NetworkWrapper) (obj1)), "network not capable of ad unit");
                    exception.add(obj1);
                } else
                if (networkadapter.isInterstitialVideo() && request.getAdUnit() == com.heyzap.internal.Constants.AdUnit.INTERSTITIAL && (!Utils.isExpired(Long.valueOf(WaterfallMediator.access$300(WaterfallMediator.this)), Integer.valueOf(displayConfig.interstitialVideoInterval)).booleanValue() || !displayConfig.interstitialVideoEnabled))
                {
                    obj1 = new WaterfallMediator.NetworkWrapper(SettableFuture.create(), networkadapter, ((DisplayConfig.Network) (obj1)), null);
                    WaterfallMediator.NetworkWrapper.access$200(((WaterfallMediator.NetworkWrapper) (obj1)), "interstitial rate limited");
                    exception.add(obj1);
                } else
                {
                    SettableFuture settablefuture = networkadapter.awaitAvailability(request.getAdUnit());
                    exception.add(new WaterfallMediator.NetworkWrapper(settablefuture, networkadapter, ((DisplayConfig.Network) (obj1)), null));
                    ((List) (obj)).add(settablefuture);
                    if (settablefuture.isDone())
                    {
                        try
                        {
                            if (((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)settablefuture.get()).success)
                            {
                                mediationResultFuture.set(WaterfallMediator.access$400(WaterfallMediator.this, displayConfig, exception));
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
            WaterfallMediator.NetworkWrapper networkwrapper;
            for (Iterator iterator1 = exception.iterator(); iterator1.hasNext(); networkwrapper.fetchResultFuture.addListener(new WaterfallMediator._cls2._cls1(((SettableFuture) (obj))), WaterfallMediator.access$500(WaterfallMediator.this)))
            {
                networkwrapper = (WaterfallMediator.NetworkWrapper)iterator1.next();
            }

            FutureUtils.wrapTimeout(((ListenableFuture) (obj)), WaterfallMediator.access$500(WaterfallMediator.this), request.getRemainingTtl(), TimeUnit.MILLISECONDS).addListener(exception. new WaterfallMediator._cls2._cls2(), WaterfallMediator.access$500(WaterfallMediator.this));
        }

        public volatile void run(Object obj, Exception exception)
        {
            run((DisplayConfig)obj, exception);
        }

            
            {
                this$0 = final_waterfallmediator;
                mediationResultFuture = SettableFuture.this;
                request = mediationrequest;
                super(final_listenablefuture);
            }

        // Unreferenced inner class com/heyzap/mediation/display/WaterfallMediator$2$1

/* anonymous class */
        class WaterfallMediator._cls2._cls1 extends com.heyzap.internal.FutureUtils.FutureRunnable
        {

            final WaterfallMediator._cls2 this$1;
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
                        this$1 = WaterfallMediator._cls2.this;
                        reapTimeoutFuture = settablefuture;
                        super(final_listenablefuture);
                    }
        }

    }

}
