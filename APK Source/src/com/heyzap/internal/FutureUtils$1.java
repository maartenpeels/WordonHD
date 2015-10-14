// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.internal:
//            FutureUtils, SettableFuture, ListenableFuture

static final class re extends tureRunnable
{

    final AtomicInteger val$errorsSeen;
    final List val$futures;
    final SettableFuture val$resultFuture;

    public void run(Object obj, Exception exception)
    {
        if (exception == null)
        {
            val$resultFuture.set(obj);
        } else
        if (val$futures.size() <= val$errorsSeen.addAndGet(1))
        {
            val$resultFuture.setException(new RuntimeException("All futures failed"));
            return;
        }
    }

    re(ListenableFuture listenablefuture, SettableFuture settablefuture, List list, AtomicInteger atomicinteger)
    {
        val$resultFuture = settablefuture;
        val$futures = list;
        val$errorsSeen = atomicinteger;
        super(listenablefuture);
    }
}
