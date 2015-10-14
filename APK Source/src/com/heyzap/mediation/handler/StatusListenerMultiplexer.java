// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.mediation.filters.FilterContext;
import com.heyzap.mediation.filters.FilterManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class StatusListenerMultiplexer
{

    private final ScheduledExecutorService executorService;
    private List incentiveListeners;
    private List statusListeners;
    public boolean usesAudio;

    public StatusListenerMultiplexer(ScheduledExecutorService scheduledexecutorservice)
    {
        statusListeners = Collections.synchronizedList(new ArrayList());
        incentiveListeners = Collections.synchronizedList(new ArrayList());
        usesAudio = false;
        executorService = scheduledexecutorservice;
    }

    public void addDisplay(final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay display, final String tag)
    {
        display.displayListener.addListener(new Runnable() {

            final StatusListenerMultiplexer this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;
            final String val$tag;

            public void run()
            {
                boolean flag = false;
                boolean flag1;
                try
                {
                    flag1 = ((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)display.displayListener.get()).success;
                }
                catch (InterruptedException interruptedexception)
                {
                    Logger.trace(interruptedexception);
                    continue;
                }
                catch (ExecutionException executionexception)
                {
                    Logger.trace(executionexception);
                    continue;
                }
                flag = flag1;
                do
                {
                    Iterator iterator = statusListeners.iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener = (com.heyzap.sdk.ads.HeyzapAds.OnStatusListener)iterator.next();
                        if (flag)
                        {
                            onstatuslistener.onShow(tag);
                            if (usesAudio)
                            {
                                onstatuslistener.onAudioStarted();
                            }
                        } else
                        {
                            onstatuslistener.onFailedToShow(tag);
                        }
                    } while (true);
                    return;
                } while (true);
            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                display = addisplay;
                tag = s;
                super();
            }
        }, executorService);
        display.closeListener.addListener(new Runnable() {

            final StatusListenerMultiplexer this$0;
            final String val$tag;

            public void run()
            {
                Iterator iterator = statusListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener = (com.heyzap.sdk.ads.HeyzapAds.OnStatusListener)iterator.next();
                    onstatuslistener.onHide(tag);
                    if (usesAudio)
                    {
                        onstatuslistener.onAudioFinished();
                    }
                } while (true);
            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                tag = s;
                super();
            }
        }, executorService);
        display.clickListener.addListener(new Runnable() {

            final StatusListenerMultiplexer this$0;
            final String val$tag;

            public void run()
            {
                for (Iterator iterator = statusListeners.iterator(); iterator.hasNext(); ((com.heyzap.sdk.ads.HeyzapAds.OnStatusListener)iterator.next()).onClick(tag)) { }
            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                tag = s;
                super();
            }
        }, executorService);
        display.incentiveListener.addListener(new Runnable() {

            final StatusListenerMultiplexer this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;
            final String val$tag;

            public void run()
            {
                boolean flag = ((Boolean)FutureUtils.getImmediatelyOrDefault(display.incentiveListener, Boolean.valueOf(false))).booleanValue();
                for (Iterator iterator = incentiveListeners.iterator(); iterator.hasNext();)
                {
                    com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener onincentiveresultlistener = (com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener)iterator.next();
                    if (flag)
                    {
                        onincentiveresultlistener.onComplete(tag);
                    } else
                    {
                        onincentiveresultlistener.onIncomplete(tag);
                    }
                }

            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                display = addisplay;
                tag = s;
                super();
            }
        }, executorService);
    }

    public void addFetch(final com.heyzap.internal.Constants.AdUnit adUnit, final String tag, final ListenableFuture final_listenablefuture)
    {
        final SettableFuture fetchSuccessFuture = FutureUtils.wrapTimeout(SettableFuture.create(), executorService, 30L, TimeUnit.SECONDS);
        final_listenablefuture.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(fetchSuccessFuture) {

            final StatusListenerMultiplexer this$0;
            final com.heyzap.internal.Constants.AdUnit val$adUnit;
            final SettableFuture val$fetchSuccessFuture;
            final String val$tag;

            public void run(MediationConfig mediationconfig, Exception exception)
            {
                if (mediationconfig == null || !mediationconfig.getFilterManager().accept(new FilterContext(adUnit, tag)))
                {
                    fetchSuccessFuture.set(Boolean.valueOf(false));
                } else
                {
                    exception = mediationconfig.getAdapterPool();
                    int i = exception.getAll().size();
                    mediationconfig = new AtomicInteger(0);
                    exception = exception.getAll().iterator();
                    while (exception.hasNext()) 
                    {
                        final SettableFuture final_listenablefuture = ((NetworkAdapter)exception.next()).awaitAvailability(adUnit);
                        final_listenablefuture.addListener(mediationconfig. new com.heyzap.internal.FutureUtils.FutureRunnable(i) {

                            final _cls5 this$1;
                            final AtomicInteger val$failureCount;
                            final int val$poolSize;

                            public void run(com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult, Exception exception)
                            {
                                if (fetchresult != null && fetchresult.success)
                                {
                                    fetchSuccessFuture.set(Boolean.valueOf(true));
                                } else
                                if (failureCount.incrementAndGet() >= poolSize)
                                {
                                    fetchSuccessFuture.set(Boolean.valueOf(false));
                                    return;
                                }
                            }

                            public volatile void run(Object obj, Exception exception)
                            {
                                run((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)obj, exception);
                            }

            
            {
                this$1 = final__pcls5;
                failureCount = AtomicInteger.this;
                poolSize = i;
                super(final_listenablefuture);
            }
                        }, executorService);
                    }
                }
            }

            public volatile void run(Object obj, Exception exception)
            {
                run((MediationConfig)obj, exception);
            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                adUnit = adunit;
                tag = s;
                fetchSuccessFuture = settablefuture;
                super(final_listenablefuture);
            }
        }, executorService);
        fetchSuccessFuture.addListener(new Runnable() {

            final StatusListenerMultiplexer this$0;
            final SettableFuture val$fetchSuccessFuture;
            final String val$tag;

            public void run()
            {
                boolean flag = false;
                boolean flag1 = ((Boolean)fetchSuccessFuture.get()).booleanValue();
                flag = flag1;
_L1:
                for (Iterator iterator = statusListeners.iterator(); iterator.hasNext();)
                {
                    com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener = (com.heyzap.sdk.ads.HeyzapAds.OnStatusListener)iterator.next();
                    Object obj;
                    if (flag)
                    {
                        onstatuslistener.onAvailable(tag);
                    } else
                    {
                        onstatuslistener.onFailedToFetch(tag);
                    }
                }

                break MISSING_BLOCK_LABEL_98;
                obj;
                Logger.trace(((Throwable) (obj)));
                  goto _L1
                obj;
                Logger.trace(((Throwable) (obj)));
                  goto _L1
            }

            
            {
                this$0 = StatusListenerMultiplexer.this;
                fetchSuccessFuture = settablefuture;
                tag = s;
                super();
            }
        }, executorService);
    }

    public void sendDisplayFailed(String s)
    {
        for (Iterator iterator = statusListeners.iterator(); iterator.hasNext(); ((com.heyzap.sdk.ads.HeyzapAds.OnStatusListener)iterator.next()).onFailedToShow(s)) { }
    }

    public void setIncentiveListener(com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener onincentiveresultlistener)
    {
        List list = Collections.synchronizedList(new ArrayList());
        list.add(onincentiveresultlistener);
        incentiveListeners = list;
    }

    public void setListener(com.heyzap.sdk.ads.HeyzapAds.OnStatusListener onstatuslistener)
    {
        List list = Collections.synchronizedList(new ArrayList());
        list.add(onstatuslistener);
        statusListeners = list;
    }

    public void setUsesAudio(boolean flag)
    {
        usesAudio = flag;
    }



}
