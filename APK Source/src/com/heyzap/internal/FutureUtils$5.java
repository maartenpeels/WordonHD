// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            FutureUtils, SettableFuture

static final class val.sourceFuture
    implements Runnable
{

    final SettableFuture val$destFuture;
    final SettableFuture val$sourceFuture;

    public void run()
    {
        try
        {
            val$destFuture.set(val$sourceFuture.get());
            return;
        }
        catch (Exception exception)
        {
            val$destFuture.setException(exception);
        }
    }

    (SettableFuture settablefuture, SettableFuture settablefuture1)
    {
        val$destFuture = settablefuture;
        val$sourceFuture = settablefuture1;
        super();
    }
}
