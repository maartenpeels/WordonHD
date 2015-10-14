// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.google.android.gms.ads.AdListener;
import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdmobAdapter

private class wrapper extends AdListener
{

    final AdmobAdapter this$0;
    t> wrapper;

    public void onAdClosed()
    {
        wrapper.eListener.set(Boolean.valueOf(true));
    }

    public void onAdFailedToLoad(int i)
    {
        i;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 60
    //                   1 67
    //                   2 74
    //                   3 81;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        com.heyzap.internal.lureReason lurereason = com.heyzap.internal.lureReason.UNKNOWN;
_L7:
        wrapper.hListener.set(new com.heyzap.mediation.abstr.<init>(lurereason, String.valueOf(i)));
        return;
_L2:
        lurereason = com.heyzap.internal.lureReason.REMOTE_ERROR;
        continue; /* Loop/switch isn't completed */
_L3:
        lurereason = com.heyzap.internal.lureReason.BAD_CREDENTIALS;
        continue; /* Loop/switch isn't completed */
_L4:
        lurereason = com.heyzap.internal.lureReason.NETWORK_ERROR;
        continue; /* Loop/switch isn't completed */
_L5:
        lurereason = com.heyzap.internal.lureReason.NO_FILL;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onAdLeftApplication()
    {
        wrapper.kListener.set(Boolean.valueOf(true));
    }

    public void onAdLoaded()
    {
        wrapper.hListener.set(new com.heyzap.mediation.abstr.<init>());
    }

    public void onAdOpened()
    {
        wrapper.layListener.set(new com.heyzap.mediation.abstr.t());
    }

    public A(A a)
    {
        this$0 = AdmobAdapter.this;
        super();
        wrapper = a;
    }
}
