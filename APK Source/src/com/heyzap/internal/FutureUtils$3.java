// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import java.util.concurrent.TimeoutException;

// Referenced classes of package com.heyzap.internal:
//            FutureUtils, SettableFuture

static final class val.future
    implements Runnable
{

    final SettableFuture val$future;

    public void run()
    {
        val$future.setException(new TimeoutException());
    }

    (SettableFuture settablefuture)
    {
        val$future = settablefuture;
        super();
    }
}
