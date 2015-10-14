// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.mediation.filters.FilterContext;
import com.heyzap.mediation.filters.FilterManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.mediation.handler:
//            StatusListenerMultiplexer

class val.fetchSuccessFuture extends com.heyzap.internal.plexer._cls5
{

    final StatusListenerMultiplexer this$0;
    final com.heyzap.internal.plexer val$adUnit;
    final SettableFuture val$fetchSuccessFuture;
    final String val$tag;

    public void run(final MediationConfig failureCount, Exception exception)
    {
        if (failureCount == null || !failureCount.getFilterManager().accept(new FilterContext(val$adUnit, val$tag)))
        {
            val$fetchSuccessFuture.set(Boolean.valueOf(false));
        } else
        {
            exception = failureCount.getAdapterPool();
            int i = exception.getAll().size();
            failureCount = new AtomicInteger(0);
            exception = exception.getAll().iterator();
            while (exception.hasNext()) 
            {
                final SettableFuture final_listenablefuture = ((NetworkAdapter)exception.next()).awaitAvailability(val$adUnit);
                final_listenablefuture.addListener(new com.heyzap.internal.FutureUtils.FutureRunnable(i) {

                    final StatusListenerMultiplexer._cls5 this$1;
                    final AtomicInteger val$failureCount;
                    final int val$poolSize;

                    public void run(com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult, Exception exception1)
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

                    public volatile void run(Object obj, Exception exception1)
                    {
                        run((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)obj, exception1);
                    }

            
            {
                this$1 = StatusListenerMultiplexer._cls5.this;
                failureCount = atomicinteger;
                poolSize = i;
                super(final_listenablefuture);
            }
                }, StatusListenerMultiplexer.access$200(StatusListenerMultiplexer.this));
            }
        }
    }

    public volatile void run(Object obj, Exception exception)
    {
        run((MediationConfig)obj, exception);
    }

    _cls1.val.poolSize(SettableFuture settablefuture)
    {
        this$0 = final_statuslistenermultiplexer;
        val$adUnit = plexer;
        val$tag = String.this;
        val$fetchSuccessFuture = settablefuture;
        super(final_listenablefuture);
    }
}
