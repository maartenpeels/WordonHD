// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.internal:
//            FutureUtils, SettableFuture

static final class val.resultFuture
    implements Runnable
{

    final List val$futures;
    final SettableFuture val$resultFuture;
    final AtomicInteger val$seen;

    public void run()
    {
        if (val$futures.size() <= val$seen.addAndGet(1))
        {
            val$resultFuture.set(Boolean.valueOf(true));
        }
    }

    (List list, AtomicInteger atomicinteger, SettableFuture settablefuture)
    {
        val$futures = list;
        val$seen = atomicinteger;
        val$resultFuture = settablefuture;
        super();
    }
}
