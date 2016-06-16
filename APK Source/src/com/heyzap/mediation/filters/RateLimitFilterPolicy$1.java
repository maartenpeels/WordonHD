// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import com.heyzap.internal.FutureUtils;

// Referenced classes of package com.heyzap.mediation.filters:
//            RateLimitFilterPolicy

class val.adDisplay
    implements Runnable
{

    final RateLimitFilterPolicy this$0;
    final com.heyzap.mediation.abstr. val$adDisplay;

    public void run()
    {
        if (((com.heyzap.mediation.abstr.sult)FutureUtils.getImmediatelyOrDefault(val$adDisplay.displayListener, new com.heyzap.mediation.abstr.sult("failed"))).success)
        {
            addDisplay(System.currentTimeMillis());
        }
    }

    lt()
    {
        this$0 = final_ratelimitfilterpolicy;
        val$adDisplay = com.heyzap.mediation.abstr..this;
        super();
    }
}
