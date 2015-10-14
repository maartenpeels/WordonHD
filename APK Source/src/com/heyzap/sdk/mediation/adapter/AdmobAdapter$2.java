// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.google.android.gms.ads.InterstitialAd;
import com.heyzap.internal.ContextReference;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            AdmobAdapter

class Wrapper
    implements Runnable
{

    final AdmobAdapter this$0;
    final Wrapper val$localWrapper;

    public void run()
    {
        InterstitialAd interstitialad = new InterstitialAd(AdmobAdapter.access$000(AdmobAdapter.this).getActivity());
        val$localWrapper.interstitialAd = interstitialad;
        interstitialad.setAdUnitId(AdmobAdapter.access$100(AdmobAdapter.this));
        interstitialad.setAdListener(new mobListener(AdmobAdapter.this, val$localWrapper));
        com.google.android.gms.ads.er er = new com.google.android.gms.ads.er();
        er.addTestDevice("39A0D0AC94EE1E08823DA7384DA220C3");
        interstitialad.loadAd(er.build());
    }

    Wrapper()
    {
        this$0 = final_admobadapter;
        val$localWrapper = Wrapper.this;
        super();
    }
}
