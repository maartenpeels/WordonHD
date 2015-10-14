// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.google.android.gms.ads.InterstitialAd;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.adapter.FetchStateManager;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdmobAdapter

class lay
    implements Runnable
{

    final AdmobAdapter this$0;
    final com.heyzap.mediation.abstr.AdDisplay val$display;
    final Wrapper val$localWrapper;

    public void run()
    {
        if (val$localWrapper.interstitialAd == null || !val$localWrapper.interstitialAd.isLoaded())
        {
            val$display.displayListener = SettableFuture.create();
            val$display.displayListener.set(new com.heyzap.mediation.abstr.DisplayResult("Ad not ready"));
        } else
        {
            val$display.displayListener = val$localWrapper.displayListener;
            val$display.clickListener = val$localWrapper.clickListener;
            val$display.closeListener = val$localWrapper.closeListener;
            val$display.incentiveListener = val$localWrapper.incentiveListener;
            val$localWrapper.interstitialAd.show();
        }
        if (val$localWrapper.fetchListener.isDone())
        {
            AdmobAdapter.access$300(AdmobAdapter.this).set(AdmobAdapter.access$200(), new Wrapper());
            AdmobAdapter.access$600(AdmobAdapter.this);
        }
    }

    lay()
    {
        this$0 = final_admobadapter;
        val$localWrapper = wrapper;
        val$display = com.heyzap.mediation.abstr.AdDisplay.this;
        super();
    }
}
