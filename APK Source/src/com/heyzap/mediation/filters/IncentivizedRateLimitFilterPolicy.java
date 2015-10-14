// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.SettableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.mediation.filters:
//            RateLimitFilterPolicy, Store

class IncentivizedRateLimitFilterPolicy extends RateLimitFilterPolicy
{

    final ExecutorService executorService;

    public IncentivizedRateLimitFilterPolicy(ExecutorService executorservice, int i, int j, TimeUnit timeunit, Store store)
    {
        super(executorservice, i, j, timeunit, store);
        executorService = executorservice;
    }

    public void addDisplay(final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay adDisplay)
    {
        adDisplay.incentiveListener.addListener(new Runnable() {

            final IncentivizedRateLimitFilterPolicy this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$adDisplay;

            public void run()
            {
                if (((Boolean)FutureUtils.getImmediatelyOrDefault(adDisplay.incentiveListener, Boolean.valueOf(false))).booleanValue())
                {
                    addDisplay(System.currentTimeMillis());
                }
            }

            
            {
                this$0 = IncentivizedRateLimitFilterPolicy.this;
                adDisplay = addisplay;
                super();
            }
        }, executorService);
    }
}
