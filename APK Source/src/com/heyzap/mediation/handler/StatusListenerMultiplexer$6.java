// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.handler;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.mediation.handler:
//            StatusListenerMultiplexer

class val.tag
    implements Runnable
{

    final StatusListenerMultiplexer this$0;
    final SettableFuture val$fetchSuccessFuture;
    final String val$tag;

    public void run()
    {
        boolean flag = false;
        boolean flag1 = ((Boolean)val$fetchSuccessFuture.get()).booleanValue();
        flag = flag1;
_L1:
        for (Iterator iterator = StatusListenerMultiplexer.access$000(StatusListenerMultiplexer.this).iterator(); iterator.hasNext();)
        {
            com.heyzap.sdk.ads.iplexer iplexer = (com.heyzap.sdk.ads.iplexer)iterator.next();
            Object obj;
            if (flag)
            {
                iplexer.nAvailable(val$tag);
            } else
            {
                iplexer.nFailedToFetch(val$tag);
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

    ()
    {
        this$0 = final_statuslistenermultiplexer;
        val$fetchSuccessFuture = settablefuture;
        val$tag = String.this;
        super();
    }
}
