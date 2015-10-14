// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost;

import com.chartboost.sdk.ChartboostDelegate;

// Referenced classes of package so.cuo.platform.chartboost:
//            ChartboostContext

public class InterstitialAdListener extends ChartboostDelegate
{

    private ChartboostContext context;

    public InterstitialAdListener(ChartboostContext chartboostcontext)
    {
        context = chartboostcontext;
    }

    public void didCacheInPlay(String s)
    {
        context.dispatchStatusEventAsync("didCacheInPlay", s);
        super.didCacheInPlay(s);
    }

    public void didCacheInterstitial(String s)
    {
        context.dispatchStatusEventAsync("onInterstitialReceive", s);
        super.didCacheInterstitial(s);
    }

    public void didCacheMoreApps(String s)
    {
        context.dispatchStatusEventAsync("onMoreAppReceive", s);
        super.didCacheMoreApps(s);
    }

    public void didCacheRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("didCacheRewardedVideo", s);
        super.didCacheRewardedVideo(s);
    }

    public void didClickInterstitial(String s)
    {
        context.dispatchStatusEventAsync("onInterstitialLeaveApplication", s);
        super.didClickInterstitial(s);
    }

    public void didClickMoreApps(String s)
    {
        context.dispatchStatusEventAsync("onMoreAppLeaveApplication", s);
        super.didClickMoreApps(s);
    }

    public void didClickRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("onVideoLeaveApplication", s);
        super.didClickRewardedVideo(s);
    }

    public void didCloseInterstitial(String s)
    {
        context.dispatchStatusEventAsync("didCloseInterstitial", s);
        super.didCloseInterstitial(s);
    }

    public void didCloseMoreApps(String s)
    {
        context.dispatchStatusEventAsync("didCloseMoreApps", s);
        super.didCloseMoreApps(s);
    }

    public void didCloseRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("didCloseRewardedVideo", s);
        super.didCloseRewardedVideo(s);
    }

    public void didCompleteRewardedVideo(String s, int i)
    {
        context.dispatchStatusEventAsync("didCompleteRewardedVideo", (new StringBuilder(String.valueOf(s))).append("_").append(i).toString());
        super.didCompleteRewardedVideo(s, i);
    }

    public void didDismissInterstitial(String s)
    {
        context.dispatchStatusEventAsync("onInterstitialDismiss", s);
        super.didDismissInterstitial(s);
    }

    public void didDismissMoreApps(String s)
    {
        context.dispatchStatusEventAsync("onMoreAppDismiss", s);
        super.didDismissMoreApps(s);
    }

    public void didDismissRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("didDismissRewardedVideo", s);
        super.didDismissRewardedVideo(s);
    }

    public void didDisplayInterstitial(String s)
    {
        context.dispatchStatusEventAsync("onInterstitialPresent", s);
        super.didDisplayInterstitial(s);
    }

    public void didDisplayMoreApps(String s)
    {
        context.dispatchStatusEventAsync("onMoreAppPresent", s);
        super.didDisplayMoreApps(s);
    }

    public void didDisplayRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("onVideoPresent", s);
        super.didDisplayRewardedVideo(s);
    }

    public void didFailToLoadInPlay(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        context.dispatchStatusEventAsync("didFailToLoadInPlay", (new StringBuilder(String.valueOf(s))).append("_").append(cbimpressionerror.toString()).toString());
        super.didFailToLoadInPlay(s, cbimpressionerror);
    }

    public void didFailToLoadInterstitial(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        context.dispatchStatusEventAsync("onInterstitialFailedReceive", (new StringBuilder(String.valueOf(s))).append("_").append(cbimpressionerror.toString()).toString());
        super.didFailToLoadInterstitial(s, cbimpressionerror);
    }

    public void didFailToLoadMoreApps(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        context.dispatchStatusEventAsync("onMoreAppFailedReceive", (new StringBuilder(String.valueOf(s))).append("_").append(cbimpressionerror.toString()).toString());
        super.didFailToLoadMoreApps(s, cbimpressionerror);
    }

    public void didFailToLoadRewardedVideo(String s, com.chartboost.sdk.Model.CBError.CBImpressionError cbimpressionerror)
    {
        context.dispatchStatusEventAsync("onVideoFailedReceive", (new StringBuilder(String.valueOf(s))).append("_").append(cbimpressionerror.toString()).toString());
        super.didFailToLoadRewardedVideo(s, cbimpressionerror);
    }

    public void didFailToRecordClick(String s, com.chartboost.sdk.Model.CBError.CBClickError cbclickerror)
    {
        context.dispatchStatusEventAsync("didFailToRecordClick", (new StringBuilder(String.valueOf(s))).append("_").append(cbclickerror.toString()).toString());
        super.didFailToRecordClick(s, cbclickerror);
    }

    public void didPauseClickForConfirmation()
    {
        context.dispatchStatusEventAsync("didPauseClickForConfirmation", "didPauseClickForConfirmation");
        super.didPauseClickForConfirmation();
    }

    public boolean shouldDisplayInterstitial(String s)
    {
        context.dispatchStatusEventAsync("shouldDisplayInterstitial", s);
        return true;
    }

    public boolean shouldDisplayMoreApps(String s)
    {
        context.dispatchStatusEventAsync("shouldDisplayMoreApps", s);
        return true;
    }

    public boolean shouldDisplayRewardedVideo(String s)
    {
        context.dispatchStatusEventAsync("shouldDisplayRewardedVideo", s);
        return true;
    }

    public boolean shouldRequestInterstitial(String s)
    {
        context.dispatchStatusEventAsync("shouldRequestInterstitial", s);
        return true;
    }

    public boolean shouldRequestMoreApps(String s)
    {
        context.dispatchStatusEventAsync("shouldRequestMoreApps", s);
        return true;
    }
}
