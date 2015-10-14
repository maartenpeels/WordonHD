// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.mediation:
//            ConcurrentLoaderStrategy

class tworkConfig
    implements Runnable
{

    final ConcurrentLoaderStrategy this$0;
    final ListenableFuture val$fetchFuture;
    final tworkConfig val$networkConfig;

    public void run()
    {
        try
        {
            val$fetchFuture.get();
        }
        catch (InterruptedException interruptedexception)
        {
            Logger.trace(interruptedexception);
        }
        catch (ExecutionException executionexception)
        {
            Logger.trace(executionexception);
        }
        ConcurrentLoaderStrategy.access$126(ConcurrentLoaderStrategy.this, val$networkConfig.load);
        ConcurrentLoaderStrategy.access$000(ConcurrentLoaderStrategy.this);
    }

    tworkConfig()
    {
        this$0 = final_concurrentloaderstrategy;
        val$fetchFuture = listenablefuture;
        val$networkConfig = tworkConfig.this;
        super();
    }
}
