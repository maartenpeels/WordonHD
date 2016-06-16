// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.internal:
//            RetryManager

public static class exponentBase
    implements exponentBase
{

    private final double exponentBase;
    private final long firstInterval;
    private AtomicInteger retryCount;

    public long getIntervalMillis()
    {
        if (retryCount.get() == 0)
        {
            return 0L;
        } else
        {
            return (long)((double)firstInterval * Math.pow(exponentBase, retryCount.get()));
        }
    }

    public void incRetries()
    {
        retryCount.incrementAndGet();
    }

    public (double d, long l, TimeUnit timeunit)
    {
        retryCount = new AtomicInteger(0);
        firstInterval = timeunit.toMillis(l);
        exponentBase = d;
    }
}
