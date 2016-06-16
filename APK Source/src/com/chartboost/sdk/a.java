// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


public interface a
{

    public abstract void didCacheInPlay(String s);

    public abstract void didCacheInterstitial(String s);

    public abstract void didCacheMoreApps(String s);

    public abstract void didCacheRewardedVideo(String s);

    public abstract void didClickInterstitial(String s);

    public abstract void didClickMoreApps(String s);

    public abstract void didClickRewardedVideo(String s);

    public abstract void didCloseInterstitial(String s);

    public abstract void didCloseMoreApps(String s);

    public abstract void didCloseRewardedVideo(String s);

    public abstract void didCompleteRewardedVideo(String s, int i);

    public abstract void didDismissInterstitial(String s);

    public abstract void didDismissMoreApps(String s);

    public abstract void didDismissRewardedVideo(String s);

    public abstract void didDisplayInterstitial(String s);

    public abstract void didDisplayMoreApps(String s);

    public abstract void didDisplayRewardedVideo(String s);

    public abstract void didFailToLoadInPlay(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror);

    public abstract void didFailToLoadInterstitial(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror);

    public abstract void didFailToLoadMoreApps(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror);

    public abstract void didFailToLoadRewardedVideo(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror);

    public abstract void didFailToRecordClick(String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror);

    public abstract void didPauseClickForConfirmation();

    public abstract boolean shouldDisplayInterstitial(String s);

    public abstract boolean shouldDisplayMoreApps(String s);

    public abstract boolean shouldDisplayRewardedVideo(String s);

    public abstract boolean shouldRequestInterstitial(String s);

    public abstract boolean shouldRequestMoreApps(String s);

    public abstract void willDisplayVideo(String s);
}
