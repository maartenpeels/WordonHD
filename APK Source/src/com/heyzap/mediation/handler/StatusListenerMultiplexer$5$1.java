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

class val.poolSize extends com.heyzap.internal.exer._cls5._cls1
{

    final run this$1;
    final AtomicInteger val$failureCount;
    final int val$poolSize;

    public void run(com.heyzap.mediation.abstr._cls1 _pcls1, Exception exception)
    {
        if (_pcls1 != null && _pcls1.cess)
        {
            fetchSuccessFuture.set(Boolean.valueOf(true));
        } else
        if (val$failureCount.incrementAndGet() >= val$poolSize)
        {
            fetchSuccessFuture.set(Boolean.valueOf(false));
            return;
        }
    }

    public volatile void run(Object obj, Exception exception)
    {
        run((com.heyzap.mediation.abstr._cls1.run)obj, exception);
    }

    l.fetchSuccessFuture(int i)
    {
        this$1 = final_fetchsuccessfuture;
        val$failureCount = AtomicInteger.this;
        val$poolSize = i;
        super(final_listenablefuture);
    }

    // Unreferenced inner class com/heyzap/mediation/handler/StatusListenerMultiplexer$5

/* anonymous class */
    class StatusListenerMultiplexer._cls5 extends com.heyzap.internal.FutureUtils.FutureRunnable
    {

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
                    final_listenablefuture.addListener(mediationconfig. new StatusListenerMultiplexer._cls5._cls1(i), StatusListenerMultiplexer.access$200(StatusListenerMultiplexer.this));
                }
            }
        }

        public volatile void run(Object obj, Exception exception)
        {
            run((MediationConfig)obj, exception);
        }

            
            {
                this$0 = final_statuslistenermultiplexer;
                adUnit = adunit;
                tag = String.this;
                fetchSuccessFuture = settablefuture;
                super(final_listenablefuture);
            }
    }

}
