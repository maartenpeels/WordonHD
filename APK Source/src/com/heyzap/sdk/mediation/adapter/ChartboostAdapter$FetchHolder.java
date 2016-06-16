// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ChartboostAdapter

private static class fetchListener
{

    public final SettableFuture fetchListener;

    public ()
    {
        fetchListener = SettableFuture.create();
    }

    public fetchListener(com.heyzap.mediation.abstr.older older)
    {
        SettableFuture settablefuture = SettableFuture.create();
        settablefuture.set(older);
        fetchListener = settablefuture;
    }
}
