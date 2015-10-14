// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            RetryManager

public static abstract class 
    implements Runnable
{

    private RetryManager retryManager;

    public void retry()
    {
        retryManager.retry();
    }

    public void setRetryManager(RetryManager retrymanager)
    {
        retryManager = retrymanager;
    }

    public ()
    {
    }
}
