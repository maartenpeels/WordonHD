// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.heyzap.internal.SettableFuture;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ApplovinAdapter

private static class incentivizedAd
    implements AppLovinAdLoadListener
{

    private final SettableFuture fetchFuture;
    private final AppLovinIncentivizedInterstitial incentivizedAd;

    private com.heyzap.internal.eason getFetchFailureReason(int i)
    {
        switch (i)
        {
        default:
            return com.heyzap.internal.eason.UNKNOWN;

        case -300: 
        case 204: 
            return com.heyzap.internal.eason.NO_FILL;

        case -500: 
        case -102: 
            return com.heyzap.internal.eason.REMOTE_ERROR;

        case -6: 
            return com.heyzap.internal.eason.CONFIGURATION_ERROR;

        case -400: 
            return com.heyzap.internal.eason.REMOTE_ERROR;

        case -1: 
            return com.heyzap.internal.eason.UNKNOWN;
        }
    }

    public void adReceived(AppLovinAd applovinad)
    {
        fetchFuture.set(new ult(applovinad, incentivizedAd));
    }

    public void failedToReceiveAd(int i)
    {
        fetchFuture.set(new ult(getFetchFailureReason(i), String.valueOf(i)));
    }

    public ult(SettableFuture settablefuture, AppLovinIncentivizedInterstitial applovinincentivizedinterstitial)
    {
        fetchFuture = settablefuture;
        incentivizedAd = applovinincentivizedinterstitial;
    }
}
