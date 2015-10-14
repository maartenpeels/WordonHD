// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyV4VCAd;
import com.jirbo.adcolony.AdColonyVideoAd;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdcolonyAdapter

private static class <init> extends com.heyzap.mediation.abstr.apper
{

    public final SettableFuture fetchFuture;
    public AdColonyV4VCAd incentivizedAd;
    public AdColonyVideoAd videoAd;

    public AdColonyAd getAd()
    {
        if (videoAd != null)
        {
            return videoAd;
        }
        if (incentivizedAd != null)
        {
            return incentivizedAd;
        } else
        {
            return null;
        }
    }

    private ()
    {
        fetchFuture = SettableFuture.create();
    }

    fetchFuture(fetchFuture fetchfuture)
    {
        this();
    }
}
