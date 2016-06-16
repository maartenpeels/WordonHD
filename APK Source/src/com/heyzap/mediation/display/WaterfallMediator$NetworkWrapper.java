// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;

// Referenced classes of package com.heyzap.mediation.display:
//            WaterfallMediator

private static class <init>
{

    public final SettableFuture fetchResultFuture;
    public final NetworkAdapter networkAdapter;
    public final rejectionCause networkConfig;
    public boolean rejected;
    public String rejectionCause;

    private void setRejected(String s)
    {
        rejected = true;
        rejectionCause = s;
    }


    private (SettableFuture settablefuture, NetworkAdapter networkadapter,  )
    {
        rejected = false;
        fetchResultFuture = settablefuture;
        networkAdapter = networkadapter;
        networkConfig = ;
    }

    networkConfig(SettableFuture settablefuture, NetworkAdapter networkadapter, networkConfig networkconfig, networkConfig networkconfig1)
    {
        this(settablefuture, networkadapter, networkconfig);
    }
}
