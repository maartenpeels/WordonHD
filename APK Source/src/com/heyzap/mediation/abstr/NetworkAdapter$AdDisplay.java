// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.abstr;

import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.mediation.abstr:
//            NetworkAdapter

public static class incentiveListener
{

    public SettableFuture clickListener;
    public SettableFuture closeListener;
    public SettableFuture displayListener;
    public SettableFuture incentiveListener;

    public _cls9()
    {
        displayListener = SettableFuture.create();
        clickListener = SettableFuture.create();
        closeListener = SettableFuture.create();
        incentiveListener = SettableFuture.create();
    }
}
