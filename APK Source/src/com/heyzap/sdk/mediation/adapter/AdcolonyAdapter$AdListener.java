// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdListener;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdcolonyAdapter

private static class <init>
    implements AdColonyAdListener
{

    private final com.heyzap.mediation.abstr.t adDisplay;

    public void onAdColonyAdAttemptFinished(AdColonyAd adcolonyad)
    {
        adDisplay.oseListener.set(Boolean.valueOf(true));
    }

    public void onAdColonyAdStarted(AdColonyAd adcolonyad)
    {
        adDisplay.splayListener.set(new com.heyzap.mediation.abstr.t());
    }

    private A(com.heyzap.mediation.abstr.tener tener)
    {
        adDisplay = tener;
    }

    adDisplay(com.heyzap.mediation.abstr.tener tener, adDisplay addisplay)
    {
        this(tener);
    }
}
