// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.facebook.ads.InterstitialAd;
import com.heyzap.internal.ContextReference;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            FacebookAdapter

class cebookAdWrapper
    implements Runnable
{

    final FacebookAdapter this$0;
    final cebookAdWrapper val$localWrapper;

    public void run()
    {
        InterstitialAd interstitialad = new InterstitialAd(FacebookAdapter.access$000(FacebookAdapter.this).getActivity(), FacebookAdapter.access$100(FacebookAdapter.this));
        val$localWrapper.interstitialAd = interstitialad;
        cebookListener cebooklistener = new cebookListener(FacebookAdapter.this, val$localWrapper);
        interstitialad.setAdListener(cebooklistener);
        interstitialad.setImpressionListener(cebooklistener);
        interstitialad.loadAd();
    }

    cebookAdWrapper()
    {
        this$0 = final_facebookadapter;
        val$localWrapper = cebookAdWrapper.this;
        super();
    }
}
