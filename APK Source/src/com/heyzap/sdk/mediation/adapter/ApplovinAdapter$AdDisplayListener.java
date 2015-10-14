// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.adapter;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.heyzap.internal.SettableFuture;
import java.util.Map;

// Referenced classes of package com.heyzap.sdk.mediation.adapter:
//            ApplovinAdapter

private static class <init>
    implements AppLovinAdClickListener, AppLovinAdVideoPlaybackListener, AppLovinAdDisplayListener, AppLovinAdRewardListener
{

    private final eListener adWrapper;

    public void adClicked(AppLovinAd applovinad)
    {
        adWrapper.tener.set(Boolean.valueOf(true));
    }

    public void adDisplayed(AppLovinAd applovinad)
    {
        adWrapper.istener.set(new com.heyzap.mediation.abstr.>());
    }

    public void adHidden(AppLovinAd applovinad)
    {
        adWrapper.tener.set(Boolean.valueOf(true));
    }

    public void userDeclinedToViewAd(AppLovinAd applovinad)
    {
        adWrapper.eListener.set(Boolean.valueOf(false));
    }

    public void userOverQuota(AppLovinAd applovinad, Map map)
    {
        adWrapper.eListener.set(Boolean.valueOf(false));
    }

    public void userRewardRejected(AppLovinAd applovinad, Map map)
    {
        adWrapper.eListener.set(Boolean.valueOf(false));
    }

    public void userRewardVerified(AppLovinAd applovinad, Map map)
    {
        adWrapper.eListener.set(Boolean.valueOf(true));
    }

    public void validationRequestFailed(AppLovinAd applovinad, int i)
    {
        adWrapper.eListener.set(Boolean.valueOf(false));
    }

    public void videoPlaybackBegan(AppLovinAd applovinad)
    {
    }

    public void videoPlaybackEnded(AppLovinAd applovinad, double d, boolean flag)
    {
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
