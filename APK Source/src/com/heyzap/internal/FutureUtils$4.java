// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            FutureUtils, SettableFuture, ListenableFuture

static final class re extends tureRunnable
{

    final SettableFuture val$resultFuture;

    public void run(Object obj, Exception exception)
    {
        if (exception == null)
        {
            val$resultFuture.set(obj);
            return;
        } else
        {
            val$resultFuture.setException(exception);
            return;
        }
    }

    re(ListenableFuture listenablefuture, SettableFuture settablefuture)
    {
        val$resultFuture = settablefuture;
        super(listenablefuture);
    }
}
