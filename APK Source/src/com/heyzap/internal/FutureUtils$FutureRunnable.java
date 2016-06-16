// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.ExecutionException;

// Referenced classes of package com.heyzap.internal:
//            FutureUtils, ListenableFuture, Logger

public static abstract class future
    implements Runnable
{

    public final ListenableFuture future;

    public void run()
    {
        Object obj;
        try
        {
            obj = future.get();
        }
        catch (InterruptedException interruptedexception)
        {
            run(null, ((Exception) (interruptedexception)));
            return;
        }
        catch (ExecutionException executionexception)
        {
            run(null, ((Exception) (executionexception)));
            return;
        }
        try
        {
            run(obj, null);
            return;
        }
        catch (Exception exception)
        {
            Logger.log("found error, passing on");
            throw new RuntimeException(exception);
        }
    }

    public abstract void run(Object obj, Exception exception);

    protected (ListenableFuture listenablefuture)
    {
        future = listenablefuture;
    }
}
