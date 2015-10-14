// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            VungleAdapter

private static class <init>
{

    public final com.heyzap.internal.isplayHolder adUnit;
    public final SettableFuture clickListener;
    public final SettableFuture closeListener;
    public final SettableFuture displayListener;
    public final SettableFuture incentiveListener;

    private (com.heyzap.internal.isplayHolder isplayholder)
    {
        displayListener = SettableFuture.create();
        closeListener = SettableFuture.create();
        clickListener = SettableFuture.create();
        incentiveListener = SettableFuture.create();
        adUnit = isplayholder;
    }

    adUnit(com.heyzap.internal.isplayHolder isplayholder, adUnit adunit)
    {
        this(isplayholder);
    }
}
