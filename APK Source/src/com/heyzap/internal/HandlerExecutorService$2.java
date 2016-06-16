// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            HandlerExecutorService, SettableFuture

class val.result
    implements Runnable
{

    final HandlerExecutorService this$0;
    final SettableFuture val$future;
    final Object val$result;
    final Runnable val$task;

    public void run()
    {
        val$task.run();
        val$future.set(val$result);
    }

    ()
    {
        this$0 = final_handlerexecutorservice;
        val$task = runnable;
        val$future = settablefuture;
        val$result = Object.this;
        super();
    }
}
