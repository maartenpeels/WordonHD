// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import java.util.concurrent.ExecutorService;

// Referenced classes of package com.heyzap.mediation:
//            FetchRequestStore

private static class <init>
{

    private final ExecutorService executorService;
    private final Runnable runnable;

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
        obj = (<init>)obj;
        return runnable.equals(((runnable) (obj)).runnable);
    }

    public int hashCode()
    {
        return runnable.hashCode();
    }



    private (Runnable runnable1, ExecutorService executorservice)
    {
        runnable = runnable1;
        executorService = executorservice;
    }

    executorService(Runnable runnable1, ExecutorService executorservice, executorService executorservice1)
    {
        this(runnable1, executorservice);
    }
}
