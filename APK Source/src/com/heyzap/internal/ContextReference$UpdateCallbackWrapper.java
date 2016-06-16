// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.ExecutorService;

// Referenced classes of package com.heyzap.internal:
//            ContextReference

public static class callback
    implements Runnable
{

    public final Runnable callback;
    public final ExecutorService executorService;

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        obj = (callback)obj;
        if (!callback.equals(((callback) (obj)).callback))
        {
            return false;
        }
        return executorService.equals(((executorService) (obj)).executorService);
    }

    public int hashCode()
    {
        return executorService.hashCode() * 31 + callback.hashCode();
    }

    public void run()
    {
        executorService.submit(callback);
    }

    public (Runnable runnable, ExecutorService executorservice)
    {
        executorService = executorservice;
        callback = runnable;
    }
}
