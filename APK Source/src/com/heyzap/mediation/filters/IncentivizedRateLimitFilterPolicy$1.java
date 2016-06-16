// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import com.heyzap.internal.FutureUtils;

// Referenced classes of package com.heyzap.mediation.filters:
//            IncentivizedRateLimitFilterPolicy

class val.adDisplay
    implements Runnable
{

    final IncentivizedRateLimitFilterPolicy this$0;
    final com.heyzap.mediation.abstr.addDisplay val$adDisplay;

    public void run()
    {
        if (((Boolean)FutureUtils.getImmediatelyOrDefault(val$adDisplay.stener, Boolean.valueOf(false))).booleanValue())
        {
            addDisplay(System.currentTimeMillis());
        }
    }

    ()
    {
        this$0 = final_incentivizedratelimitfilterpolicy;
        val$adDisplay = com.heyzap.mediation.abstr._cls1.val.adDisplay.this;
        super();
    }
}
