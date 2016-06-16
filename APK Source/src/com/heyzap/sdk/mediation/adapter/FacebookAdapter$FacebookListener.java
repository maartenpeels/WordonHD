// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.ImpressionListener;
import com.facebook.ads.InterstitialAdListener;
import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            FacebookAdapter

private class wrapper
    implements InterstitialAdListener, ImpressionListener
{

    final FacebookAdapter this$0;
     wrapper;

    public void onAdClicked(Ad ad)
    {
        wrapper.clickListener.set(Boolean.valueOf(true));
    }

    public void onAdLoaded(Ad ad)
    {
        wrapper.fetchListener.set(new com.heyzap.mediation.abstr.());
    }

    public void onError(Ad ad, AdError aderror)
    {
        aderror.getErrorCode();
        JVM INSTR lookupswitch 5: default 56
    //                   1000: 89
    //                   1001: 96
    //                   1002: 103
    //                   2000: 110
    //                   2001: 117;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        aderror.getErrorMessage();
        ad = com.heyzap.internal.ason.UNKNOWN;
_L8:
        wrapper.fetchListener.set(new com.heyzap.mediation.abstr.(ad, aderror.getErrorMessage()));
        return;
_L2:
        ad = com.heyzap.internal.ason.NETWORK_ERROR;
        continue; /* Loop/switch isn't completed */
_L3:
        ad = com.heyzap.internal.ason.NO_FILL;
        continue; /* Loop/switch isn't completed */
_L4:
        ad = com.heyzap.internal.ason.NO_FILL;
        continue; /* Loop/switch isn't completed */
_L5:
        ad = com.heyzap.internal.ason.REMOTE_ERROR;
        continue; /* Loop/switch isn't completed */
_L6:
        ad = com.heyzap.internal.ason.INTERNAL;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void onInterstitialDismissed(Ad ad)
    {
        wrapper.closeListener.set(Boolean.valueOf(true));
    }

    public void onInterstitialDisplayed(Ad ad)
    {
        wrapper.displayListener.set(new com.heyzap.mediation.abstr.t>());
    }

    public void onLoggingImpression(Ad ad)
    {
    }

    public ( )
    {
        this$0 = FacebookAdapter.this;
        super();
        wrapper = ;
    }
}
