// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.SettableFuture;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

protected static class 
{

    public AdRequest adRequest;
    public final SettableFuture clickListener = SettableFuture.create();
    public final SettableFuture closeListener = SettableFuture.create();
    public final SettableFuture displayListener = SettableFuture.create();
    public final SettableFuture fetchListener = SettableFuture.create();
    public final SettableFuture impressionListener = SettableFuture.create();
    public final AtomicBoolean inUse = new AtomicBoolean(false);
    public final SettableFuture incentiveListener = SettableFuture.create();

    public ()
    {
    }
}
