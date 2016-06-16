// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.Callable;

// Referenced classes of package com.heyzap.internal:
//            HandlerExecutorService, SettableFuture

class val.task
    implements Runnable
{

    final HandlerExecutorService this$0;
    final SettableFuture val$future;
    final Callable val$task;

    public void run()
    {
        try
        {
            val$future.set(val$task.call());
            return;
        }
        catch (Exception exception)
        {
            val$future.setException(exception);
        }
    }

    ()
    {
        this$0 = final_handlerexecutorservice;
        val$future = settablefuture;
        val$task = Callable.this;
        super();
    }
}
