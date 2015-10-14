// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ApplovinAdapter

private static class incentivizedInterstitial extends com.heyzap.mediation.abstr.esult
{

    public final AppLovinAd cachedAd;
    public final AppLovinIncentivizedInterstitial incentivizedInterstitial;

    public (AppLovinAd applovinad, AppLovinIncentivizedInterstitial applovinincentivizedinterstitial)
    {
        cachedAd = applovinad;
        incentivizedInterstitial = applovinincentivizedinterstitial;
        success = true;
    }

    public success(com.heyzap.internal.n n, String s)
    {
        errorCode = n;
        errorMessage = s;
        success = false;
        cachedAd = null;
        incentivizedInterstitial = null;
    }
}
