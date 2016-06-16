// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            HeyzapAdapter

public static class <init>
    implements com.heyzap.sdk.ads.r, com.heyzap.sdk.ads.ltListener
{

    private final nit> adWrapper;

    public void onAudioFinished()
    {
    }

    public void onAudioStarted()
    {
    }

    public void onAvailable(String s)
    {
        adWrapper.etchListener.set(new com.heyzap.mediation.abstr.t());
    }

    public void onClick(String s)
    {
        adWrapper.lickListener.set(Boolean.valueOf(true));
    }

    public void onComplete(String s)
    {
        adWrapper.ncentiveListener.set(Boolean.valueOf(true));
    }

    public void onFailedToFetch(String s)
    {
        adWrapper.etchListener.set(new com.heyzap.mediation.abstr.t(com.heyzap.internal.ailureReason.NO_FILL, "No internet connection or no fill."));
    }

    public void onFailedToShow(String s)
    {
        adWrapper.isplayListener.set(new com.heyzap.mediation.abstr.ult("network failed to show"));
    }

    public void onHide(String s)
    {
        adWrapper.loseListener.set(Boolean.valueOf(true));
    }

    public void onImpressed()
    {
        adWrapper.mpressionListener.set(Boolean.valueOf(true));
    }

    public void onIncomplete(String s)
    {
        adWrapper.ncentiveListener.set(Boolean.valueOf(false));
    }

    public void onShow(String s)
    {
        adWrapper.isplayListener.set(new com.heyzap.mediation.abstr.ult());
    }

    private ( )
    {
        adWrapper = ;
    }

    adWrapper(adWrapper adwrapper, adWrapper adwrapper1)
    {
        this(adwrapper);
    }
}
