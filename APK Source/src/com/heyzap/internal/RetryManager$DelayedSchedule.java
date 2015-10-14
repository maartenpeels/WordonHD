// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.heyzap.internal:
//            RetryManager

public static class initialDelay
    implements initialDelay
{

    public final ies _flddelegate;
    public final long initialDelay;
    private AtomicInteger retryCount;

    public long getIntervalMillis()
    {
        if (retryCount.get() > 0)
        {
            return _flddelegate.rvalMillis();
        } else
        {
            return initialDelay;
        }
    }

    public void incRetries()
    {
        retryCount.incrementAndGet();
        _flddelegate.ies();
    }

    public (int i, TimeUnit timeunit,  )
    {
        retryCount = new AtomicInteger(0);
        _flddelegate = ;
        initialDelay = timeunit.toMillis(i);
    }
}
