// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.internal.FutureUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.mediation.handler:
//            StatusListenerMultiplexer

class val.tag
    implements Runnable
{

    final StatusListenerMultiplexer this$0;
    final com.heyzap.mediation.abstr._cls4.val.tag val$display;
    final String val$tag;

    public void run()
    {
        boolean flag = ((Boolean)FutureUtils.getImmediatelyOrDefault(val$display.entiveListener, Boolean.valueOf(false))).booleanValue();
        for (Iterator iterator = StatusListenerMultiplexer.access$100(StatusListenerMultiplexer.this).iterator(); iterator.hasNext();)
        {
            com.heyzap.sdk.ads.istener istener = (com.heyzap.sdk.ads.istener)iterator.next();
            if (flag)
            {
                istener.onComplete(val$tag);
            } else
            {
                istener.onIncomplete(val$tag);
            }
        }

    }

    ()
    {
        this$0 = final_statuslistenermultiplexer;
        val$display = _pcls4;
        val$tag = String.this;
        super();
    }
}
